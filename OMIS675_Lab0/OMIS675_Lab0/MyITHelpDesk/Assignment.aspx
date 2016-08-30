<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Assignment.aspx.cs" Inherits="OMIS675_Lab0.MyITHelpDesk.Assignment" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    
<h1>MY IT Help Desk</h1>
    <h4>One-stop destination for your problems...!!!</h4>
    <asp:Panel ID="Panel1" runat="server"></asp:Panel>
      <asp:Panel ID="Panel2" runat="server"></asp:Panel>

    
    <Label>A simple web based app My IT help desk system which deals with providing solutions to the commonly faced ITproblems in  our day to day life. Through this app user create a new ticket and/or manage tickets . The user can look at their ticket history and reopen a 

closed ticket if they are not satisfied. The help desk will also send email notifications to users and 

technical team when a ticket is raised or when an action is taken on the ticket.

<br /><b style="color:maroon">Functional requirements:</b><br />

1. User is able to register.<br />

2. Log in <br />

3. Create a new ticket.<br />

4. Search ticket history.<br />

5. Get email notifications.<br />

6. Update ticket.<br />

7. Provide information.<br />

8.  Log out.<br />

<b style="color:maroon">Non functional requirements:</b><br />

1. Compatibility across browsers.<br />

2. 24X7 technical support.<br />

3. Portability.<br />

4. Backup.<br />

5. Security.<br />

6. Response time.<br />

7. Usability.<br />

8. Data verification.<br /></Label>
    <br /><asp:HyperLink ID="HyperLink1" NavigateUrl="~/MyITHelpDesk/CaseDiagram.aspx" runat="server">Case Diagram</asp:HyperLink>
   &nbsp;&nbsp;&nbsp;&nbsp; <asp:HyperLink ID="HyperLink2" NavigateUrl="~/MyITHelpDesk/FlowDiagram.aspx" runat="server">Flow Diagram</asp:HyperLink>
    &nbsp;&nbsp;&nbsp;&nbsp; <asp:HyperLink ID="HyperLink3" NavigateUrl="~/MyITHelpDesk/Wireframes.aspx" runat="server">Wire Frames</asp:HyperLink>
</asp:Content>
