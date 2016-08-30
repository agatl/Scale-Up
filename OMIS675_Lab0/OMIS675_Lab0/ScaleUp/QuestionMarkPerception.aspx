<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="QuestionMarkPerception.aspx.cs" Inherits="OMIS675_Lab0.ScaleUp.QuestionMarkPerception" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    
    <div class="form-horizontal">
       
        
        <div style="width:100%;float: left;"><div style="float: left; overflow: hidden; width: 70%"><h2>Scale Up</h2>
        <h4 id="Welcome "></h4>
            <asp:Label ID="Label1" runat="server" >
            </asp:Label>
        <hr /></div>
        <div style="float: left; overflow: hidden; ">
            <br /><asp:Button runat="server" OnClick="Logout_Click" Style="align-content:flex-end" Text="Log Out" CssClass="btn btn-default" />
           </div> </div>
        <br />
            <div id="questionmark" runat="server" style="width: 100%; height: 500px; overflow-y: scroll">
            </div>
            <div>
                <asp:Button ID="Button1" runat="server" Text="Button" OnClick="Button1_Click" />
            </div>
        </div>
</asp:Content>
