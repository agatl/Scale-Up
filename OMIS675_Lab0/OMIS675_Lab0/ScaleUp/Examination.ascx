<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="Examination.ascx.cs" Inherits="OMIS675_Lab0.ScaleUp.Examination" %>
<div>
                    
<div>
<%--<asp:ScriptManager ID= "SM1" runat="server"></asp:ScriptManager>--%>
<asp:Timer ID="timer1" runat="server"
Interval="1000" OnTick="timer1_tick"></asp:Timer>
</div>
 
    <div style="margin-left:15%">
        <asp:UpdatePanel ID="updPnl"
            runat="server" UpdateMode="Conditional">
            <ContentTemplate>
                <%--<asp:Label ID="Label2" runat="server" Font-Bold="True"
                    Font-Size="X-Large" Text="Time Remaining: "></asp:Label>--%>
                <asp:Label ID="lblTimer" runat="server" Font-Bold="True"
                    Font-Size="X-Large"></asp:Label>
            </ContentTemplate>
            <Triggers>
                <asp:AsyncPostBackTrigger ControlID="timer1" EventName="tick" />
            </Triggers>
        </asp:UpdatePanel>
    </div>
    <div style="float:left;overflow:hidden;width:20%"></div><div style="overflow-y:scroll;height:500px">
    <asp:GridView ShowHeader="false" ID="GridView1" AutoGenerateColumns="false" runat="server" GridLines="None" Width="736px" style="margin-right: 23px">
    <Columns>
        <asp:TemplateField>
            <ItemTemplate>
                <asp:Label ID="question_id"  Visible="false" runat="server" Text='<%# Eval("question_id") %>'></asp:Label><br />
                <asp:Label ID="question_no"  Visible="true" runat="server" Text='<%# Eval("question_no") %>'></asp:Label> &nbsp;&nbsp;
                 <asp:Label ID="question" runat="server" Text='<%# Eval("question") %>'></asp:Label><br /><br />
              <%-- <input runat="server" type="radio" name="Options" id="O1" value='<%#Eval("option1") %>' /><br />

                <input runat="server" type="radio" name="Options" id="O2" value='<%#Eval("option2") %>' /><br />

                <input runat="server" type="radio" name="Options" id="O3" value='<%#Eval("option3") %>' /><br />

                <input runat="server" type="radio" name="Options" id="O4" value='<%#Eval("option4") %>' /><br />--%>
                
                
                 <asp:RadioButton GroupName="rb" ID="option1" Text='<%# Eval("option1") %>' runat="server"  /><br />
                <asp:RadioButton GroupName="rb" ID="option2" Text='<%# Eval("option2") %>' runat="server" /><br />
                <asp:RadioButton GroupName="rb" ID="option3" Text='<%# Eval("option3") %>' runat="server" /><br />
                <asp:RadioButton GroupName="rb"  ID="option4" Text='<%# Eval("option4") %>' runat="server" /><br />
            </ItemTemplate>
        </asp:TemplateField>
    </Columns>

</asp:GridView>
</div>
 <div>
                <asp:Button ID="submit" runat="server" Text="Submit"  CssClass="btn btn-default" OnClick="submit_Click" /></div>
     <div>
         <asp:Label ID="Label1" runat="server" ></asp:Label></div>
    </div>
