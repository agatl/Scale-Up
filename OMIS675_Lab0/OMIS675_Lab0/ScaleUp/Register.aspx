<%@ Page Title="Register" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="OMIS675_Lab0.Account.Register" %>

<asp:Content runat="server" ID="BodyContent" ContentPlaceHolderID="MainContent">
    <script type="text/javascript">
   <%-- function ValidateCheckBoxList(sender, args) {
        var checkBoxList = document.getElementById("<%=chbxSkills.ClientID %>");
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
</script>--%>
    <%--   </div>--%>
    <p class="text-danger">
       <br />
         <asp:Literal runat="server" ID="ErrorMessage" />
    </p>

    <div class="form-horizontal">
       <h2>Scale Up</h2>
        <h4>Create a new account</h4>
        <hr />
        <%--<div style="float:left;overflow:hidden;width:40%"><asp:Button ID="btnModalPopup" runat="server" Text="Add Skill" CssClass="btn btn-default"/>   </div> 
           --%>
        <div class="col-md-8" style="width:40%">
           <div class="form-group">
            <asp:Label runat="server" AssociatedControlID="tbfirstName" CssClass="col-md-2 control-label">First Name</asp:Label>
            <div class="col-md-10">
                <asp:TextBox runat="server" ID="tbfirstName" CssClass="form-control" />
                <asp:RequiredFieldValidator runat="server" ControlToValidate="tbfirstName"
                    CssClass="text-danger" ErrorMessage="First Name is required." />
            </div>
        </div>
             <div class="form-group">
            <asp:Label runat="server" AssociatedControlID="tbLastName" CssClass="col-md-2 control-label">Last Name</asp:Label>
            <div class="col-md-10">
                <asp:TextBox runat="server" ID="tbLastName" CssClass="form-control" />
                <asp:RequiredFieldValidator runat="server" ControlToValidate="tbLastName"
                    CssClass="text-danger" ErrorMessage="Last Name is required." />
            </div>
        </div>
            <div class="form-group">
                <asp:Label runat="server" AssociatedControlID="tbEmail" CssClass="col-md-2 control-label">Email</asp:Label>
                <div class="col-md-10">
                    <asp:TextBox runat="server" ID="tbEmail" CssClass="form-control" TextMode="Email" />
                    <asp:RequiredFieldValidator runat="server" ControlToValidate="tbEmail"
                        CssClass="text-danger" ErrorMessage="The email field is required." />
                </div>
            </div>   
        <div class="form-group">
            <br />
            <asp:Label runat="server" AssociatedControlID="tbPassword" CssClass="col-md-2 control-label">Password</asp:Label>
            <div class="col-md-10">
                <asp:TextBox runat="server" ID="tbPassword" TextMode="Password" CssClass="form-control" />
                <asp:RequiredFieldValidator runat="server" ControlToValidate="tbPassword"
                    CssClass="text-danger" ErrorMessage="The password field is required." />
            </div>
        </div>
             <div class="form-group">
            <asp:Label runat="server" AssociatedControlID="tbConfirmPassword" CssClass="col-md-2 control-label">Confirm Password</asp:Label>
            <div class="col-md-10">
                <asp:TextBox runat="server" ID="tbConfirmPassword" TextMode="Password" CssClass="form-control" />
                <asp:RequiredFieldValidator runat="server" ControlToValidate="tbConfirmPassword"
                    CssClass="text-danger" Display="Dynamic" ErrorMessage="The confirm password field is required." />
                <asp:CompareValidator runat="server" ControlToCompare="tbPassword" ControlToValidate="tbConfirmPassword"
                    CssClass="text-danger" Display="Dynamic" ErrorMessage="The password and confirmation password do not match." />
            </div>
        </div>
                     
             
              
        <%--   </div>--%>
    </div> 
   
    <div class="col-md-4" style="width:40%">
        
        
       <div class="form-group">
            <asp:Label runat="server" AssociatedControlID="tbaddressLine1" CssClass="col-md-2 control-label">Address Line 1</asp:Label>
            <div class="col-md-10">
                <asp:TextBox runat="server" ID="tbaddressLine1" TextMode="SingleLine" CssClass="form-control" />
                <asp:RequiredFieldValidator runat="server" ControlToValidate="tbaddressLine1"
                    CssClass="text-danger" Display="Dynamic" ErrorMessage="The Address field is required." />
                <%-- </div>--%>
            </div>
              </div>
         <div class="form-group">
            <asp:Label runat="server" AssociatedControlID="tbAddressLine2" CssClass="col-md-2 control-label">Address Line 2</asp:Label>
            <div class="col-md-10">
                <asp:TextBox runat="server" ID="tbAddressLine2" TextMode="SingleLine" CssClass="form-control" />
                </div>
        </div>
        <div class="form-group">
            <asp:Label runat="server" AssociatedControlID="tbCity" CssClass="col-md-2 control-label">City</asp:Label>
            <div class="col-md-10">
                <asp:TextBox runat="server" ID="tbCity" TextMode="SingleLine" CssClass="form-control" />
                <asp:RequiredFieldValidator runat="server" ControlToValidate="tbCity"
                    CssClass="text-danger" Display="Dynamic" ErrorMessage="The City field is required." /> 
            </div>
        </div>
        <div class="form-group">
            <asp:Label runat="server" AssociatedControlID="ddlState" CssClass="col-md-2 control-label">State</asp:Label>
            <div class="col-md-10">
                 <asp:DropDownList ID="ddlState" style="width:57%" runat="server" CssClass="form-control">
	<asp:ListItem Value="AL">Alabama</asp:ListItem>
	<asp:ListItem Value="AK">Alaska</asp:ListItem>
	<asp:ListItem Value="AZ">Arizona</asp:ListItem>
	<asp:ListItem Value="AR">Arkansas</asp:ListItem>
	<asp:ListItem Value="CA">California</asp:ListItem>
	<asp:ListItem Value="CO">Colorado</asp:ListItem>
	<asp:ListItem Value="CT">Connecticut</asp:ListItem>
	<asp:ListItem Value="DC">District of Columbia</asp:ListItem>
	<asp:ListItem Value="DE">Delaware</asp:ListItem>
	<asp:ListItem Value="FL">Florida</asp:ListItem>
	<asp:ListItem Value="GA">Georgia</asp:ListItem>
	<asp:ListItem Value="HI">Hawaii</asp:ListItem>
	<asp:ListItem Value="ID">Idaho</asp:ListItem>
	<asp:ListItem Value="IL">Illinois</asp:ListItem>
	<asp:ListItem Value="IN">Indiana</asp:ListItem>
	<asp:ListItem Value="IA">Iowa</asp:ListItem>
	<asp:ListItem Value="KS">Kansas</asp:ListItem>
	<asp:ListItem Value="KY">Kentucky</asp:ListItem>
	<asp:ListItem Value="LA">Louisiana</asp:ListItem>
	<asp:ListItem Value="ME">Maine</asp:ListItem>
	<asp:ListItem Value="MD">Maryland</asp:ListItem>
	<asp:ListItem Value="MA">Massachusetts</asp:ListItem>
	<asp:ListItem Value="MI">Michigan</asp:ListItem>
	<asp:ListItem Value="MN">Minnesota</asp:ListItem>
	<asp:ListItem Value="MS">Mississippi</asp:ListItem>
	<asp:ListItem Value="MO">Missouri</asp:ListItem>
	<asp:ListItem Value="MT">Montana</asp:ListItem>
	<asp:ListItem Value="NE">Nebraska</asp:ListItem>
	<asp:ListItem Value="NV">Nevada</asp:ListItem>
	<asp:ListItem Value="NH">New Hampshire</asp:ListItem>
	<asp:ListItem Value="NJ">New Jersey</asp:ListItem>
	<asp:ListItem Value="NM">New Mexico</asp:ListItem>
	<asp:ListItem Value="NY">New York</asp:ListItem>
	<asp:ListItem Value="NC">North Carolina</asp:ListItem>
	<asp:ListItem Value="ND">North Dakota</asp:ListItem>
	<asp:ListItem Value="OH">Ohio</asp:ListItem>
	<asp:ListItem Value="OK">Oklahoma</asp:ListItem>
	<asp:ListItem Value="OR">Oregon</asp:ListItem>
	<asp:ListItem Value="PA">Pennsylvania</asp:ListItem>
	<asp:ListItem Value="RI">Rhode Island</asp:ListItem>
	<asp:ListItem Value="SC">South Carolina</asp:ListItem>
	<asp:ListItem Value="SD">South Dakota</asp:ListItem>
	<asp:ListItem Value="TN">Tennessee</asp:ListItem>
	<asp:ListItem Value="TX">Texas</asp:ListItem>
	<asp:ListItem Value="UT">Utah</asp:ListItem>
	<asp:ListItem Value="VT">Vermont</asp:ListItem>
	<asp:ListItem Value="VA">Virginia</asp:ListItem>
	<asp:ListItem Value="WA">Washington</asp:ListItem>
	<asp:ListItem Value="WV">West Virginia</asp:ListItem>
	<asp:ListItem Value="WI">Wisconsin</asp:ListItem>
	<asp:ListItem Value="WY">Wyoming</asp:ListItem>
</asp:DropDownList>
                </div>
        </div>
          <div class="form-group">
            <asp:Label runat="server" AssociatedControlID="tbPin" CssClass="col-md-2 control-label">Pin</asp:Label>
            <div class="col-md-10">
                <asp:TextBox runat="server" ID="tbPin" TextMode="SingleLine" CssClass="form-control" />
                <asp:RequiredFieldValidator runat="server" ControlToValidate="tbPin"
                    CssClass="text-danger" Display="Dynamic" ErrorMessage="The Pin field is required." /> 
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" CssClass="text-danger" ControlToValidate="tbPin" ErrorMessage="Invalid Pin.Enter in Numbers" ValidationExpression="\d+"></asp:RegularExpressionValidator>
            </div>
        </div>
        <div class="form-group">
            <asp:Label runat="server" AssociatedControlID="tbPhone" CssClass="col-md-2 control-label">Phone</asp:Label>
            <div class="col-md-10">
                <asp:TextBox runat="server" ID="tbPhone" TextMode="Phone" CssClass="form-control" />
                <asp:RequiredFieldValidator runat="server" ControlToValidate="tbPhone"
                    CssClass="text-danger" ErrorMessage="The phone number field is required." />
                <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" CssClass="text-danger" ControlToValidate="tbPhone" ErrorMessage="Invalid Pin.Enter in Numbers" ValidationExpression="\d+"></asp:RegularExpressionValidator>
            </div>
        </div>
    </div></div>
        
            <div class="form-group" style="width:100%">
                <div style="float:left;overflow:hidden;width:10%">
                <asp:Label runat="server" AssociatedControlID="chbxSkills" CssClass="col-md-2 control-label">Skills</asp:Label></div>
           <div style="width: 200px; height: 200px; float: left;">
                <%--<asp:CheckBoxList ID="chbxSkills" runat="server" DataSourceID="ScaleupDataSource" DataTextField="skill_name" DataValueField="skill_id"></asp:CheckBoxList>
                <asp:SqlDataSource ID="ScaleupDataSource" runat="server" ConnectionString="<%$ ConnectionStrings:ScaleupConnectionString %>" SelectCommand="SELECT [skill_id], [skill_name] FROM [Skills] ORDER BY [skill_name]"></asp:SqlDataSource>--%>
               
           </div>
                <br />
                <asp:CustomValidator ID="CustomValidator1" ErrorMessage="Please select at least one skill." ForeColor="Red" ClientValidationFunction="ValidateCheckBoxList" runat="server" />
<br />
                    </div>
                     <%--<div style="float:left;overflow:hidden;width:40%"><asp:Button ID="btnModalPopup" runat="server" Text="Add Skill" CssClass="btn btn-default"/>   
              </div> --%>
           
      
            <div class="form-group">
            <div class="col-md-offset-2 col-md-10">
                <asp:Button runat="server" OnClick="CreateUser_Click" Text="Register" CssClass="btn btn-default" ID="btnRegister" />
            </div>
        </div>
            <div id="modal_dialog" style="display: none;" >
                
            </div>
       <%-- </div>
<%--    </div>--%>
</asp:Content>
