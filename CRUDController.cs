using System;
using System.Collections.Generic;
using System.Data.Entity;
using System.Data.Entity.Infrastructure;
using System.Linq;
using System.Net;
using System.Net.Http;
using System.Web.Http;
using System.Web.Http.Description;
using SLK_HUB_WEBAPI.Models;

namespace SLK_HUB_WEBAPI.Controllers
{
    public class CRUDController : ApiController
    {
        private SLKHUB_DBContext db = new SLKHUB_DBContext();
        // GET https://localhost:44321/api/GetEmployees 
        [ResponseType(typeof(IEnumerable<Employee>))]
        [Route("api/GetEmployees")]
        public IQueryable<Employee> GetEmployees()
        {
            return db.Employees;
        }
        // GET https://localhost:44321/api/GetEmployee/1
        [ResponseType(typeof(Employee))]
        [Route("api/GetEmployee/{id}")]
        public IHttpActionResult GetEmployee(long id)
        {
            Employee employee = db.Employees.Find(id);
            if (employee == null)
            {
                return NotFound();
            }
            return Ok(employee);
        }
        // PUT https://localhost:44321/api/PutEmployee with json request
        [Route("api/PutEmployee")]
        [ResponseType(typeof(Employee))]
        public IHttpActionResult PutEmployee(Employee employee)
        {
            if (employee is null)
            {
                return BadRequest(ModelState);
            }
            //db.Entry(employee).State = EntityState.Modified;
            try
            {
                db.Entry(employee).State = EntityState.Modified;
                db.SaveChanges();
                return Ok(employee);
            }
            catch (DbUpdateConcurrencyException)
            {
                if (!EmployeeExists(employee.ID))
                {
                    return NotFound();
                }
                else
                {
                    throw;
                }
            }
        }
        // POST https://localhost:44321/api/PostEmployee with json request
        [Route("api/PostEmployee")]
        [ResponseType(typeof(Employee))]
        public IHttpActionResult PostEmployee(Employee employee)
        {
            if (employee is null)
            {
                return BadRequest(ModelState);
            }
            else {
                db.Employees.Add(employee);
                db.SaveChanges();
                return Ok(employee);
            }
           
        }
        // DELETE https://localhost:44321/api/DeleteEmployee?id=13
        [Route("api/DeleteEmployee")]
        [ResponseType(typeof(Employee))]
        public IHttpActionResult DeleteEmployee(long id)
        {
            Employee employee = db.Employees.Find(id);
            if (employee == null)
            {
                return NotFound();
            }
            db.Employees.Remove(employee);
            db.SaveChanges();
            return Ok(employee);
        }
        protected override void Dispose(bool disposing)
        {
            if (disposing)
            {
                db.Dispose();
            }
            base.Dispose(disposing);
        }
        [Route("api/EmployeeExists")]
        private bool EmployeeExists(long id)
        {
            return db.Employees.Count(e => e.ID == id) > 0;
        }
    }
}
