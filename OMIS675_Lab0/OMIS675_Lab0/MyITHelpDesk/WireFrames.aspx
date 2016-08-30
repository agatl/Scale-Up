<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="WireFrames.aspx.cs" Inherits="OMIS675_Lab0.MyITHelpDesk.WireFrames" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <h1>MY IT Help Desk</h1>
    <h4>One-stop destination for your problems...!!!</h4>
    <asp:Panel ID="Panel1" runat="server"></asp:Panel>
      <asp:Panel ID="Panel2" runat="server"></asp:Panel>
    <b style="color:maroon">Wire Frames:</b><br/>
    <asp:Panel ID="Panel3" Width="50%" runat="server">
        <label>Home :</label><br />
        <%--<asp:Image ID="Image1" runat="server" ImageUrl="~/MyITHelpDesk/Mockup1.png" />
    </asp:Panel>
     <label>Manage Tickets :</label><br />
    <asp:Panel ID="Panel5" Width="50%" runat="server">--%>
        <asp:Image ID="Image3" runat="server" ImageUrl="~/MyITHelpDesk/Mockup2.png" />
    </asp:Panel>
    <label>User Registration:</label><br />
    <asp:Panel ID="Panel6" Width="50%" runat="server">
        <asp:Image ID="Image4" runat="server" ImageUrl="~/MyITHelpDesk/Mockup4.png" />
    </asp:Panel>
    <label>User Registration :</label><br />
    <asp:Panel ID="Panel7" Width="50%" runat="server">
        <asp:Image ID="Image5" runat="server" ImageUrl="~/MyITHelpDesk/Mockup5.png" />
    </asp:Panel>
    <label>Manage Tickets :</label><br />
    <asp:Panel ID="Panel4" Width="50%" runat="server">
        <asp:Image ID="Image2" runat="server" ImageUrl="~/MyITHelpDesk/Mockup3.png" />
    </asp:Panel>
    <asp:Button ID="Button1" class="text-warning" runat="server" Text="Go Back" PostBackUrl="~/MyITHelpDesk/Assignment.aspx" />
</asp:Content>
