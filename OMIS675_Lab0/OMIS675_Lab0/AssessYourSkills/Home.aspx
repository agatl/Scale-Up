<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="OMIS675_Lab0.MyITHelpDesk.Assignment" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    
<h1>Scale Up</h1>
    <h4>Its time for an upgrade</h4>
    <asp:Panel ID="Panel11" runat="server"></asp:Panel>
      <asp:Panel ID="Panel12" runat="server"></asp:Panel>   
    <Label>Introduction:
In the era of modern world, the necessity to learn and expertise different technologies have become must in order to meet with the accelerating demands. It is quite obvious that all the technologies learnt by a person should be evaluated to analyze one’s knowledge in the particular field of study. Accessyourskills.com is a web app which mainly concentrates on evaluating user skills in a specific field of study and compare the test results with highest existing standards.

<br /><b style="color:maroon">Functional requirements:</b><br />

1.	The system shall allow a new user to create an account.<br />
2.	The system shall allow registered users to login to their accounts. <br />
3.	The users shall be able to report any system issues. <br />
4.	A user shall be able to take an assessment on the system.<br />
5.	The system shall allow a registered user to view his previous results. <br />
6.	A registered user shall be able to register for an assessment to be taken at a later date.<br />
7.	The system shall send an email notification to the registered user when his scores for a given test are available. This may happen immediately after test completion or after a few days of taking a test.<br />
8.	The system shall allow a registered user to update his/her skills.<br /> 
9.	A user shall be able to update/change his information in the system at anytime.<br />
10.	A registered user shall be able to retrieve his previous test record from the system.<br />

<b style="color:maroon">Non functional requirements:</b><br />

1.	Availability: The system will be to the users 24/7.<br />
2.	Accessibility: The system will be compatible with all browsers.<br />
3.	Security: The data and all kind of user information will be protected.<br />
4.	Performance: Under optimum conditions the test will be able to load in the system without any issue or delays.<br />
5.	Compatibility: The tests can be taken on any device (desktop, Laptops-Mac, PC, PDA’s, tablets and mobile).<br />
6.	Data Backup: All data in the system shall be backed periodically.<br />
7.	Usability: The system shall be easy to use, simple and self explanatory.<br />
8.	Scalability: The system shall be able to handle multiple users at a given time. The system shall have the capability to add more assessment questions from time to time. <br />
9.	Disaster Recovery: In case of any unforeseen damage or calamity, the data and all information in the system should be retrievable.<br />
</Label>
    <br /><asp:HyperLink ID="HyperLink11" NavigateUrl="~/AssessYourSkills/UseCaseDiagram.aspx" runat="server">Case Diagram</asp:HyperLink>
   &nbsp;&nbsp;&nbsp;&nbsp; <asp:HyperLink ID="HyperLink12" NavigateUrl="~/AssessYourSkills/FlowDiagram.aspx" runat="server">Flow Diagram</asp:HyperLink>
    &nbsp;&nbsp;&nbsp;&nbsp; <asp:HyperLink ID="HyperLink13" NavigateUrl="~/AssessYourSkills/Wireframes.aspx" runat="server">Wire Frames</asp:HyperLink>
    &nbsp;&nbsp;&nbsp;&nbsp; <asp:HyperLink ID="HyperLink1" NavigateUrl="~/Scaleup/login.aspx" runat="server">Scale Up</asp:HyperLink>
</asp:Content>
