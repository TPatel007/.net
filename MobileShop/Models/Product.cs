using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

public class Products
{
    public string Product_id { get; set; }
    public string Product_name { get; set; }
    public string Model { get; set; }
    public string Image { get; set; }
    public decimal Price { get; set; }
    public string Specification { get; set; }
    public string Description { get; set; }
    public string Colors { get; set; }
    public string Warranty_info { get; set; }
    public string Category_id { get; set; }

   public string CartDisplay(Products product)
    {
        return product.Product_name + ": " + product.Colors + " ; " + product.Price;
    }
}