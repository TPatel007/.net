using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Microsoft.AspNet.FriendlyUrls;


namespace MobileShop
{
    public partial class Product : System.Web.UI.Page
    {
        int ProductID;
        private Products selectedProduct;
        protected void Page_Load(object sender, EventArgs e)
        {
          
 
        }

        public void linkSelect_Click(object sender, EventArgs e)
        {
            ProductID = Convert.ToInt32((sender as LinkButton).CommandArgument);
            Response.Redirect(FriendlyUrl.Href("~/DisplayProduct", ProductID));

        }

        public int get_product_id() {
            return ProductID;
        }

        
      

        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        
    }
}