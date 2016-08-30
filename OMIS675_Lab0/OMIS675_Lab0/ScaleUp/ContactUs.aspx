<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ContactUs.aspx.cs" Inherits="OMIS675_Lab0.ScaleUp.ContactUs" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <p /> 
<%--    <Br /><br />--%>

        <%--<asp:Image ID="Image1" runat="server" Height="45px" ImageUrl="https://www.harding-center.mpg.de/en/system/files/imagecache/marginal/facebook_twitter.jpg" Width="100px" />--%>

    <h2 style="color:navy;">CONTACT US</h2>
        
    Please contact us to learn more about Scale Up. Our business hours are Monday through Friday, 8:00 AM to 5:00 PM CST
    <p />
        <h3 style="color:darkblue;">OUR TEAM</h3> 
    
        <div style="width:auto;">
            <div style="width:30%;float:left">
                <span style="color: #006600;font-weight:bold">
                    ABHINAV KUMAR GATLA
                    <asp:Image ID="Image2" runat="server" ImageUrl="~/ScaleUp/Image/Abhinav.jpg" Height="150px" />
                    <br />
                    Z-1765389
                    
                </span>
            </div>
            <div style="width:30%;float:left">
                <span style="color: #006600;font-weight:bold">
                    ZOHRA TAMJEED<P />
                    <asp:Image ID="Image3" runat="server" ImageUrl="~/ScaleUp/Image/Zohra.jpg" Height="150px" />
                    <br />
                    Z-1751781
                    
                </span>                
            </div>
            <div style="width:40%;float:left">
                <iframe frameborder="0" scrolling="no" marginheight="0" marginwidth="0"width="250" height="200" src="https://maps.google.com/maps?hl=en&q=barsema hall, dekalb,il&ie=UTF8&t=roadmap&z=9&iwloc=B&output=embed"><div><small><a href="http://embedgooglemaps.com">embedgooglemaps.com</a></small></div><div><small><a href="http://buyproxies.io/">shared proxies</a></small></div></iframe><P />
                  </div>
        </div>

    <div style="width:auto;">
        <span style="color: #FF0000; font-weight:bold;font-size:medium">Call Us:</span><P />
        <span style="color: black; font-weight:bold;font-size:medium">(510)366-3999</span><P />

        <span style="color: #FF0000; font-weight:bold;font-size:medium">Email:</span><P />
        <span style="color: black; font-weight:bold;font-size:medium">z1751781@students.niu.edu,&nbsp;&nbsp;z1765389@students.niu.edu</span><P />

        <span style="color: #FF0000; font-weight:bold;font-size:medium">Address:</span><P />
        <span style="color: black; font-weight:bold;font-size:medium">Barsema Hall, NIU, Dekalb,IL 60115</span><P />
        
     <%--   </div>--%>
        <asp:Button ID="Button1" runat="server" CssClass="btn btn-default" Height="38px" Text="Back" Width="153px" PostBackUrl="~/ScaleUp/Login.aspx" />
    </div>
   <%-- <div style="width:auto;float:left">
        <iframe frameborder="0" scrolling="no" marginheight="0" marginwidth="0"width="250" height="200" src="https://maps.google.com/maps?hl=en&q=barsema hall, dekalb,il&ie=UTF8&t=roadmap&z=9&iwloc=B&output=embed"><div><small><a href="http://embedgooglemaps.com">embedgooglemaps.com</a></small></div><div><small><a href="http://buyproxies.io/">shared proxies</a></small></div></iframe><P />
    </div>--%>
    
    
     
</asp:Content>
