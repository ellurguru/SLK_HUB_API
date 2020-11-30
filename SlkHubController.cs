using System;
using System.Collections.Generic;
using System.Data.Entity;
using System.Linq;
using System.Net;
using System.Net.Http;
using System.Text;
using System.Web.Http;
using System.Web.Http.Description;
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
                //return dbContext.Customers.ToList();
                return new HttpResponseMessage()
                {
                    Content = new StringContent(JArray.FromObject(dbContext.Customers.ToList()).ToString(), Encoding.UTF8, "application/json")
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
                return dbContext.Subcategories.Where(s=>s.Category_Id==Category_Id).ToList();
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
    }
}