<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="CaseDiagram.aspx.cs" Inherits="OMIS675_Lab0.MyITHelpDesk.CaseDiagram" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <h1>MY IT Help Desk</h1>
    <h4>One-stop destination for your problems...!!!</h4>
    <asp:Panel ID="Panel1" runat="server"></asp:Panel>
      <asp:Panel ID="Panel2" runat="server"></asp:Panel>
    <b style="color:maroon">Use Case Diagram:</b><br />
    <asp:Panel ID="Panel3" Width="50%" runat="server">
        <asp:Image ID="Image1" runat="server" ImageUrl="~/MyITHelpDesk/Mockup1.png" />
    </asp:Panel>
     <label>
	Primary Actor : User.<br />
	Scope : With in a single user session.<br />
	Level: With in an application.<br />
	Story : When a user want to log a ticket in MyITHelpDesk app, User will have to either register first if he/she is using it for the first time or can go with the log in if user already registered.After succesful log in , User will create/edit tickets and will finally logout if the user want to go out of the app. </label>
    <asp:Button ID="Button1" class="text-warning" runat="server" Text="Go Back" PostBackUrl="~/MyITHelpDesk/Assignment.aspx" />
</asp:Content>
