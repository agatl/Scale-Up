<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Result.aspx.cs" Inherits="OMIS675_Lab0.ScaleUp.Result" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <asp:Panel ID="resultPanel" runat="server" Visible="false">
        <div style="margin-left:15%">
            <div style="width:100%">
                <div style="float: left; overflow: hidden; width: 30%">
                    <h2 style="width: 200px">Scale Up</h2>
                </div>
                <br />
                <div style="float: left; overflow: hidden; width: 50%">
                    <br />
                    <asp:Literal runat="server" ID="LastLogin" />
                </div>
                <div style="float: left; overflow: hidden; width: auto">
                    <asp:Button runat="server" OnClick="Logout_Click" Text="Log Out" CssClass="btn btn-default" />
                </div>
            </div><br />
        <div style="width:100%">
                       <br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
            <asp:Literal runat="server" ID="WelcomeNote" />
                </div>
                <br />


           
            <h3 style="text-align:center">Your Result:</h3>
            <h4><asp:Label style="text-align:center" ID="lblAssessment_Name" runat="server" ></asp:Label><br/>
                <br />
            <asp:Label style="text-align:center" ID="lblAssessment_Date" runat="server" ></asp:Label><br/><br />
            <asp:Label style="text-align:center" ID="Label1" runat="server" ></asp:Label><br/><br />
            <asp:Label style="text-align:center" ID="Label2" runat="server" ></asp:Label><br/><br />
            <asp:Label style="text-align:center" ID="Label3" runat="server" ></asp:Label><br/><br />
            <asp:Label style="text-align:center" ID="Label4" runat="server" ></asp:Label>
            <b><asp:Label style="text-align:center;color:green" ID="Label5" runat="server"  ></asp:Label>
                <asp:Label Style="text-align: center; color: red" ID="Label6" runat="server"></asp:Label>
            </b></h4><br /><br />
            <asp:Button ID="Button2" runat="server" CssClass="btn btn-default" Text="Go Back" OnClick="Button2_Click" />
            <%--<asp:Label ID="Label5" runat="server" Text="userchoiced"></asp:Label><asp:DropDownList ID="userchoiced" runat="server"></asp:DropDownList>
            <asp:Label ID="Label6" runat="server" Text="dbchoiced"></asp:Label><asp:DropDownList ID="dbchoiced" runat="server"></asp:DropDownList>
        --%></div>
    </asp:Panel>
    <asp:Panel ID="examStartPanel" runat="server" Visible="false">
        <div style="width: 100%; text-align: center;"><br /><br />
            <div>
                <div style="float: left; overflow: hidden; width: 22%"></div>
                <div style="float: left; overflow: hidden; width: 25%">
                    <h3><b>
                        <asp:Label ID="Label7" runat="server" Text="Label" CssClass="control-label">Start your Assessment:</asp:Label></b></h3>
                </div>
                <div style="width: 13%; overflow: hidden; padding-top: 17px; float: left;">
                    <asp:Button ID="Button1" runat="server" Text="Start" CssClass="btn btn-default" OnClick="Button1_Click" /></div>
                <div style="width: 63%; overflow: hidden; padding-top: 17px; float: left;"></div>
            </div>
            <div style="text-align: left;width:100%;">
                <br /><br /><br /><br />
                <asp:Label ID="Label8" runat="server" Text="Note:"></asp:Label><br />
                <ul>
                    <%--<li>The test will be of 3 hrs duration</li>--%>
                    <li>The test paper will consists questions from user specified skills and all question will have equal weight age.</li>
                    <li>Each question is allotted 1 mark for each correct response.</li>
                    <li>All unattempted questions were treated as wrong answers.</li>
                    <li>There is only one correct response for each question out of four responses given.</li>
                    <li>No candidate is allowed to carry any textual material, printed or written, bits of papers, pager, mobile phone, any electronic device, etc.,</li>
                    <li>No candidate is allowed to leave the computer while attending assessment.</li>
                    <li>No other applications or tabs to be opened while giving the examination.</li>
                </ul>
            </div>
        </div>
    </asp:Panel>
</asp:Content>
