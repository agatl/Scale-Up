<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="CreateAssessment.aspx.cs" Inherits="OMIS675_Lab0.ScaleUp.CreateAssessment" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <script type="text/javascript">
    function ValidateCheckBoxList(sender, args) {
        var checkBoxList = document.getElementById("<%=checkboxlist.ClientID %>");
        var checkboxes = checkBoxList.getElementsByTagName("input");
        var isValid = false;
        for (var i = 0; i < checkboxes.length; i++) {
            if (checkboxes[i].checked) {
                isValid = true;
                break;
            }
        }
        args.IsValid = isValid;
    }
</script>
    <script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.7.2/jquery.min.js"></script>
    <script src="http://ajax.aspnetcdn.com/ajax/jquery.ui/1.8.9/jquery-ui.js" type="text/javascript"></script>
    <link href="../Content/jquery12345.css" rel="stylesheet" />



    <p class="text-danger">
        <asp:Literal runat="server" ID="ErrorMessage" />
    </p>

    <asp:Literal runat="server" ID="WelcomeNote" />
    <br /><br />

    <div style="width:100%;">
        <div style="width: 50%; margin-left: 25%;">
            <div style="width: 100%;">
                <div >
                    <asp:Label runat="server" Font-Bold="True" Font-Size="X-Large" Width="100%">Create Assessment</asp:Label><br /><br />
                </div>
                <div style="width: 219px; height: 35px; overflow: hidden; padding-top: 5px; float: left;">
                    <asp:Label runat="server" Font-Bold="True" Font-Size="Large" Width="89%">Assessment Name</asp:Label></div>
                <div style="height: 50px; overflow: hidden; float: left;">
                    <asp:TextBox runat="server" ID="tbAssessmentName" ValidationGroup="aa"   CssClass="form-control" style="Width:204px" />
                </div>
            </div>
            <div style="width: 100%; height: 100%; padding: 5px; margin-top: 15px;">
                <div style="font-size: large; font-weight: bold; float: left;"><br />Choose Skills for Your Assessment: </div>
                <div style=" text-align:center; width: 20%;"></div>
                <div style="width: 350px; height: 180px; text-align: left; padding-top: 20px; padding-left: 150px; -ms-overflow-y: scroll;">
                    <asp:CheckBoxList ID="checkboxlist" runat="server" DataSourceID="SqlDataSource1" DataTextField="skill_name" DataValueField="skill_id" RepeatDirection="Vertical" Width="100%" CellPadding="10" CellSpacing="10">
                    </asp:CheckBoxList>
                </div>
                <br /><asp:RequiredFieldValidator ID="RequiredFieldValidator1"  ValidationGroup="aa" runat="server" ForeColor="Red" ErrorMessage="Enter Assessment Name" ControlToValidate="tbAssessmentName"></asp:RequiredFieldValidator>
                <br /><asp:CustomValidator ID="CustomValidator1" ValidationGroup="aa" ErrorMessage="Please select at least one skill." ForeColor="Red" ClientValidationFunction="ValidateCheckBoxList" runat="server" />
                <br />
                <asp:Label ID="Label1" Visible="false" runat="server" ForeColor="Green" ></asp:Label>
            </div>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnString %>"></asp:SqlDataSource>
            <br />
            <asp:Button ID="Create" runat="server" CssClass="btn btn-default" ValidationGroup="aa" Height="38px" Text="CREATE" Width="153px" OnClick="CREATE_Click" />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="BACK" runat="server" CssClass="btn btn-default" Height="38px" Text="Back" Width="153px" OnClick="Back_Click" />
        </div>
    </div>


</div></asp:Content>