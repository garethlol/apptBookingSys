<%@ Page Title="" Language="C#" MasterPageFile="~/Members.Master" AutoEventWireup="true" CodeBehind="Index_Members.aspx.cs" Inherits="ABS_1.Members.Index_Members" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <p>
        <asp:LoginView ID="LoginView2" runat="server">
            <AnonymousTemplate>
                You are not logged in, please log in <asp:HyperLink ID="HyperLink1" 
                    runat="server" NavigateUrl="~/Presentation/Login.aspx">HERE</asp:HyperLink>
                &nbsp; 
            </AnonymousTemplate>
            <LoggedInTemplate>
                Welcome,
                <asp:LoginName ID="LoginName1" runat="server" />
            </LoggedInTemplate>
        </asp:LoginView>
    </p>
    <p>
        &nbsp;</p>
    <p>
        &nbsp;</p>
</asp:Content>
