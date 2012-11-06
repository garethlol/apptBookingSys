<%@ Page Title="" Language="C#" MasterPageFile="~/ABS.Master" AutoEventWireup="true" CodeBehind="Index.aspx.cs" Inherits="ABS_1.WebForm2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <p class="header">
                    Welcome to the Appointment Booking System!</p>
                <p>
                    This application allows you to quickly book your favourite Conference Room.
                </p>
                 <p>
                    Before you can use this application, you need to have an active account. If you don't have an account
                    yet, you can create one now. Otherwise, you'll be asked to login before you can make the appointment.
                </p>
                <p>
                    Proceed to make an appointment, or look at the Availability Checker to see if your favourite Conference Room is available.
                </p>
     <p>
                    <asp:LoginView ID="LoginView1" runat="server">
                        <AnonymousTemplate>
                           YOU ARE NOT LOGGED IN
                        </AnonymousTemplate>
                        <LoggedInTemplate>
                            YOU ARE LOGGED IN HORRAY BUT WHAT ARE YOU DOING HERE?
                        </LoggedInTemplate>
                    </asp:LoginView>
                </p>
     <p>
                    Total USERS: TESTING ONLY</p>
     <p>
                    <asp:GridView ID="GridView1" runat="server" DataSourceID="ObjectDataSource1" 
                        CellPadding="4" ForeColor="#333333" GridLines="None" 
                        onselectedindexchanged="GridView1_SelectedIndexChanged">
                        <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                        <EditRowStyle BackColor="#999999" />
                        <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                        <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                        <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                        <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
                        <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                        <SortedAscendingCellStyle BackColor="#E9E7E2" />
                        <SortedAscendingHeaderStyle BackColor="#506C8C" />
                        <SortedDescendingCellStyle BackColor="#FFFDF8" />
                        <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
                    </asp:GridView>
                </p>
     <p>
                    <asp:ObjectDataSource ID="ObjectDataSource1" runat="server" 
                        SelectMethod="GetUser" TypeName="ABS_1.DbConnect.Users" 
                        onselecting="ObjectDataSource1_Selecting">
                    </asp:ObjectDataSource>
                </p>

</asp:Content>
