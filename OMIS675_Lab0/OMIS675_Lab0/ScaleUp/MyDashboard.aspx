<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="MyDashboard.aspx.cs" Inherits="OMIS675_Lab0.ScaleUp.MyDashboard" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <style>
    .selectbox
    {
        width: 98%;
        height: 40px;
        background-color: #FFF;
        font: 400 12px/18px ;
        color: #000;
        font-weight: normal;
        border: 1px solid #ccc;
        margin: 5px 0 0 0;
        padding: 5px;
    }
</style>
        <script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.7.2/jquery.min.js"></script>
<script src="http://ajax.aspnetcdn.com/ajax/jquery.ui/1.8.9/jquery-ui.js" type="text/javascript"></script>
    <link href="../Content/jquery12345.css" rel="stylesheet" />
<script type="text/javascript">
    $("[id*=btnModalPopup]").live("click", function () {
        $("#modal_dialog").dialog({
            title: "Add New Skill",
            resizable: false,
            height: 500,
            width: 500,
            modal: true
        });
        return false;
    });
</script>
<p class="text-danger">
    <br />
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
                <div>
                    <asp:Literal runat="server" ID="WelcomeNote" />
                </div>
                <br />
                <div style="float: left; overflow: hidden; width: 100%">
                    <asp:Label runat="server">User Skills</asp:Label><br /><br />
                </div>
                
                <div>
                    <div style="width: 30%; float: left; overflow: hidden;"></div>
                    <div style="width: 100%; overflow: hidden; padding-left: 100px; float: right;">
                        <asp:ListBox ID="ListBox1" runat="server" DataSourceID="skills" DataTextField="skill_name" DataValueField="skill_id" Height="181px"></asp:ListBox>
                        
                    </div>
                </div>
                <div style="padding-top: 230px; padding-left: 85px;">
                    <br />
                    <br />
                <asp:Button ID="Button1" runat="server" Text="Add/Edit Skills" CssClass="btn btn-default" OnClick="Button1_Click" Height="42px" Width="139px"  /><asp:SqlDataSource ID="skills" runat="server" ConnectionString="<%$ ConnectionStrings:ScaleupConnectionString %>"></asp:SqlDataSource>
                    </div>
            </div>
            <div style="width: 51%; overflow: hidden; padding-top: 45px; float: left;">
              <div style="float: left; overflow: hidden;width:120px">User Dashboard: </div>
                <div  style="float: left; overflow: hidden;width:70%"><br /><br />
                    <asp:Button ID="createAssessment" runat="server" Text="Create New Assessment"  CssClass="btn btn-default" Width="219px" OnClick="createAssessment_Click" /><br /><br /></div>     

                <%--<asp:GridView ID="GridView1" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" runat="server">
                    <Columns>
                        <asp:CommandField HeaderText="Select" ShowHeader="True" ShowSelectButton="True" />
                    </Columns>
                </asp:GridView>--%>
                
                <div style="float: left; overflow: hidden;width: 362px">
                    <div>
                        <br /><br />
                        <asp:Label ID="Label1" runat="server" Text="Label">Select an Assessment:</asp:Label><br /></div>
                    <div><div style="float: left; overflow: hidden;width: 128px"></div>
                    <div style="width: 70%; overflow: hidden; padding-left: 60px; float: left;">
                        <br /><asp:DropDownList ID="assessmentDropDown" runat="server" CssClass="selectbox" OnSelectedIndexChanged="assessmentDropDown_SelectedIndexChanged">
                            <asp:ListItem Value="0">Select</asp:ListItem>
                        </asp:DropDownList></div>
                                   <div style="width: 100px; overflow: hidden; padding-left: 20px; float: left;">
                        <br /><asp:Button ID="Button2" runat="server" Text="Go" OnClick="Button2_Click" Width="63px" CssClass="btn btn-default" /></div>
                    </div> </div>
                   
            </div>
        </div>
        
   
            <%--<div class="col-md-8" style="width:80%">
            
            <div style="float: left; overflow: hidden;width:50%" >    
            </div> <div style="float: left; overflow: hidden;width:50%" >    
                <asp:Panel ID="AssessmentPanel" Visible="false" runat="server">
                    <asp:Button ID="Button2" runat="server" Text="Take Assessment" OnClick="Button2_Click" />
                </asp:Panel>
                <asp:Panel ID="ResultPanel" Visible="false" runat="server">
                    <asp:Label ID="Label4" runat="server" Text="Your Assessment Result:"></asp:Label>
                    <asp:Label ID="Label5" runat="server" Text="Assessment Name:"></asp:Label>
                    <asp:Label ID="Label6" runat="server" Text="Attempted Questions:"></asp:Label>
                    <asp:Label ID="Label7" runat="server" Text="Result:"></asp:Label>
                </asp:Panel>
            </div>
            </div>--%>
        </div>
</asp:Content>
