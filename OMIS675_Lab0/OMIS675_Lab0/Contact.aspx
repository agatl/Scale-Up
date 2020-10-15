<%@ Page Title="Contact" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Contact.aspx.cs" Inherits="OMIS675_Lab0.Contact" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <asp:Panel ID="Panel1" runat="server" Width="362px">
       <%-- <h2><%: Title %>.</h2>--%>
    <h3>Abhinav Kumar Gatla</h3>
    <address>
        919, Ridge Dr<br />
        Dekalb,IL-60115<br />
        <abbr title="Phone">P:</abbr>
        815.593.8518
    </address>

    <address>
        <strong>Social Networking:</strong><br />
        <strong> <a href="https://www.facebook.com/abhinav.abhi.90?fref=nf">Facebook</a><br /></strong>
        <strong> <a href="https://www.linkedin.com/in/abhinavkumargatla/">Linked In</a></strong>
    </address>
    </asp:Panel>
    <asp:Panel ID="Panel2" runat="server" style="position: relative; top: -181px; left: 365px; width: 269px; height: 181px;">
    <asp:Image ID="Image1" runat="server" Height="177px" ImageUrl="~/Content/IMG_20150731_072226.jpg" Width="264px" /></asp:Panel>
    
</asp:Content>
