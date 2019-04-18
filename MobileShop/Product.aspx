<%@ Page Title="" Language="C#" MasterPageFile="~/Mobile.Master" AutoEventWireup="true" CodeBehind="Product.aspx.cs" Inherits="MobileShop.Product" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <table class="row p-3" >
        
            <td>
                <asp:Label ID="Label1" runat="server" Text="Select Category :"></asp:Label>
            </td>
            <td>
                <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource1" DataTextField="Category_name" DataValueField="Category_id" AutoPostBack="True" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged">
                </asp:DropDownList>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:MobileShopConnectionString %>" SelectCommand="SELECT * FROM [Category] ORDER BY [Category_name]"></asp:SqlDataSource>
            </td>
       
    </table>
   
    <div>
    <asp:GridView CssClass="table table-responsive" ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="3" DataSourceID="SqlDataSource2" DataKeyNames="Product_id" css>
        <Columns>
            <%--<asp:BoundField DataField="Product_id" HeaderText="Product_id" SortExpression="Product_id" ReadOnly="True" />--%>
            <asp:BoundField DataField="Product_name" HeaderText="Product_name" SortExpression="Product_name" />
            <asp:BoundField DataField="Model" HeaderText="Model" SortExpression="Model" />
            <asp:BoundField DataField="Price" HeaderText="Price" SortExpression="Price" />
            <asp:BoundField DataField="Specification" HeaderText="Specification" SortExpression="Specification" />
            <asp:TemplateField>
                <ItemTemplate>
                    <asp:LinkButton ID="linkSelect" Text="View" runat="server" OnClick="linkSelect_Click" CommandArgument='<%# Bind("Product_id") %>'></asp:LinkButton>
                </ItemTemplate>
            </asp:TemplateField>
        </Columns>
        <FooterStyle BackColor="White" ForeColor="#000066" />
        <HeaderStyle BackColor="#006699" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="White" ForeColor="#000066" HorizontalAlign="Left" />
        <RowStyle ForeColor="#000066" />
        <SelectedRowStyle BackColor="#669999" Font-Bold="True" ForeColor="White" />
        <SortedAscendingCellStyle BackColor="#F1F1F1" />
        <SortedAscendingHeaderStyle BackColor="#007DBB" />
        <SortedDescendingCellStyle BackColor="#CAC9C9" />
        <SortedDescendingHeaderStyle BackColor="#00547E" />
    </asp:GridView>
    <br />
    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:MobileShopConnectionString %>" SelectCommand="SELECT Products.Product_id,Products.Product_name, Products.Model, Products.Price, Products.Specification FROM Category INNER JOIN Products ON Category.Category_id = Products.Category_id WHERE (Category.Category_id = @Category_id)">
        <SelectParameters>
            <asp:ControlParameter ControlID="DropDownList1" Name="Category_id" PropertyName="SelectedValue" />
        </SelectParameters>
    </asp:SqlDataSource>
        </div>
</asp:Content>
