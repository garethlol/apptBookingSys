<%@ Page Title="" Language="C#" MasterPageFile="~/ABS.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="ABS_1.Presentation.Login" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <p class="header">Login</p>
          <p>Please log in with your credentials
              <asp:LoginView ID="LoginView1" runat="server">
                  <AnonymousTemplate>
                      
                  </AnonymousTemplate>
                  <LoggedInTemplate>
                      
                  </LoggedInTemplate>
              </asp:LoginView>
    </p>

            <table>
   <tr>
      <td>Username:</td>
      <td><input id="txtUserName" type="text" runat="server" /></td>
      <td><ASP:RequiredFieldValidator ControlToValidate="txtUserName"
           Display="Static" ErrorMessage="*" runat="server" 
           ID="vUserName" /></td>
   </tr>
   <tr>
      <td>Password:</td>
      <td><input id="txtUserPass" type="password" runat="server" /></td>
      <td><ASP:RequiredFieldValidator ControlToValidate="txtUserPass"
          Display="Static" ErrorMessage="*" runat="server" 
          ID="vUserPass" />
      </td>
   </tr>
   <tr>
      <td>&nbsp;</td>
      <td>&nbsp;</td>
      <td></td>
   </tr>
</table>
<input type="submit" value="Logon" runat="server" ID="cmdLogin" /><p>
<asp:Label id="lblMsg" ForeColor="red" Font-Name="Verdana" Font-Size="10" runat="server" /></p>
</asp:Content>
