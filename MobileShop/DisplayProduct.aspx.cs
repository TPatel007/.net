using Microsoft.AspNet.FriendlyUrls;
using MobileShop.Models;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;


namespace MobileShop
{
    public partial class DisplayProduct : System.Web.UI.Page
    {
        private Products displayProduct;
        protected void Page_Load(object sender, EventArgs e)
        {

            var segments = Request.GetFriendlyUrlSegments();
            int count = segments.Count;
            string product_id = segments[0];
            Console.WriteLine(product_id);
            displayProduct = this.displayMobile(product_id);

            lblName.Text = displayProduct.Product_name;
            lblModel.Text = displayProduct.Model;
            lblPrice.Text = displayProduct.Price.ToString("c");
            lblSpecification.Text = displayProduct.Specification;
            lblDescription.Text = displayProduct.Description;
            lblColour.Text = displayProduct.Colors;
            lblWarranty.Text = displayProduct.Warranty_info;
            imgProduct.ImageUrl = "" +displayProduct.Image;
        }

        public Products displayMobile(string product_id)
        {
            Product getid = new Product();
            DataView ProductTable = (DataView)SqlDataSource1.Select(DataSourceSelectArguments.Empty);
            ProductTable.RowFilter = string.Format("Product_id = '"+ product_id + "'");
            if (ProductTable.Count > 0)
            {

                DataRowView row = ProductTable[0];
                Products p = new Products();
                p.Product_id = row["Product_id"].ToString();
                p.Product_name = row["Product_name"].ToString();
                p.Model = row["Model"].ToString();
                p.Price = (decimal)row["Price"];
                p.Specification = row["Specification"].ToString();
                p.Description = row["Description"].ToString();
                p.Colors = row["Colors"].ToString();
                p.Warranty_info = row["Warranty_info"].ToString();
                p.Image = row["Image"].ToString();
                return p;
            }
            else
            {
                return null;
            }
        }

        protected void btnAddToCart_Click(object sender, EventArgs e)
        {
            if (IsValid)
            {
                //get cart from session state and selected item from cart
                CartItemList cart = CartItemList.GetCart();
                CartItem cartItem = cart[displayProduct.Product_id];
                //if item isn't in cart, add it; otherwise, increase its quantity
                if (cartItem == null)
                {
                    cart.AddItem(displayProduct,Convert.ToInt32(txtQuantity.Text));
                    //cart.AddItem(displayProduct);
                }
                else
                {
                    cartItem.AddQuantity(Convert.ToInt32(txtQuantity.Text));

                }

                Response.Redirect("~/MobileCart.aspx");
            }
        }
    }
}