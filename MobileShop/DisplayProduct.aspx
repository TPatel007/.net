<%@ Page Title="" Language="C#" MasterPageFile="~/Mobile.Master" AutoEventWireup="true" CodeBehind="DisplayProduct.aspx.cs" Inherits="MobileShop.DisplayProduct" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="row">
        <div class="col-md-6">
            <asp:Image ID="imgProduct" Width="100%" runat="server"/>
        </div>
        <div class="col-md-6">
            <div class="row">
                <asp:Label ID="Name" runat="server" Text="Name : " ForeColor="#0099CC"></asp:Label>
                <asp:Label ID="lblName" runat="server"></asp:Label>
            </div>
            <div class="row">
                <asp:Label ID="Label3" runat="server" Text="Model : " ForeColor="#0099CC"></asp:Label>
                <asp:Label ID="lblModel" runat="server"></asp:Label>
            </div>
            <div class="row">
                <asp:Label ID="Label5" runat="server" Text="Specification: " ForeColor="#0099CC"></asp:Label>
                <asp:Label ID="lblSpecification" runat="server"></asp:Label>
            </div>
            <div class="row">
                <asp:Label ID="Label7" runat="server" Text="Price : " ForeColor="#0099CC"></asp:Label>
                <asp:Label ID="lblPrice" runat="server"></asp:Label>
            </div>
            <div class="row">
                <asp:Label ID="Label9" runat="server" Text="Description: " ForeColor="#0099CC"></asp:Label>
                <asp:Label ID="lblDescription" runat="server"></asp:Label>
            </div>
            <div class="row">
                <asp:Label ID="Label11" runat="server" Text="Colour :" ForeColor="#0099CC"></asp:Label>
                <asp:Label ID="lblColour" runat="server"></asp:Label>
            </div>
            <div class="row">
                <asp:Label ID="Label12" runat="server" Text="Warranty :" ForeColor="#0099CC"></asp:Label>
                <asp:Label ID="lblWarranty" runat="server"></asp:Label>
                </div>
                <div class="row">
                <asp:Label ID="Label13" runat="server" ForeColor="#0099CC" Text="Quantity :"></asp:Label>
                <asp:TextBox ID="txtQuantity" runat="server"></asp:TextBox><asp:RequiredFieldValidator ID="reqValQuantity" runat="server" ErrorMessage="please select quantity" ControlToValidate="txtQuantity" ForeColor="Red" ValidateRequestMode="Inherit"></asp:RequiredFieldValidator>
            </div>
        </div>
    </div>
    <div class="row">
        <div class="col-md-6">
        </div>
        <div class="col-md-6">
            <div class="col-md-4"><asp:Button ID="btnAddToCart" runat="server" Text="Add to cart" CssClass="btn-primary p-3" OnClick="btnAddToCart_Click" Width="113px" /></div> 
            <div class="col-md-4"> 
                <asp:Button ID="btnDisplayCart" runat="server" Text="Display Cart" CssClass="btn-primary p-3" PostBackUrl="~/MobileCart.aspx" /></div>
        </div>
        </div>
    
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:MobileShopConnectionString %>" SelectCommand="SELECT * FROM [Products]"></asp:SqlDataSource>
</asp:Content>
