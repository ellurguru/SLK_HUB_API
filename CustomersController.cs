using System;
using System.Collections.Generic;
using System.Data.Entity;
using System.Linq;
using System.Net;
using System.Net.Http;
using System.Web.Http;
using System.Web.Http.Description;
using SLK_HUB_WEBAPI.Models;


namespace SLK_HUB_WEBAPI.Controllers
{
    public class CustomersController : ApiController
    {
        
        [Route("GetCustomers")]
        [HttpGet]
        public IEnumerable<Customer> GetCustomers()
        {
            using (SLKHUB_DBContext dbContext = new SLKHUB_DBContext())
            {
                return dbContext.Customers.ToList();
            }
        }
        
        [Route("GetCustomersById/{id}")]
        [ResponseType(typeof(Customer))]
        public IHttpActionResult GetCustomersById(int id)
        {
            using (SLKHUB_DBContext dbContext = new SLKHUB_DBContext())
            {
                //return dbContext.Customers.FirstOrDefault(e => e.Cust_Id == id);
                Customer customer = dbContext.Customers.Find(id);
                if (customer == null)
                {
                    return NotFound();
                }

                return Ok(customer);
            }
        }

        [Route("GetEmployee")]
        [HttpGet]
        public IEnumerable<Employee> GetEmployee()
        {
            using (SLKHUB_DBContext dbContext = new SLKHUB_DBContext())
            {
                return dbContext.Employees.ToList();
            }
        }

        [Route("GetEmployeeById/{id}")]
        [ResponseType(typeof(Employee))]
        public IHttpActionResult GetEmployeeById(int id)
        {
            using (SLKHUB_DBContext dbContext = new SLKHUB_DBContext())
            {
               // return dbContext.Employees.Find(id);

                Employee employee = dbContext.Employees.Find(id);
                if (employee == null)
                {
                    return NotFound();
                }

                return Ok(employee);
            }
        }
    }
}
