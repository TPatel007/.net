<%@ Page Title="" Language="C#" MasterPageFile="~/Mobile.Master" AutoEventWireup="true" CodeBehind="CustomerFeedback.aspx.cs" Inherits="MobileShop.CustomerFeedback" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:GridView CssClass="table table-responsive" ID="GridView1" runat="server" AllowPaging="True" AutoGenerateColumns="False" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="3" DataKeyNames="Email" DataSourceID="SqlDataSource1" AllowSorting="True">
        <Columns>
       
           
           
            <asp:TemplateField HeaderText="FirstName" SortExpression="FirstName">
                <EditItemTemplate>
                    <asp:TextBox CssClass="form-control" ID="txtFirstName" runat="server" Text='<%# Bind("FirstName") %>'></asp:TextBox>
                    <asp:RequiredFieldValidator ID="reqFirstName" runat="server" ValidationGroup="Edit" ForeColor="Red" ControlToValidate="txtFirstName" ErrorMessage="FirstName is required"></asp:RequiredFieldValidator>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label4" runat="server" Text='<%# Bind("FirstName") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="LastName" SortExpression="LastName">
                <EditItemTemplate>
                    <asp:TextBox CssClass="form-control" ID="txtLastName" runat="server" Text='<%# Bind("LastName") %>'></asp:TextBox>
                     <asp:RequiredFieldValidator ID="reqLastName" runat="server" ValidationGroup="Edit" ForeColor="Red" ControlToValidate="txtLastName" ErrorMessage="LastName is required"></asp:RequiredFieldValidator>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label5" runat="server" Text='<%# Bind("LastName") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Email" SortExpression="Email">
                <EditItemTemplate>
                    <asp:Label ID="Label1" runat="server" Text='<%# Eval("Email") %>'></asp:Label>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label6" runat="server" Text='<%# Bind("Email") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
             <asp:TemplateField HeaderText="Address" SortExpression="Address">
                <EditItemTemplate>
                    <asp:TextBox CssClass="form-control" ID="txtAddress" runat="server" Text='<%# Bind("Address") %>'></asp:TextBox>
                     <asp:RequiredFieldValidator ID="reqValAddress"  ValidationGroup="Edit" ForeColor="Red" ControlToValidate="txtAddress" runat="server" ErrorMessage="Address is required"></asp:RequiredFieldValidator>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label3" runat="server" Text='<%# Bind("Address") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
             <asp:TemplateField HeaderText="City" SortExpression="City">
                <EditItemTemplate>
                    <asp:TextBox CssClass="form-control" ID="txtCity" runat="server" Text='<%# Bind("City") %>'></asp:TextBox>
                     <asp:RequiredFieldValidator ID="reqValCity" ValidationGroup="Edit" ForeColor="Red" ControlToValidate="txtCity" runat="server" ErrorMessage="City is required"></asp:RequiredFieldValidator>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label2" runat="server" Text='<%# Bind("City") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
                 <asp:TemplateField HeaderText="State" SortExpression="State">
                <EditItemTemplate>
                    <asp:TextBox CssClass="form-control" ID="txtState" runat="server" Text='<%# Bind("State") %>'></asp:TextBox>
                     <asp:RequiredFieldValidator ID="reqValState" ValidationGroup="Edit" ForeColor="Red" ControlToValidate="txtState" runat="server" ErrorMessage="State is required"></asp:RequiredFieldValidator>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label1" runat="server" Text='<%# Bind("State") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="PhoneNumber" SortExpression="PhoneNumber">
                <EditItemTemplate>
                    <asp:TextBox  CssClass="form-control" ID="txtPhone" runat="server" Text='<%# Bind("PhoneNumber") %>'></asp:TextBox>
                     <asp:RequiredFieldValidator ID="reqValPhone" ValidationGroup="Edit" ForeColor="Red" ControlToValidate="txtPhone" runat="server" ErrorMessage="Phone is required"></asp:RequiredFieldValidator>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label7" runat="server" Text='<%# Bind("PhoneNumber") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Feedback" SortExpression="Feedback">
                <EditItemTemplate>
                    <asp:TextBox CssClass="form-control" ID="txtFeedback" runat="server" Text='<%# Bind("Feedback") %>'></asp:TextBox>
                     <asp:RequiredFieldValidator ID="reqValFeedback" ValidationGroup="Edit" ForeColor="Red" ControlToValidate="txtFeedback" runat="server" ErrorMessage="Feedback is required"></asp:RequiredFieldValidator>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label8" runat="server" Text='<%# Bind("Feedback") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ValidationGroup="Edit"/>
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
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:MobileShopConnectionString %>" SelectCommand="SELECT [FirstName], [LastName], [Email], [Address], [City], [State], [PhoneNumber], [Feedback] FROM [Customers] ORDER BY [FirstName]" ConflictDetection="CompareAllValues" DeleteCommand="DELETE FROM [Customers] WHERE [Email] = @original_Email AND [FirstName] = @original_FirstName AND [LastName] = @original_LastName AND [Address] = @original_Address AND [City] = @original_City AND [State] = @original_State AND [PhoneNumber] = @original_PhoneNumber AND (([Feedback] = @original_Feedback) OR ([Feedback] IS NULL AND @original_Feedback IS NULL))" InsertCommand="INSERT INTO [Customers] ([FirstName], [LastName], [Email], [Address], [City], [State], [PhoneNumber], [Feedback]) VALUES (@FirstName, @LastName, @Email, @Address, @City, @State, @PhoneNumber, @Feedback)" OldValuesParameterFormatString="original_{0}" UpdateCommand="UPDATE [Customers] SET [FirstName] = @FirstName, [LastName] = @LastName, [Address] = @Address, [City] = @City, [State] = @State, [PhoneNumber] = @PhoneNumber, [Feedback] = @Feedback WHERE [Email] = @original_Email AND [FirstName] = @original_FirstName AND [LastName] = @original_LastName AND [Address] = @original_Address AND [City] = @original_City AND [State] = @original_State AND [PhoneNumber] = @original_PhoneNumber AND (([Feedback] = @original_Feedback) OR ([Feedback] IS NULL AND @original_Feedback IS NULL))">
        <DeleteParameters>
            <asp:Parameter Name="original_Email" Type="String" />
            <asp:Parameter Name="original_FirstName" Type="String" />
            <asp:Parameter Name="original_LastName" Type="String" />
            <asp:Parameter Name="original_Address" Type="String" />
            <asp:Parameter Name="original_City" Type="String" />
            <asp:Parameter Name="original_State" Type="String" />
            <asp:Parameter Name="original_PhoneNumber" Type="String" />
            <asp:Parameter Name="original_Feedback" Type="String" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="FirstName" Type="String" />
            <asp:Parameter Name="LastName" Type="String" />
            <asp:Parameter Name="Email" Type="String" />
            <asp:Parameter Name="Address" Type="String" />
            <asp:Parameter Name="City" Type="String" />
            <asp:Parameter Name="State" Type="String" />
            <asp:Parameter Name="PhoneNumber" Type="String" />
            <asp:Parameter Name="Feedback" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="FirstName" Type="String" />
            <asp:Parameter Name="LastName" Type="String" />
            <asp:Parameter Name="Address" Type="String" />
            <asp:Parameter Name="City" Type="String" />
            <asp:Parameter Name="State" Type="String" />
            <asp:Parameter Name="PhoneNumber" Type="String" />
            <asp:Parameter Name="Feedback" Type="String" />
            <asp:Parameter Name="original_Email" Type="String" />
            <asp:Parameter Name="original_FirstName" Type="String" />
            <asp:Parameter Name="original_LastName" Type="String" />
            <asp:Parameter Name="original_Address" Type="String" />
            <asp:Parameter Name="original_City" Type="String" />
            <asp:Parameter Name="original_State" Type="String" />
            <asp:Parameter Name="original_PhoneNumber" Type="String" />
            <asp:Parameter Name="original_Feedback" Type="String" />
        </UpdateParameters>
    </asp:SqlDataSource>
    <br />
    
    
          
     
</asp:Content>
