<%@ Page Title="" Language="C#" MasterPageFile="~/Mobile.Master" AutoEventWireup="true" CodeBehind="MobileCart.aspx.cs" Inherits="MobileShop.MobileCart" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:Label ID="lblCart" runat="server" Text="Cart :"></asp:Label>
      <div class="row">
        <div class="col-md-6">
             <asp:ListBox ID="lstDisplay" runat="server" Width="482px"></asp:ListBox>
        </div>
          <div class="col-md-6">
              <div class="row">
                  <div class="col-md-4">
                        <asp:Button ID="btnRemove" runat="server" Text="Remove Item" CssClass="btn-primary p-3" OnClick="btnRemove_Click" />
                  </div>
                    <div class="col-md-4">
                        <asp:Button ID="btnEmpty" runat="server" Text="Empty Cart" CssClass="btn-primary p-3" OnClick="btnEmpty_Click1" Width="124px" />
                  </div>
              </div>
          </div>
   </div>
    <div class="row">
    
    <asp:Label ID="lblMessage" runat="server" EnableViewState="false"  CssClass="text-info col-sm-12" Text=""></asp:Label>
    <br />
            <div class="col-md-4">
    <asp:Button ID="btnAddMoreItem" runat="server" Text="Add More Item" CssClass="btn-primary p-3" PostBackUrl="~/Product.aspx" Width="149px" /></div>
          <div class="col-md-4">
    <asp:Button ID="btnCheckOut" runat="server" Text="Check Out" CssClass="btn-primary p-3" OnClick="btnCheckOut_Click1" PostBackUrl="~/CheckOut.aspx" Width="149px" /></div>
        </div>
</asp:Content>
