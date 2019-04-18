using MobileShop.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MobileShop
{
    public partial class MobileCart : System.Web.UI.Page
    {
        private CartItemList cart;
        protected void Page_Load(object sender, EventArgs e)
        {
            // retrieve cart object from session state on every post-back
            cart = CartItemList.GetCart();
            // on initial page load, add cart items to list control
            if (!IsPostBack) this.DisplayCart();
        }

        private void DisplayCart()
        {
            // remove all current items from list control
            lstDisplay.Items.Clear();
            // loop through cart and add each item's display value to the list
            for (int i = 0; i < cart.Count; i++)
            {
                lstDisplay.Items.Add(cart[i].Display());
            }
        }


        protected void btnCheckOut_Click1(object sender, EventArgs e)
        {

            lblMessage.Text = "Sorry, that function hasn't been "
            + "implemented yet.";
        }

        protected void btnRemove_Click(object sender, EventArgs e)
        {
            if (cart.Count > 0)
            {
                if (lstDisplay.SelectedIndex > -1)
                {
                    // remove selected item from cart and re-display cart
                    cart.RemoveAt(lstDisplay.SelectedIndex);
                    this.DisplayCart();
                }
                else
                { // if no item is selected, notify user
                    lblMessage.Text = "Please select the item to remove.";
                }
            }
        }

        protected void btnEmpty_Click1(object sender, EventArgs e)
        {
            // if cart has items, clear both cart and list control
            if (cart.Count > 0)
            {
                cart.Clear();
                lstDisplay.Items.Clear();
            }
        }
    }
}

