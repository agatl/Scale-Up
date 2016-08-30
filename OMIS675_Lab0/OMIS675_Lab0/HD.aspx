<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="HD.aspx.cs" Inherits="OMIS675_Lab0.MyITHelpDesk.HD" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <table class="nav-justified" style="width: 98%; background-color: #C0C0C0;">
       <tr>
            <td colspan="3">
                <asp:SqlDataSource ID="SqlOS" runat="server" ConnectionString="<%$ ConnectionStrings:ScaleupConnectionString %>" SelectCommand="SELECT [Name] FROM [OS]"></asp:SqlDataSource>
            </td>
           <td><asp:SqlDataSource ID="SqlFF" runat="server" ConnectionString="<%$ ConnectionStrings:ScaleupConnectionString %>" SelectCommand="SELECT [Name] FROM [FormFactor]"></asp:SqlDataSource></td>
       </tr> <tr>
            <td colspan="3">
                <br />
                <asp:Label ID="Label1" runat="server" CssClass="h1" Text="My IT Help Desk"></asp:Label>
                <asp:Image ID="Image1" runat="server" Height="50px" ImageUrl="~/MyITHelpDesk/download.jpg" Width="44px" />
            </td>
        </tr>
        <tr>
            <td style="width: 28%">
                <asp:Label ID="Label2" runat="server" CssClass="h3" Text="User Information"></asp:Label>
            </td>
            <td style="width: 377px">
                <asp:Label ID="Label3" runat="server" CssClass="h3" Text="System Information"></asp:Label>
            </td>
            <td style="width: 30%">
                <asp:Label ID="Label4" runat="server" CssClass="h3" Text="Problem Information"></asp:Label>
            </td>
        </tr>
        <tr>
            <td style="width: 28%">
                <table class="nav-justified" style="background-color: #C0C0C0">
                    <tr>
                        <td style="width: 122px">
                            <asp:Label ID="Label5" runat="server" Text="First Name"></asp:Label>
                        </td>
                        <td>
                            <asp:TextBox ID="tbUserFirst" runat="server"></asp:TextBox>
                           <br /> <b style="color:red"><asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ErrorMessage="Enter First Name" ControlToValidate="tbUserFirst"></asp:RequiredFieldValidator>
                       </b> </td>
                    </tr>
                    <tr>
                        <td style="width: 122px">
                            <asp:Label ID="Label6" runat="server" Text="Last Name"></asp:Label>
                        </td>
                        <td>
                            <asp:TextBox ID="tbUserLast" runat="server" OnTextChanged="tbUserLast_TextChanged"></asp:TextBox>
                            <br /> <b style="color:red"><asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ErrorMessage="Enter Last Name" ControlToValidate="tbUserLast"></asp:RequiredFieldValidator>
                        </b></td>
                    </tr>
                    <tr>
                        <td style="width: 122px">
                            <asp:Label ID="tbUserPhone" runat="server" Text="Phone" style="vertical-align:25px; position : relative"></asp:Label>
                        </td>
                        <td>
                            <asp:TextBox ID="tbUserPhon" runat="server" ></asp:TextBox>
                            <br /> <b style="color:red"><asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="tbUserPhon" ErrorMessage="Enter Here"></asp:RequiredFieldValidator>
                           </b><br /><b style="color:red"> <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="tbUserPhon" ErrorMessage="Enter only in Numbers" ValidationExpression="\d+"></asp:RegularExpressionValidator>
                        </b></td>
                    </tr>
                    <tr>
                        <td style="width: 122px">
                            <asp:Label ID="Label8" runat="server" Text="Email" style="vertical-align:40px;position: relative"></asp:Label>
                        </td>
                        <td>
                            <asp:TextBox ID="tbUserEmail" runat="server"></asp:TextBox>
                           <br /> <b style="color:red"><asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="tbUserEmail" ErrorMessage="Incorrect Email Format" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                            <br /><asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="tbUserEmail" ErrorMessage="Enter Email Address"></asp:RequiredFieldValidator></b>
                        </td>
                    </tr>
                </table>
            </td>
            <td style="width: 377px">
                <table class="nav-justified" style="background-color: #C0C0C0">
                    <tr>
                        <td class="modal-sm" style="width: 164px">
                            <asp:Label ID="Label9" runat="server" Text="System Name"></asp:Label>
                        </td>
                        <td>
                            <asp:TextBox ID="tbSysName" style="width: 182px" runat="server"></asp:TextBox>
                           <br /> <b style="color:red"> <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Enter System Name" ControlToValidate="tbSysName"></asp:RequiredFieldValidator>
                        </b></td>
                    </tr>
                    <tr>
                        <td class="modal-sm" style="width: 164px">
                            <asp:Label ID="Label10" runat="server" Text="IP Address"></asp:Label>
                        </td>
                        <td>
                            <asp:TextBox ID="tbIP" style="width: 182px" runat="server"></asp:TextBox>
                           <br /> <b style="color:red"> <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="Enter IP Address" ControlToValidate="tbIP"></asp:RequiredFieldValidator>
                        </b></td>
                    </tr>
                    <tr>
                        <td class="modal-sm" style="width: 164px">
                            <asp:Label ID="Label11" runat="server" Text="Operating System"></asp:Label>
                        </td>
                        <td>
                            <asp:DropDownList ID="ddOS" runat="server" DataSourceID="SqlOS" DataTextField="Name" DataValueField="Name">
                                <asp:ListItem>Windows XP</asp:ListItem>
                                <asp:ListItem>Windows 7</asp:ListItem>
                                <asp:ListItem>Windows 8</asp:ListItem>
                                <asp:ListItem>Mac OSX Snow Leopard</asp:ListItem>
                                <asp:ListItem>Mac OSX Mavericks</asp:ListItem>
                                <asp:ListItem>Linux Ubuntu</asp:ListItem>
                            </asp:DropDownList>
                        </td>
                    </tr>
                    <tr>
                        <td class="modal-sm" style="width: 164px">
                            <asp:Label ID="Label12" runat="server" Text="Form Factor"></asp:Label>
                        </td>
                        <td style="width:120px">
                            <asp:RadioButtonList ID="rbFF" runat="server" RepeatDirection="Horizontal" AutoPostBack="True" DataSourceID="SqlFF" DataTextField="Name" DataValueField="Name">
                                <asp:ListItem Selected="True">Desktop</asp:ListItem>
                                <asp:ListItem>Laptop</asp:ListItem>
                                <asp:ListItem>Tablet</asp:ListItem>
                            </asp:RadioButtonList>
                           <br /><b style="color:red"> <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="rbFF" ErrorMessage="Select a Form Factor"></asp:RequiredFieldValidator></b>
                        </td>
                    </tr>
                </table>
            </td>
            <td style="width: 30%">
                <table class="nav-justified" style="background-color: #C0C0C0">
                    <tr>
                        <td style="width: 169px">
                            <asp:Label ID="Label13" runat="server" Text="Problem Description"></asp:Label>
                        </td>
                        <td>
                            <asp:TextBox ID="tbProblem" runat="server" Width="300px" Height="100px" TextMode="MultiLine"></asp:TextBox>
                            <br /> <b style="color:red"><asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage="Enter Problem Description" ControlToValidate="tbProblem"></asp:RequiredFieldValidator>
                        </b></td>
                    </tr>
                    <tr>
                        <td style="width: 169px">
                            <asp:Label ID="Label14" runat="server" Text="Priority"></asp:Label>
                        </td>
                        <td>
                            <asp:RadioButtonList ID="rbPriority" runat="server" RepeatDirection="Horizontal">
                                <asp:ListItem>4 Hr</asp:ListItem>
                                <asp:ListItem>8 Hr</asp:ListItem>
                                <asp:ListItem Selected="True">24 Hr</asp:ListItem>
                                <asp:ListItem>Select</asp:ListItem>
                            </asp:RadioButtonList>
                        </td>
                        <td style="width: 10%">&nbsp;&nbsp;&nbsp;</td>
                    </tr>
                </table>
            </td>
        </tr>
        <tr>
            <td class="text-center" colspan="3">
                <asp:Button ID="btnCreate" runat="server" CssClass="btn-warning active" Text="Create Ticket" OnClick="btnCreate_Click" />
            </td>
        </tr>
        <tr>
            <td class="text-center" colspan="3">
                <asp:TextBox ID="tbTicket" runat="server" Width="95%" Height="300px" TextMode="MultiLine" Visible="False"></asp:TextBox>
            </td>
        </tr>
    </table>
</asp:Content>
