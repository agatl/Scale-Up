<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Google.aspx.cs" Inherits="OMIS675_Lab0.Google" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
<link href='https://fonts.googleapis.com/css?family=Indie+Flower' rel='stylesheet' type='text/css'>
    <link href='https://fonts.googleapis.com/css?family=Pacifico' rel='stylesheet' type='text/css'>
<br /><br /><br /><br />
    <asp:Label ID="Label1" runat="server" style="font-family: 'Indie Flower', cursive;" Text="Label">Visitors</asp:Label><br />
  <iframe width="600" height="371" seamless frameborder="0" scrolling="no" src="https://docs.google.com/spreadsheets/d/18boO0VOQEofDXFb1g7cIIiqnnzo7nY2RAgy7QnYYkd8/pubchart?oid=648758883&amp;format=interactive"></iframe><br /><br />
       <asp:Label ID="Label2" runat="server" style="font-family: 'Pacifico', cursive;" Text="Label">TopPages</asp:Label><br />
   <iframe width="600" height="371" seamless frameborder="0" scrolling="no" src="https://docs.google.com/spreadsheets/d/1mVMIMBlJQS-uyqlB_lLLhNq3PqpXUf12YGg6PCKFEww/pubchart?oid=196516851&amp;format=interactive"></iframe>
     <br /><br /><asp:Label ID="Label3" runat="server" style="font-family: 'Pacifico', cursive;" Text="Label">Interactive Report</asp:Label><br />
  <iframe width="600" height="371" seamless frameborder="0" scrolling="no" src="https://docs.google.com/spreadsheets/d/1u_wllW6vWaffLITBuOG6Hm_IM-t6VQRveTL3Lc8g0WM/pubchart?oid=1013791947&amp;format=interactive"></iframe>
   <br /><asp:Button ID="Button1" class="text-warning" runat="server" Text="Go Back" PostBackUrl="~/Default.aspx" />
     </asp:Content>