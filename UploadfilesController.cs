using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Net;
using System.Net.Http;
using System.Threading.Tasks;
using System.Web;
using System.Web.Configuration;
using System.Web.Http;
using System.Web.Http.Description;
using SLK_HUB_WEBAPI.Models;

namespace SLK_HUB_WEBAPI.Controllers
{
    public class UploadfilesController : ApiController
    {
        SLKHUB_DBContext db = new SLKHUB_DBContext();
        // POST https://localhost:44321/api/Uploadfile with json request
        [Route("api/Uploadfile")]
        public async Task<HttpResponseMessage> Uploadfile()
        {
            try
            {
                // Check if the request contains multipart/form-data.
                if (!Request.Content.IsMimeMultipartContent())
                {
                    throw new HttpResponseException(HttpStatusCode.UnsupportedMediaType);
                }
                var fileuploadPath = WebConfigurationManager.AppSettings["DocsUrl"];

                var provider = new MultipartFormDataStreamProvider(fileuploadPath);
                var content = new StreamContent(HttpContext.Current.Request.GetBufferlessInputStream(true));
                foreach (var header in Request.Content.Headers)
                {
                    content.Headers.TryAddWithoutValidation(header.Key, header.Value);
                }
                await content.ReadAsMultipartAsync(provider);
                string timestamp = DateTime.Now.ToString("yyyyMMddHHmmssfff");
                string uploadingFileName = provider.FileData.Select(x => x.LocalFileName).FirstOrDefault();
                
                string originalFileName = String.Concat(fileuploadPath, "\\" + (provider.Contents[0].Headers.ContentDisposition.FileName).Trim(new Char[] { '"' }));
                var filename = provider.Contents[0].Headers.ContentDisposition.FileName;
                if (File.Exists(originalFileName))
                {
                    File.Delete(originalFileName);
                }
                File.Move(uploadingFileName, originalFileName);
                Stotefile sf = new Stotefile();
                sf.File = filename;
                db.Stotefiles.Add(sf);
                db.SaveChanges();
                var response = Request.CreateResponse(HttpStatusCode.OK);
                string DocsPath = fileuploadPath + "/" + "ClientDocument" + "/";
                string URL = DocsPath + uploadingFileName;
                response.Headers.Add("DocsUrl", URL);
                return response;
                //return "Updated Successfully";
                // return Ok(sf);
            }
            catch (Exception ex)
            {
                return null;
                //return new Response
                //{
                //    Status = "Error",
                //    Message = "Error"
                //};
            }
        }

    
        protected override void Dispose(bool disposing)
        {
            if (disposing)
            {
                db.Dispose();
            }
            base.Dispose(disposing);
        }
    }
}
