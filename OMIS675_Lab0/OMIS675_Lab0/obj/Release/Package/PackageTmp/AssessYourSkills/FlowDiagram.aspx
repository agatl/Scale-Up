<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="FlowDiagram.aspx.cs" Inherits="OMIS675_Lab0.AssessYourSkills.FlowDiagram" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <h1>Scale Up</h1>
    <h4>Its time for an upgrade</h4>
    <asp:Panel ID="Panel1" runat="server"></asp:Panel>
      <asp:Panel ID="Panel2" runat="server"></asp:Panel>
    <b style="color:maroon">Flow Diagram:</b><br />
    <asp:Panel ID="Panel3" Width="50%" runat="server">
        <asp:Image ID="Image1" runat="server" ImageUrl="~/AssessYourSkills/MockUps/Flow Diagram.png" />
    </asp:Panel>
    <asp:Button ID="Button1" class="text-warning" runat="server" Text="Go Back" PostBackUrl="~/AssessYourSkills/Home.aspx" />
</asp:Content>