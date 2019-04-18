<%@ Page Title="" Language="C#" MasterPageFile="~/Mobile.Master" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="MobileShop.Home" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <asp:Repeater ID="Repeater1" runat="server" DataSourceID="SqlDataSource1">
        <ItemTemplate>
                <div class="col-sm-4">
                    <div class="thumbnail">
                        <img src='<%# Eval("Image") %>' 
                            alt='<%# Eval("Product_name") %>' style="max-width:200px;max-height:200px;"/>
                        <div class="caption">
                            <h3><%# Eval("Product_name") %></h3>
                            <p><b>Price: <%# Eval("Price", "{0:c}") %></b>
                        </div>
                    </div>
                </div>
            </ItemTemplate>
    </asp:Repeater>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:MobileShopConnectionString %>" SelectCommand="SELECT [Image], [Product_name], [Price] FROM [Products] WHERE ([Price] &lt; @Price)">
        <SelectParameters>
            <asp:Parameter DefaultValue="900" Name="Price" Type="Decimal" />
        </SelectParameters>
    </asp:SqlDataSource>

</asp:Content>
