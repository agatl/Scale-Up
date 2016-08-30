<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="FAQ.aspx.cs" Inherits="OMIS675_Lab0.ScaleUp.FAQ" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div>
        <br />
        <b>Frequently Asked Questions:</b><br /><br />
        Q: How do I start my online exam?<br />
        A: After you have clicked on start button, exam will begin. Once you press the button, your exam session will start.<br />
<br />
        Q: Can I stop the exam after it is started and come back later to finish it?<br />
        A: No.<br />
        <br />
        Q: Can I attempt with out registration?<br />
        A: No.<br />
        <br />
        Q: What happens when I forget my password?<br />
        A: Please write us at 1765389@students.niu.edu, we will reset it for you after validating you properly.<br />
        <br />
        Q: Can I retake the test?<br />
        A: No. Untill remap the assessment.<br />
        <br />
        Q: Where is your questions were taken from?<br />
        A: Our questions were prepared by Academic professionals,Authors of standard reference books.<br />
        <br />
        Q: Do your questions have difficulty levels?<br />
        A: Yes, we do have difficulty levels. All our questions come with varying difficulty.<br />
        <br/>
        <asp:Button ID="Button1" runat="server" CssClass="btn btn-default" Height="38px" Text="Back" Width="153px" PostBackUrl="~/ScaleUp/Login.aspx" />
        <br />
    </div>
</asp:Content>
