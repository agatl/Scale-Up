<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Tickets.aspx.cs" Inherits="OMIS675_Lab0.Admin" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <br />
    <br /><asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="ID" DataSourceID="gridViewDataSource" ForeColor="#333333" GridLines="None">
    <AlternatingRowStyle BackColor="White" />
    <Columns>
        <asp:CommandField ShowSelectButton="True" />
        <asp:BoundField DataField="ID" HeaderText="ID" InsertVisible="False" ReadOnly="True" SortExpression="ID" />
        <asp:BoundField DataField="CreateDate" HeaderText="CreateDate" SortExpression="CreateDate" />
        <asp:BoundField DataField="fName" HeaderText="fName" SortExpression="fName" />
        <asp:BoundField DataField="lName" HeaderText="lName" SortExpression="lName" />
        <asp:BoundField DataField="Phone" HeaderText="Phone" SortExpression="Phone" />
        <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
        <asp:BoundField DataField="sysName" HeaderText="sysName" SortExpression="sysName" />
        <asp:BoundField DataField="IP" HeaderText="IP" SortExpression="IP" />
        <asp:BoundField DataField="Status" HeaderText="Status" SortExpression="Status" />
        <asp:BoundField DataField="ResponseTime" HeaderText="ResponseTime" SortExpression="ResponseTime" />
        <asp:BoundField DataField="ResolutionTime" HeaderText="ResolutionTime" SortExpression="ResolutionTime" />
    </Columns>
    <EditRowStyle BackColor="#7C6F57" />
    <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
    <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
    <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
    <RowStyle BackColor="#E3EAEB" />
    <SelectedRowStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333" />
    <SortedAscendingCellStyle BackColor="#F8FAFA" />
    <SortedAscendingHeaderStyle BackColor="#246B61" />
    <SortedDescendingCellStyle BackColor="#D4DFE1" />
    <SortedDescendingHeaderStyle BackColor="#15524A" />
</asp:GridView>
    <asp:FormView ID="FormView1" runat="server" CellPadding="4" DataKeyNames="ID" DataSourceID="formViewDataSource" ForeColor="#333333" >
        <EditItemTemplate>
            ID:
            <asp:Label ID="IDLabel1" runat="server" Text='<%# Eval("ID") %>' />
            <br />
            CreateDate:
            <asp:TextBox ID="CreateDateTextBox" runat="server" Text='<%# Bind("CreateDate") %>' />
            <br />
            fName:
            <asp:TextBox ID="fNameTextBox" runat="server" Text='<%# Bind("fName") %>' />
            <br />
            lName:
            <asp:TextBox ID="lNameTextBox" runat="server" Text='<%# Bind("lName") %>' />
            <br />
            Phone:
            <asp:TextBox ID="PhoneTextBox" runat="server" Text='<%# Bind("Phone") %>' />
            <br />
            Email:
            <asp:TextBox ID="EmailTextBox" runat="server" Text='<%# Bind("Email") %>' />
            <br />
            sysName:
            <asp:TextBox ID="sysNameTextBox" runat="server" Text='<%# Bind("sysName") %>' />
            <br />
            IP:
            <asp:TextBox ID="IPTextBox" runat="server" Text='<%# Bind("IP") %>' />
            <br />
            OS:
            <asp:TextBox ID="OSTextBox" runat="server" Text='<%# Bind("OS") %>' />
            <br />
            FF:
            <asp:TextBox ID="FFTextBox" runat="server" Text='<%# Bind("FF") %>' />
            <br />
            Description:
            <asp:TextBox ID="DescriptionTextBox" runat="server" Text='<%# Bind("Description") %>' />
            <br />
            Status:
            <asp:TextBox ID="StatusTextBox" runat="server" Text='<%# Bind("Status") %>' />
            <br />
            ResponseTime:
            <asp:TextBox ID="ResponseTimeTextBox" runat="server" Text='<%# Bind("ResponseTime") %>' />
            <br />
            ResolutionTime:
            <asp:TextBox ID="ResolutionTimeTextBox" runat="server" Text='<%# Bind("ResolutionTime") %>' />
            <br />
            <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
            &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
        </EditItemTemplate>
        <EditRowStyle BackColor="#7C6F57" />
        <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
        <InsertItemTemplate>
            CreateDate:
            <asp:TextBox ID="CreateDateTextBox" runat="server" Text='<%# Bind("CreateDate") %>' />
            <br />
            fName:
            <asp:TextBox ID="fNameTextBox" runat="server" Text='<%# Bind("fName") %>' />
            <br />
            lName:
            <asp:TextBox ID="lNameTextBox" runat="server" Text='<%# Bind("lName") %>' />
            <br />
            Phone:
            <asp:TextBox ID="PhoneTextBox" runat="server" Text='<%# Bind("Phone") %>' />
            <br />
            Email:
            <asp:TextBox ID="EmailTextBox" runat="server" Text='<%# Bind("Email") %>' />
            <br />
            sysName:
            <asp:TextBox ID="sysNameTextBox" runat="server" Text='<%# Bind("sysName") %>' />
            <br />
            IP:
            <asp:TextBox ID="IPTextBox" runat="server" Text='<%# Bind("IP") %>' />
            <br />
            OS:
            <asp:TextBox ID="OSTextBox" runat="server" Text='<%# Bind("OS") %>' />
            <br />
            FF:
            <asp:TextBox ID="FFTextBox" runat="server" Text='<%# Bind("FF") %>' />
            <br />
            Description:
            <asp:TextBox ID="DescriptionTextBox" runat="server" Text='<%# Bind("Description") %>' />
            <br />
            Status:
            <asp:TextBox ID="StatusTextBox" runat="server" Text='<%# Bind("Status") %>' />
            <br />
            ResponseTime:
            <asp:TextBox ID="ResponseTimeTextBox" runat="server" Text='<%# Bind("ResponseTime") %>' />
            <br />
            ResolutionTime:
            <asp:TextBox ID="ResolutionTimeTextBox" runat="server" Text='<%# Bind("ResolutionTime") %>' />
            <br />
            <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
            &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
        </InsertItemTemplate>
        <ItemTemplate>
            ID:
            <asp:Label ID="IDLabel" runat="server" Text='<%# Eval("ID") %>' />
            <br />
            CreateDate:
            <asp:Label ID="CreateDateLabel" runat="server" Text='<%# Bind("CreateDate") %>' />
            <br />
            fName:
            <asp:Label ID="fNameLabel" runat="server" Text='<%# Bind("fName") %>' />
            <br />
            lName:
            <asp:Label ID="lNameLabel" runat="server" Text='<%# Bind("lName") %>' />
            <br />
            Phone:
            <asp:Label ID="PhoneLabel" runat="server" Text='<%# Bind("Phone") %>' />
            <br />
            Email:
            <asp:Label ID="EmailLabel" runat="server" Text='<%# Bind("Email") %>' />
            <br />
            sysName:
            <asp:Label ID="sysNameLabel" runat="server" Text='<%# Bind("sysName") %>' />
            <br />
            IP:
            <asp:Label ID="IPLabel" runat="server" Text='<%# Bind("IP") %>' />
            <br />
            OS:
            <asp:Label ID="OSLabel" runat="server" Text='<%# Bind("OS") %>' />
            <br />
            FF:
            <asp:Label ID="FFLabel" runat="server" Text='<%# Bind("FF") %>' />
            <br />
            Description:
            <asp:Label ID="DescriptionLabel" runat="server" Text='<%# Bind("Description") %>' />
            <br />
            Status:
            <asp:Label ID="StatusLabel" runat="server" Text='<%# Bind("Status") %>' />
            <br />
            ResponseTime:
            <asp:Label ID="ResponseTimeLabel" runat="server" Text='<%# Bind("ResponseTime") %>' />
            <br />
            ResolutionTime:
            <asp:Label ID="ResolutionTimeLabel" runat="server" Text='<%# Bind("ResolutionTime") %>' />
            <br />
            <asp:LinkButton ID="EditButton" runat="server" CausesValidation="False" CommandName="Edit" Text="Edit" />
            &nbsp;<asp:LinkButton ID="DeleteButton" runat="server" CausesValidation="False" CommandName="Delete" Text="Delete" />
            &nbsp;<asp:LinkButton ID="NewButton" runat="server" CausesValidation="False" CommandName="New" Text="New" />
        </ItemTemplate>
        <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
        <RowStyle BackColor="#E3EAEB" />
    </asp:FormView>
    <asp:SqlDataSource ID="formViewDataSource" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:ScaleupConnectionString %>" DeleteCommand="DELETE FROM [Incident] WHERE [ID] = @original_ID AND [CreateDate] = @original_CreateDate AND [fName] = @original_fName AND [lName] = @original_lName AND [Phone] = @original_Phone AND [Email] = @original_Email AND (([sysName] = @original_sysName) OR ([sysName] IS NULL AND @original_sysName IS NULL)) AND (([IP] = @original_IP) OR ([IP] IS NULL AND @original_IP IS NULL)) AND [OS] = @original_OS AND [FF] = @original_FF AND [Description] = @original_Description AND [Status] = @original_Status AND [ResponseTime] = @original_ResponseTime AND (([ResolutionTime] = @original_ResolutionTime) OR ([ResolutionTime] IS NULL AND @original_ResolutionTime IS NULL))" InsertCommand="INSERT INTO [Incident] ([CreateDate], [fName], [lName], [Phone], [Email], [sysName], [IP], [OS], [FF], [Description], [Status], [ResponseTime], [ResolutionTime]) VALUES (@CreateDate, @fName, @lName, @Phone, @Email, @sysName, @IP, @OS, @FF, @Description, @Status, @ResponseTime, @ResolutionTime)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [Incident] WHERE ([ID] = @ID)" UpdateCommand="UPDATE [Incident] SET [CreateDate] = @CreateDate, [fName] = @fName, [lName] = @lName, [Phone] = @Phone, [Email] = @Email, [sysName] = @sysName, [IP] = @IP, [OS] = @OS, [FF] = @FF, [Description] = @Description, [Status] = @Status, [ResponseTime] = @ResponseTime, [ResolutionTime] = @ResolutionTime WHERE [ID] = @original_ID AND [CreateDate] = @original_CreateDate AND [fName] = @original_fName AND [lName] = @original_lName AND [Phone] = @original_Phone AND [Email] = @original_Email AND (([sysName] = @original_sysName) OR ([sysName] IS NULL AND @original_sysName IS NULL)) AND (([IP] = @original_IP) OR ([IP] IS NULL AND @original_IP IS NULL)) AND [OS] = @original_OS AND [FF] = @original_FF AND [Description] = @original_Description AND [Status] = @original_Status AND [ResponseTime] = @original_ResponseTime AND (([ResolutionTime] = @original_ResolutionTime) OR ([ResolutionTime] IS NULL AND @original_ResolutionTime IS NULL))">
        <DeleteParameters>
            <asp:Parameter Name="original_ID" Type="Int32" />
            <asp:Parameter Name="original_CreateDate" Type="DateTime" />
            <asp:Parameter Name="original_fName" Type="String" />
            <asp:Parameter Name="original_lName" Type="String" />
            <asp:Parameter Name="original_Phone" Type="String" />
            <asp:Parameter Name="original_Email" Type="String" />
            <asp:Parameter Name="original_sysName" Type="String" />
            <asp:Parameter Name="original_IP" Type="String" />
            <asp:Parameter Name="original_OS" Type="String" />
            <asp:Parameter Name="original_FF" Type="String" />
            <asp:Parameter Name="original_Description" Type="String" />
            <asp:Parameter Name="original_Status" Type="String" />
            <asp:Parameter Name="original_ResponseTime" Type="String" />
            <asp:Parameter Name="original_ResolutionTime" Type="DateTime" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="CreateDate" Type="DateTime" />
            <asp:Parameter Name="fName" Type="String" />
            <asp:Parameter Name="lName" Type="String" />
            <asp:Parameter Name="Phone" Type="String" />
            <asp:Parameter Name="Email" Type="String" />
            <asp:Parameter Name="sysName" Type="String" />
            <asp:Parameter Name="IP" Type="String" />
            <asp:Parameter Name="OS" Type="String" />
            <asp:Parameter Name="FF" Type="String" />
            <asp:Parameter Name="Description" Type="String" />
            <asp:Parameter Name="Status" Type="String" />
            <asp:Parameter Name="ResponseTime" Type="String" />
            <asp:Parameter Name="ResolutionTime" Type="DateTime" />
        </InsertParameters>
        <SelectParameters>
            <asp:ControlParameter ControlID="GridView1" Name="ID" PropertyName="SelectedValue" Type="Int32" />
        </SelectParameters>
        <UpdateParameters>
            <asp:Parameter Name="CreateDate" Type="DateTime" />
            <asp:Parameter Name="fName" Type="String" />
            <asp:Parameter Name="lName" Type="String" />
            <asp:Parameter Name="Phone" Type="String" />
            <asp:Parameter Name="Email" Type="String" />
            <asp:Parameter Name="sysName" Type="String" />
            <asp:Parameter Name="IP" Type="String" />
            <asp:Parameter Name="OS" Type="String" />
            <asp:Parameter Name="FF" Type="String" />
            <asp:Parameter Name="Description" Type="String" />
            <asp:Parameter Name="Status" Type="String" />
            <asp:Parameter Name="ResponseTime" Type="String" />
            <asp:Parameter Name="ResolutionTime" Type="DateTime" />
            <asp:Parameter Name="original_ID" Type="Int32" />
            <asp:Parameter Name="original_CreateDate" Type="DateTime" />
            <asp:Parameter Name="original_fName" Type="String" />
            <asp:Parameter Name="original_lName" Type="String" />
            <asp:Parameter Name="original_Phone" Type="String" />
            <asp:Parameter Name="original_Email" Type="String" />
            <asp:Parameter Name="original_sysName" Type="String" />
            <asp:Parameter Name="original_IP" Type="String" />
            <asp:Parameter Name="original_OS" Type="String" />
            <asp:Parameter Name="original_FF" Type="String" />
            <asp:Parameter Name="original_Description" Type="String" />
            <asp:Parameter Name="original_Status" Type="String" />
            <asp:Parameter Name="original_ResponseTime" Type="String" />
            <asp:Parameter Name="original_ResolutionTime" Type="DateTime" />
        </UpdateParameters>
    </asp:SqlDataSource>
<asp:SqlDataSource ID="gridViewDataSource" runat="server" ConnectionString="<%$ ConnectionStrings:ScaleupConnectionString %>" SelectCommand="SELECT [ID], [CreateDate], [fName], [lName], [Phone], [Email], [sysName], [IP], [Status], [ResponseTime], [ResolutionTime] FROM [Incident] WHERE ([Status] = @Status)">
    <SelectParameters>
        <asp:Parameter DefaultValue="OPEN" Name="Status" Type="String" />
    </SelectParameters>
</asp:SqlDataSource>
</asp:Content>
