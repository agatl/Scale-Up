<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="OMIS675_Lab0._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <div class="jumbotron" style="background-image:url(~/Content/IMG_20150731_072226.jpg)">
        <h2>OMIS 675-Internet Computing Applications Lab </h2>
        <p>Abhinav Kumar Gatla</p>
        <p>
           <asp:Image ID="Image2" runat="server" Height="312px" ImageUrl="~/Content/IMG_20150731_072226.jpg" Width="417px" /></p>
        <br /><p><a href="Contact.aspx" class="btn btn-primary ">Learn more</a><br /><%--<label style="font-size:small">This site is buit on ASP.Net using C#</label>--%></p>
    <%--<p class="text-warning" runat="server"  >   <label>Assignment Part 2: Applying Css warning</label> </p>
        <p class=".text-muted" runat="server"  > <label>muted</label>    </p>
            <p class=".text-info" runat="server"  >  <label>info</label>  </p>
            <p class=".text-success" runat="server"  >  <label>success</label>  </p> --%>
        <asp:Button ID="Button1" runat="server" Text="Get Geo" PostBackUrl="~/Geo.aspx" />
        &nbsp&nbsp&nbsp&nbsp;<asp:Button ID="Button2" class="text-warning" runat="server" Text="Video" PostBackUrl="~/Video.aspx" />
        <%--<br />&nbsp;&nbsp;&nbsp;&nbsp; <asp:HyperLink ID="HyperLink2" NavigateUrl="~/MyITHelpDesk/HD.aspx" runat="server">MY IT Help Desk</asp:HyperLink>
        &nbsp;&nbsp;&nbsp;&nbsp; <asp:HyperLink ID="HyperLink4" NavigateUrl="~/MyITHelpDesk/DataEntry.aspx" runat="server">Data Entry</asp:HyperLink>
       <br /><br /> --%> &nbsp&nbsp&nbsp&nbsp;<asp:Button ID="Button3" runat="server" Text="Major Project" PostBackUrl="~/Scaleup/Login.aspx" />
             &nbsp&nbsp&nbsp&nbsp; <asp:Button ID="Button4" runat="server" Text="Google Analytics" PostBackUrl="~/Google.aspx" /></div>

    <div class="row">
       <%-- <div class="col-md-4">
            <h2>Getting started</h2>
            <p>
                ASP.NET Web Forms lets you build dynamic websites using a familiar drag-and-drop, event-driven model.
            A design surface and hundreds of controls and components let you rapidly build sophisticated, powerful UI-driven sites with data access.
            </p>
            <p>
                <a class="btn btn-default" href="http://go.microsoft.com/fwlink/?LinkId=301948">Learn more &raquo;</a>
            </p>
        </div>
        <div class="col-md-4">
            <h2>Get more libraries</h2>
            <p>
                NuGet is a free Visual Studio extension that makes it easy to add, remove, and update libraries and tools in Visual Studio projects.
            </p>
            <p>
                <a class="btn btn-default" href="http://go.microsoft.com/fwlink/?LinkId=301949">Learn more &raquo;</a>
            </p>
        </div>
        <div class="col-md-4">
            <h2>Web Hosting</h2>
            <p>
                You can easily find a web hosting company that offers the right mix of features and price for your applications.
            </p>
            <p>
                <a class="btn btn-default" href="http://go.microsoft.com/fwlink/?LinkId=301950">Learn more &raquo;</a>
            </p>
        </div>--%>
    </div>

</asp:Content>
