<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="AddSkill.aspx.cs" Inherits="OMIS675_Lab0.ScaleUp.AddSkill" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <script type="text/javascript">
       function ValidateCheckBoxList(sender, args) {
           var isValid = false;
           debugger;
           if ($('#availableSkillList:selected').val() == 0) {
                    isValid = true;
                }
            args.IsValid = isValid;
        }
</script> 
    <div class="form-horizontal">
       <div>
           <div  style="float:left;overflow:hidden;width:37%"><h2 style="width:200px">Scale Up</h2></div>
           <div  style="float:left;overflow:hidden;width:567px"> <br />
                    <asp:Literal runat="server" ID="LastLogin" /></div>
           <div  style="float:left;overflow:hidden;width:auto">
               <br />
                    <asp:Button runat="server" OnClick="Logout_Click" Text="Log Out" CssClass="btn btn-default" />
            </div></div>
        <div style="width: 100%">
            <br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
            <asp:Literal runat="server" ID="WelcomeNote" />
        </div>
    <div style="width:100%">
<div  style="float:left;overflow:hidden;width:50%">
<div style="width: 20%; height: 130px; overflow: hidden; float: left;">
    <asp:Label runat="server"  CssClass="col-md-2 control-label">Available Skills</asp:Label></div>
    <div style="width: 30%; height: 300px; overflow: hidden; padding-top: 50px; float: left;">
        <asp:ListBox Style="height: 200px" ID="availableSkills" DataSourceID="availableSkillList" DataTextField="skill_name" DataValueField="skill_id" runat="server"></asp:ListBox>
        <br />
        <div>
            <asp:RequiredFieldValidator ID="availableSkillValidation"  ForeColor="Red" ValidationGroup="bb" Enabled="true" runat="server" ErrorMessage="Select one skill from available skills" ControlToValidate="availableSkills"></asp:RequiredFieldValidator><asp:SqlDataSource ID="availableSkillList" runat="server" ConnectionString="<%$ ConnectionStrings:ScaleupConnectionString %>"></asp:SqlDataSource>
        </div><br />
        <%--<br />
                <asp:CustomValidator ID="CustomValidator1" ErrorMessage="Please select at least one skill." ForeColor="Red" ClientValidationFunction="ValidateCheckBoxList" runat="server" />
<br />--%>
    </div>
    
   <div  style="width: 45%; height: 140px; overflow: hidden; padding-top: 50px; float: left;">
        <asp:Button ID="add" runat="server" validationGroup="bb" Text="Add" CssClass="btn btn-default" OnClick="add_Click" />
   </div>
    </div>
        
        <div style="width: 49%; height: 300px; overflow: hidden; padding-top: 20px; float: left;">
            <div style="width: 10%; height: 216px; overflow: hidden; float: left; padding-bottom: 5px;">
            <asp:Label runat="server"  style="padding-top:11px">Selected Skills</asp:Label><br /><br /></div>

            <div style="width: 40%; height: 280px; overflow: hidden; padding-top: 25px; padding-left: 40px; float: left;">
                <asp:ListBox Style="height: 200px" ID="selectedSkills" DataSourceID="selectedSkillList" DataTextField="skill_name" DataValueField="skill_id" runat="server"></asp:ListBox>
                <asp:SqlDataSource ID="selectedSkillList" runat="server" ConnectionString="<%$ ConnectionStrings:ScaleupConnectionString %>"></asp:SqlDataSource>
                <br />
                <div><asp:RequiredFieldValidator ID="selectedSkillValidation" ForeColor="Red" Enabled="true" runat="server" validationGroup="aa" ErrorMessage="Select one skill from selected skills" ControlToValidate="selectedSkills"></asp:RequiredFieldValidator>
            </div></div>
            <div style="width: 45%; height: 140px; overflow: hidden; padding-top: 35px; float: left;">
            <asp:Button id="delete" runat="server" validationGroup="aa" Text="Delete" CssClass="btn btn-default" OnClick="delete_Click" />
                </div>
        </div>
    </div>
        <div style="width:80%">
            <div style="float:left;overflow:hidden;width:45%;">
                <asp:Button id="Submit" runat="server" Text="Submit" CssClass="btn btn-default" OnClick="Submit_Click"  />
             </div>
            <div style="float:left;overflow:hidden;width:45%">
                <asp:Button id="cancel" runat="server" Text="Go Back" CssClass="btn btn-default" OnClick="cancel_Click" />        
        </div></div>











           
    </div>
</asp:Content>
