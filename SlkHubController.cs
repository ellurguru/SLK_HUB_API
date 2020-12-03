using System;
using System.Collections.Generic;
using System.Data.Entity;
using System.Linq;
using System.Net;
using System.Net.Http;
using System.Text;
using System.Web.Http;
using System.Web.Http.Description;
using System.Web.Script.Serialization;
using Newtonsoft.Json;
using Newtonsoft.Json.Linq;
using SLK_HUB_WEBAPI.Models;
namespace AdminpageWebAPI.Controllers
{
    public class SlkHubController : ApiController
    {
        private SLKHUB_DBContext db = new SLKHUB_DBContext();
        [Route("api/GetCustomers")]
        [HttpGet]
        public HttpResponseMessage GetCustomers()
        {
            using (SLKHUB_DBContext dbContext = new SLKHUB_DBContext())
            {
                var Customers = dbContext.Customers
                                 .Select(c => new
                                 {
                                     year = c.Year_Of_Engagement,
                                     name = c.Cust_Name,
                                     image = c.Logo_Path,
                                     slug = c.Cust_Name,
                                     hover_text = c.Cust_Desc
                                 }).ToList();
                return new HttpResponseMessage()
                {
                    Content = new StringContent(JArray.FromObject(Customers).ToString(), Encoding.UTF8, "application/json")
                };

            }
        }
        [Route("api/GetCustomersById/{id}")]
        [HttpGet]
        public HttpResponseMessage GetCustomersById(int id)
        {
            using (SLKHUB_DBContext dbContext = new SLKHUB_DBContext())
            {
                //return dbContext.Customers.FirstOrDefault(e => e.Cust_Id == id);
                Customer customer = dbContext.Customers.Find(id);
                return new HttpResponseMessage()
                {
                    Content = new StringContent(JArray.FromObject(dbContext.Customers.Where(cd => cd.Cust_Id == id).ToList()).ToString(), Encoding.UTF8, "application/json")
                };
            }
        }
        [Route("api/PostCustomer")]
        [ResponseType(typeof(Customer))]
        public IHttpActionResult PostEmployee(Customer cust)
        {
            if (cust is null)
            {
                return BadRequest(ModelState);
            }
            else
            {
                db.Customers.Add(cust);
                db.SaveChanges();
                return Ok(cust);
            }
        }
        [Route("api/DeleteCustomer")]
        [ResponseType(typeof(Customer))]
        public IHttpActionResult DeleteCustomer(long id)
        {
            Customer cust = db.Customers.Find(id);
            if (cust == null)
            {
                return NotFound();
            }
            db.Customers.Remove(cust);
            db.SaveChanges();
            return Ok(cust);
        }
        protected override void Dispose(bool disposing)
        {
            if (disposing)
            {
                db.Dispose();
            }
            base.Dispose(disposing);
        }


        [Route("api/GetCustomersProjects")]
        [HttpGet]
        public IEnumerable<Customer_Projects> GetCustomersProjects()
        {
            using (SLKHUB_DBContext dbContext = new SLKHUB_DBContext())
            {
                return dbContext.Customer_Projects.ToList();
            }
        }
        [Route("api/GetCustomersJourney")]
        [HttpGet]
        public IEnumerable<Customer_Journey> GetCustomersJourney()
        {
            using (SLKHUB_DBContext dbContext = new SLKHUB_DBContext())
            {
                return dbContext.Customer_Journey.ToList();
            }
        }
        [Route("api/GetCustomersProjectTeam")]
        [HttpGet]
        public IEnumerable<Customer_Project_Team> GetCustomersProjectTeam()
        {
            using (SLKHUB_DBContext dbContext = new SLKHUB_DBContext())
            {
                return dbContext.Customer_Project_Team.ToList();
            }
        }
        [Route("api/GetEmployeeJourneyPath")]
        [HttpGet]
        public IEnumerable<Employee_Journey_Path> GetEmployeeJourneyPath()
        {
            using (SLKHUB_DBContext dbContext = new SLKHUB_DBContext())
            {
                return dbContext.Employee_Journey_Path.ToList();
            }
        }
        [Route("api/Impacts")]
        [HttpGet]
        public IEnumerable<Impact> Impacts()
        {
            using (SLKHUB_DBContext dbContext = new SLKHUB_DBContext())
            {
                return dbContext.Impacts.ToList();
            }
        }

        [Route("api/CustomerDocuments/{cust_id}")]
        [HttpGet]
        public IEnumerable<Customer_Documents> CustomerDocuments(int cust_id)
        {
            using (SLKHUB_DBContext dbContext = new SLKHUB_DBContext())
            {
                return dbContext.Customer_Documents.Where(cd => cd.Cust_Id == cust_id).ToList();
            }
        }

        [Route("api/GetCustomerDocumentsByProject/{Proj_Name}")]
        [HttpGet]
        public IEnumerable<Customer_Documents> GetCustomerDocumentsByProject(string Proj_Name)
        {
            using (SLKHUB_DBContext dbContext = new SLKHUB_DBContext())
            {
                return dbContext.Customer_Documents.Where(cd => cd.Cust_Proj_Name == Proj_Name).ToList();
            }
        }

        [Route("api/GetCustomerDocumentsByCustJourney/{Cust_Journey_Name}")]
        [HttpGet]
        public IEnumerable<Customer_Documents> GetCustomerDocumentsByCustJourney(string Cust_Journey_Name)
        {
            using (SLKHUB_DBContext dbContext = new SLKHUB_DBContext())
            {
                return dbContext.Customer_Documents.Where(cd => cd.Cust_Journey_Name == Cust_Journey_Name).ToList();
            }
        }

        [Route("api/GetEthosDocumentsLevel1/{Item_Level1}")]
        [HttpGet]
        public IEnumerable<Customer_Documents> GetEthosDocumentsLevel1(string Item_Level1)
        {
            using (SLKHUB_DBContext dbContext = new SLKHUB_DBContext())
            {
                return dbContext.Customer_Documents.Where(cd => cd.Ethos_Item_Level_1 == Item_Level1).ToList();
            }
        }

        [Route("api/GetEthosDocumentsLevel2/{Item_Level2}")]
        [HttpGet]
        public IEnumerable<Customer_Documents> GetEthosDocumentsLevel2(string Item_Level2)
        {
            using (SLKHUB_DBContext dbContext = new SLKHUB_DBContext())
            {
                return dbContext.Customer_Documents.Where(cd => cd.Ethos_Item_Level_2 == Item_Level2).ToList();
            }
        }

        [Route("api/GetEmployeeJourneyPath/{Employee_Id}")]
        [HttpGet]
        public IEnumerable<Customer_Documents> GetEmployeeJourneyPath(string Employee_Id)
        {
            using (SLKHUB_DBContext dbContext = new SLKHUB_DBContext())
            {
                return dbContext.Customer_Documents.Where(cd => cd.Employee_Id == Employee_Id).ToList();
            }
        }

        [Route("api/GetEvolutionDocuments")]
        [HttpGet]
        public IEnumerable<Evolution_Offices_Documents> GetEvolutionDocuments()
        {
            using (SLKHUB_DBContext dbContext = new SLKHUB_DBContext())
            {
                return dbContext.Evolution_Offices_Documents.ToList();
            }
        }

        [Route("api/GetEvolutionStrategicFocus")]
        [HttpGet]
        public IEnumerable<Evolution_Strategic_Focus> GetEvolutionStrategicFocus()
        {
            using (SLKHUB_DBContext dbContext = new SLKHUB_DBContext())
            {
                return dbContext.Evolution_Strategic_Focus.ToList();
            }
        }

        [Route("api/GetLearnings")]
        [HttpGet]
        public IEnumerable<Learning> GetLearnings()
        {
            using (SLKHUB_DBContext dbContext = new SLKHUB_DBContext())
            {
                return dbContext.Learnings.ToList();
            }
        }

        [Route("api/GetCategories")]
        [HttpGet]
        public IEnumerable<Category> GetCategories()
        {
            using (SLKHUB_DBContext dbContext = new SLKHUB_DBContext())
            {
                return dbContext.Categories.ToList();
            }
        }

        [Route("api/GetSubcategories/{Category_Id}")]
        [HttpGet]
        public IEnumerable<Subcategory> GetSubcategories(int Category_Id)
        {
            using (SLKHUB_DBContext dbContext = new SLKHUB_DBContext())
            {
                return dbContext.Subcategories.Where(s => s.Category_Id == Category_Id).ToList();
            }
        }

        [Route("api/GetStotefile")]
        [HttpGet]
        public IEnumerable<Stotefile> GetStotefile()
        {
            using (SLKHUB_DBContext dbContext = new SLKHUB_DBContext())
            {
                return dbContext.Stotefiles.ToList();
            }
        }

        [Route("api/GetCustomersById1/{id}")]
        [HttpGet]
        public HttpResponseMessage GetCustomersById1(int id)
        {
            using (SLKHUB_DBContext dbContext = new SLKHUB_DBContext())
            {
                //return dbContext.Customers.FirstOrDefault(e => e.Cust_Id == id);
                Customer customer = dbContext.Customers.Find(id);
                return new HttpResponseMessage()
                {
                    Content = new StringContent(JArray.FromObject(dbContext.Customers.Where(cd => cd.Cust_Id == id).ToList()).ToString(), Encoding.UTF8, "application/json")
                };
            }
        }

        [Route("api/GetCustomersData/{id}")]
        [HttpGet]
        public HttpResponseMessage GetCustomersData(int id)
        {
            using (SLKHUB_DBContext dbContext = new SLKHUB_DBContext())
            {
                CustomerModule objcust = new CustomerModule();
                Customer Customers = dbContext.Customers.Where(cd => cd.Cust_Id == id).FirstOrDefault();
                var documents = dbContext.Customer_Documents.Where(cd => cd.Cust_Id == id)
                                .Select(c => new docs
                                {
                                    video = c.Doc_Path,
                                    title = c.Doc_Name,
                                    tag = c.Doc_Tags,
                                });
                objcust.docs = documents.ToList();

                var value = dbContext.Customer_Journey.Where(cd => cd.Cust_Id == id)
                               .Select(v => new values
                               {
                                   year = v.Journey_Year.ToString(),
                                   value = v.Journey_Module,
                                   about = v.Journey_Desc,
                               });
                objcust.values = value.ToList();


                var slk_team = dbContext.Customer_Project_Team
                               .Select(c => new slk_team
                               {
                                   name = c.Name,
                                   designation = c.Designation,
                                   email = c.Email_Id,
                                   contact = c.Phone.ToString(),
                                   avatar = c.ProfilePic,
                               });
                objcust.slk_team = slk_team.ToList();

                var client_team = dbContext.Customer_Project_Team
                               .Select(c => new client_team
                               {
                                   name = c.Name,
                                   designation = c.Designation,
                                   email = c.Email_Id,
                                   contact = c.Phone,
                                   avatar = c.ProfilePic,
                               });
                objcust.client_team = client_team.ToList();

                List<external_links> Objlinks = new List<external_links>();
                external_links Objlink = new external_links();
                Objlink.text = Customers.Website_Link;
                Objlink.url = Customers.Website_Link;
                Objlinks.Add(Objlink);

                Objlink = new external_links();
                Objlink.text = "Leadership Team";
                Objlink.url = Customers.Leadership_Team_Link;
                Objlinks.Add(Objlink);

                Objlink = new external_links();
                Objlink.text = "Products & Services";
                Objlink.url = Customers.Products_Link;
                Objlinks.Add(Objlink);

                Objlink = new external_links();
                Objlink.text = "Financials";
                Objlink.url = Customers.Financials_Link;
                Objlinks.Add(Objlink);

                objcust.external_links = Objlinks;

                //detail objdetail = new detail();
                //objdetail.title = "Case Study: Inflation Model";
                //objdetail.type = "Type: New Solution/Application Key Words:";
                //objdetail.summary = "";
                //string[] str1;
                //str1 = new string[] { "Procurement", "Forecast", "Data Analysis", "Reports", "Under Estimation" };
                //objdetail.keywords = str1;

                objcust.customer = "../" + Customers.Logo_Path;
                //objcust.solution = "Inflation Model";
                //objcust.year = "2001";
                //objcust.slk_champion = "Nagesh KP";
                objcust.slug = Customers.Cust_Name;
                objcust.title = Customers.Cust_Name;
                //objcust.detail = objdetail;
                objcust.timeline = new string[] { "Customer since - 1998", "Industry - Automation-Solutions", "Projects 1 - Automation Engineering", "Projects 2 Industrial Wireless Technology", "Award - Operational Excellence" };
                var json = new JavaScriptSerializer().Serialize(objcust);
                return new HttpResponseMessage()
                {
                    Content = new StringContent(json, Encoding.UTF8, "application/json")
                };
            }
        }

        [Route("api/GetEmployeeJourney")]
        [HttpGet]
        public HttpResponseMessage GetEmployeeJourney()
        {
            using (SLKHUB_DBContext dbContext = new SLKHUB_DBContext())
            {
                List<EmployeeJourney> objourney = new List<EmployeeJourney>();
                var journey = (from ej in dbContext.Employee_Journey_Path
                               join cd in dbContext.Customer_Documents on ej.Employee_Id equals cd.Employee_Id
                               select new EmployeeJourney
                               {
                                   empid = ej.Employee_Id,
                                   name = ej.Employee_Name,
                                   image = ej.Image,
                                   video_link = cd.Doc_Path,
                                   video_description = cd.Doc_Name
                               }).Distinct().ToList();

                foreach (var p in journey)
                {
                    EmployeeJourney obj = new EmployeeJourney();
                    obj.empid = p.empid;
                    obj.name = p.name;
                    obj.image = p.image;
                    obj.video_link = p.video_link;
                    obj.video_description = p.video_description;
                    obj.records = dbContext.Employee_Journey_Path.Where(j => j.Employee_Id == p.empid)
                    .Select(d => new records
                    {
                        highlight = d.Highlight,
                        star = d.Star,
                        title = d.Title,
                        year = d.JourneyYear
                    }).ToList();

                    objourney.Add(obj);

                }

                var json = new JavaScriptSerializer().Serialize(objourney);
                return new HttpResponseMessage()
                {
                    Content = new StringContent(json, Encoding.UTF8, "application/json")
                };
            }
        }

        [Route("api/GetImpactData")]
        [HttpGet]
        public HttpResponseMessage GetImpactData(int id)
        {

        }

    }
}
