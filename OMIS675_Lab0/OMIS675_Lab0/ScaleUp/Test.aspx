<%@ Page Title="" Language="C#" AutoEventWireup="true" MasterPageFile="~/Site.Master" CodeBehind="Test.aspx.cs" Inherits="OMIS675_Lab0.ScaleUp.Test" %>

<%@ Register Src="~/ScaleUp/Examination.ascx" TagPrefix="uc1" TagName="Examination" %>

<%--<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form>
    <p class="text-danger">
        <asp:Literal runat="server" ID="ErrorMessage" />
    </p>

    <div class="form-horizontal">
       <div><div  style="float:left;overflow:hidden;width:30%"><h2 style="width:200px">Scale Up</h2></div>
           <br />
           <div  style="float:left;overflow:hidden;width:50%">
               <br />  <asp:Literal runat="server" ID="LastLogin" /></div>
        <div  style="float:left;overflow:hidden;width:auto">
                    <asp:Button runat="server" OnClick="Logout_Click" Text="Log Out" CssClass="btn btn-default" />
            </div></div>
       <br />
        <div style="width: 871px; height: 447px">
            <div style="float: left; overflow: hidden; width: 40%; height: 450px">
                <div >
                    <asp:Literal runat="server" ID="WelcomeNote" />
                </div>
                <br />--%>

            <asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
                    <div>
                <div style="float: left; overflow: hidden; width: 30%">
                    <h2 style="width: 200px">Scale Up</h2>
                </div>
                <br />
                <div style="float: left; overflow: hidden; width: 50%">
                    <br />
                    <asp:Literal runat="server" ID="LastLogin" />
                </div>
                <div style="float: left; overflow: hidden; width: auto">
                    <%--<asp:Button runat="server" OnClick="Logout_Click" Text="Log Out" CssClass="btn btn-default" />--%>
                </div>
            </div><br />
        <div style="width:100%">
                    <asp:Literal runat="server" ID="WelcomeNote" />
                </div>
                <br />
                <div style="width:100%;margin-left:20%">
                <uc1:Examination runat="server" ID="Examination" />
            
           </div></asp:Content>
       <%--</div>
            </div>
        </div></form>
    </body>
</html>--%>

