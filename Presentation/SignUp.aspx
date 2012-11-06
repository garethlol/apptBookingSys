<%@ Page Title="" Language="C#" MasterPageFile="~/ABS.Master" AutoEventWireup="true" CodeBehind="SignUp.aspx.cs" Inherits="ABS_1.SignUp" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <script type="text/javascript"></script>

</asp:Content>



<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <p class="header">Sign Up</p>
          <p>If you do not have an account with us, please sign up for an account.</p>
        <asp:Wizard ID="Wizard1" runat="server" ActiveStepIndex="0" BackColor="#F7F6F3" 
            BorderColor="#CCCCCC" BorderStyle="Solid" BorderWidth="1px" 
            Font-Names="Verdana" Font-Size="0.8em" Height="147px" Width="476px" 
        onfinishbuttonclick="Wizard1_FinishButtonClick1">
            <HeaderStyle BackColor="#5D7B9D" BorderStyle="Solid" Font-Bold="True" 
                Font-Size="0.9em" ForeColor="White" HorizontalAlign="Left" />
            <NavigationButtonStyle BackColor="#FFFBFF" BorderColor="#CCCCCC" 
                BorderStyle="Solid" BorderWidth="1px" Font-Names="Verdana" Font-Size="0.8em" 
                ForeColor="#284775" />
            <SideBarButtonStyle BorderWidth="0px" Font-Names="Verdana" ForeColor="White" />
            <SideBarStyle BackColor="#7C6F57" BorderWidth="0px" Font-Size="0.9em" 
                VerticalAlign="Top" />
            <StepStyle BorderWidth="0px" ForeColor="#5D7B9D" />
            <WizardSteps>
                <asp:WizardStep runat="server" title="Peronal Information">
                    Full Name:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:TextBox ID="txtName" runat="server"></asp:TextBox>
                    <br />
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                        ControlToValidate="txtName" ErrorMessage="* Please enter your full name" 
                        style="font-weight: 700; color: #CC0000"></asp:RequiredFieldValidator>
                    <br />
                    <br />
                    Email Address:&nbsp;&nbsp;&nbsp;
                    <asp:TextBox ID="txtEmail" runat="server"></asp:TextBox>
                    <br />
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                        ErrorMessage="* Please enter your email address" 
                        style="font-weight: 700; color: #CC0000" ControlToValidate="txtEmail"></asp:RequiredFieldValidator>
                    <br />
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                        ErrorMessage="* Please enter a proper email address" 
                        style="font-weight: 700; color: #CC0000" ControlToValidate="txtEmail" 
                        ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                    <br />
                    <br />
                </asp:WizardStep>
                <asp:WizardStep runat="server" title="Account Information" StepType="Finish">
                    UserName:&nbsp;&nbsp;&nbsp;
                    <asp:TextBox ID="txtUsername" runat="server"></asp:TextBox>
                    <br />
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                        ControlToValidate="txtUsername" ErrorMessage="* Please enter a username" 
                        ForeColor="#CC0000" style="font-weight: 700"></asp:RequiredFieldValidator>
                    <br />
                    <br />
                    Password:&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:TextBox ID="txtPassword" runat="server" TextMode="Password"></asp:TextBox>
                    <br />
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                         ControlToValidate="txtPassword" ErrorMessage="* Please enter a password" ForeColor="#CC0000" 
                        style="font-weight: 700"></asp:RequiredFieldValidator>
                </asp:WizardStep>
                <asp:WizardStep runat="server" StepType="Complete" Title="Finish" ID="Step2">
                
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Your account has been created! You may<br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
                    now log in using your provided credentials.
                </asp:WizardStep>
            </WizardSteps>
        </asp:Wizard>


    </asp:Content>
