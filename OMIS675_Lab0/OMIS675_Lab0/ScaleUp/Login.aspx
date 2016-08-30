<%@ Page Title="Log in" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="OMIS675_Lab0.Account.Login" Async="true" %>

<%--<%@ Register Src="~/Account/OpenAuthProviders.ascx" TagPrefix="uc" TagName="OpenAuthProviders" %>--%>



<asp:Content runat="server" ID="BodyContent" ContentPlaceHolderID="MainContent" >
    <h2><%: Title %></h2>
<style type="text/css">
<!--
body {
background-image: url('./image/exam.jpg');
background-repeat: no-repeat;
background-size:cover;
min-height:100%;
}
-->
</style>
    <div class="row" style="width:100%">
        <div class="col-md-8" style="float:left;width:46%">
            <section id="loginForm">
                <div class="form-horizontal">
                    <h4>Login to Scale Up</h4>
                    <hr />
                    <asp:PlaceHolder runat="server" ID="ErrorMessage" Visible="false">
                        <p class="text-danger">
                            <asp:Literal runat="server" ID="FailureText" />
                        </p>
                    </asp:PlaceHolder>
                    <div class="form-group">
                        <asp:Label runat="server" AssociatedControlID="Email" CssClass="col-md-2 control-label">Email</asp:Label>
                        <div class="col-md-10">
                            <asp:TextBox runat="server" ID="Email" CssClass="form-control" TextMode="Email" />
                            <asp:RequiredFieldValidator runat="server" ControlToValidate="Email"
                                CssClass="text-danger" ErrorMessage="The email field is required." />
                        </div>
                    </div>
                    <div class="form-group">
                        <asp:Label runat="server" AssociatedControlID="Password" CssClass="col-md-2 control-label">Password</asp:Label>
                        <div class="col-md-10">
                            <asp:TextBox runat="server" ID="Password" TextMode="Password" CssClass="form-control" />
                            <asp:RequiredFieldValidator runat="server" ControlToValidate="Password" CssClass="text-danger" ErrorMessage="The password field is required." />
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="col-md-offset-2 col-md-10">
                            <div class="checkbox">
                                <asp:CheckBox runat="server" ID="RememberMe" />
                                <asp:Label runat="server" AssociatedControlID="RememberMe">Remember me?</asp:Label>
                            </div>
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="col-md-offset-2 col-md-10">
                            <asp:Button runat="server" OnClick="LogIn" Text="Log in" CssClass="btn btn-default" />
                        </div>
                    </div>
                </div>
                <p> 
                    <asp:HyperLink runat="server" ID="RegisterHyperLink" href="Register.aspx" ViewStateMode="Disabled" >Register as a new user</asp:HyperLink>
                </p>
                <p>
                    <%-- Enable this once you have account confirmation enabled for password reset functionality
                    <asp:HyperLink runat="server" ID="ForgotPasswordHyperLink" ViewStateMode="Disabled">Forgot your password?</asp:HyperLink>
                    --%>
                    </p>
            </section>
        </div>
        <div class="col-md-8" style="float:right;width: 46.66666667%;">
            <h2 style="color:blue;">Welcome to Scaleup</h2><span style="color:purple;font-size:small">Your one Stop Solution to assess all your skills! </span><br /><br />
            <p style="font-size:large;text-align:justify">Scale up provides individuals/employees with a web-based skills testing service. Rather than relying solely on gut feel or personal impressions of their skills, an individual can more effectively ascertain their skills by taking our assessment tests and have confidence while facing an interviews.</p>
            <p style="font-size:large;text-align:justify"> Our tests are developed by subject matter experts and recognized by a wide range of companies. </p>

            <p style="font-size:large;text-align:justify">Questions? <asp:HyperLink runat="server" ID="HyperLink1" href="ContactUs.aspx" ViewStateMode="Disabled" >Contact Us.</asp:HyperLink>
                &nbsp;&nbsp;&nbsp;&nbsp;<asp:HyperLink runat="server" ID="HyperLink2" href="FAQ.aspx" ViewStateMode="Disabled" >FAQs.</asp:HyperLink>
            </p><br />
            <p>&copy;2015 -2015. Scale Up . All rights reserved.</p>
            
        </div>

    </div>
</asp:Content>
