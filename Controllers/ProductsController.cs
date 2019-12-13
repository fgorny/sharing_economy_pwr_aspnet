using ProductsApp.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Web.Http;

namespace ProductsApp.Controllers
{
    public class ProductsController : ApiController
    {
        Product[] products = new Product[]
        {
            new Product { Id = 1, Name = "Zupa pomidorowa", Category = "Groceries", Price = 1 },
            new Product { Id = 2, Name = "Herbata", Category = "Toys", Price = 3.75M },
            new Product { Id = 3, Name = "Jeansy rozmiar 38", Category = "Hardware", Price = 16.99M },
            new Product { Id = 4, Name = "Zabawka pluszowa dinozaur", Category = "Hardware", Price = 16.99M },
            new Product { Id = 5, Name = "Kurtka Adidas M", Category = "Hardware", Price = 16.99M },
            new Product { Id = 6, Name = "Obiad raz w tygodniu", Category = "Hardware", Price = 16.99M },
            new Product { Id = 7, Name = "Pomoc w nauce", Category = "Hardware", Price = 16.99M }
        };

        public IEnumerable<Product> GetAllProducts()
        {
            return products;
        }

        public IHttpActionResult GetProduct(int id)
        {
            var product = products.FirstOrDefault((p) => p.Id == id);
            if (product == null)
            {
                return NotFound();
            }
            return Ok(product);
        }
    }
}