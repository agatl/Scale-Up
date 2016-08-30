<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="WireFrames.aspx.cs" Inherits="OMIS675_Lab0.AssessYourSkills.WireFrames" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

   <h1>Scale Up</h1>
    <h4>Its time for an upgrade</h4>
    <asp:Panel ID="Panel1" runat="server"></asp:Panel>
      <asp:Panel ID="Panel2" runat="server"></asp:Panel>
    <b style="color:maroon">Wire Frames:</b><br/>
    <asp:Panel ID="Panel3" Width="50%" runat="server">
        <label>Home :</label><br />
        <%--<asp:Image ID="Image1" runat="server" ImageUrl="~/MyITHelpDesk/Mockup1.png" />
    </asp:Panel>
     <label>Manage Tickets :</label><br />
    <asp:Panel ID="Panel5" Width="50%" runat="server">--%>
        <asp:Image ID="Image3" runat="server" ImageUrl="~/AssessYourSkills/MockUps/homepage.png" Height="703px" Width="1201px" />
    </asp:Panel>
    <label>User Registration:</label><br />
    <asp:Panel ID="Panel6" Width="50%" runat="server">
        <asp:Image ID="Image4" runat="server" ImageUrl="~/AssessYourSkills/MockUps/Registration Page.png" />
    </asp:Panel><label>About us :</label><br />
    <asp:Panel ID="Panel8" Width="50%" runat="server">
        <asp:Image ID="Image6" runat="server" ImageUrl="~/AssessYourSkills/MockUps/AboutUS.png" Height="710px" Width="1195px" />
    </asp:Panel>
    <label>Contact us :</label><br />
    <asp:Panel ID="Panel9" Width="50%" runat="server">
        <asp:Image ID="Image7" runat="server" ImageUrl="~/AssessYourSkills/MockUps/CONTACT US.png" Height="710px" Width="1195px" />
    </asp:Panel>
    <label>Dashboard :</label><br />
    <asp:Panel ID="Panel7" Width="50%" runat="server">
        <asp:Image ID="Image5" runat="server" ImageUrl="~/AssessYourSkills/MockUps/My Dashboard.png" Height="710px" Width="1195px" />
    </asp:Panel>
    <label>Sessions in Dashboard :</label><br />
    <asp:Panel ID="Panel10" Width="50%" runat="server">
        <asp:Image ID="Image8" runat="server" ImageUrl="~/AssessYourSkills/MockUps/Seesions in  My Dashboard.png" Height="710px" Width="1195px" />
    </asp:Panel>
    <label>Assessment Page :</label><br />
    <asp:Panel ID="Panel4" Width="50%" runat="server">
        <asp:Image ID="Image2" runat="server" ImageUrl="~/AssessYourSkills/MockUps/Sample Question Page.png" Height="615px" Width="1188px" />
    </asp:Panel>
    <label>Results :</label><br />
    <asp:Panel ID="Panel5" Width="50%" runat="server">
        <asp:Image ID="Image1" runat="server" ImageUrl="~/AssessYourSkills/MockUps/RESULT PAGE.png" Height="734px" Width="1188px" />
    </asp:Panel>
    <asp:Button ID="Button1" class="text-warning" runat="server" Text="Go Back" PostBackUrl="~/AssessYourSkills/Home.aspx" />
</asp:Content>
