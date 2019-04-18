using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace MobileShop.Models
{
    public class CartItem
    {
        public CartItem() { }

        public CartItem(Products product, int quantity)
        {
            this.Product = product;
            this.Quantity = quantity;
        }

        public Products Product { get; set; }
        public int Quantity { get; set; }

        public void AddQuantity(int quantity)
        {
            this.Quantity += quantity;
        }

        public string Display()
        {
            string displayString = string.Format("{0} ({1} at {2} each = {3})",
                Product.Product_name,
                Quantity.ToString(),
                Product.Price.ToString("c"),
                (Quantity * Product.Price).ToString());
            return displayString;
        }
    }
}