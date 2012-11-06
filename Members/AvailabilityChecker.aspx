<%@ Page Title="" Language="C#" MasterPageFile="~/Members.Master" AutoEventWireup="true" CodeBehind="AvailabilityChecker.aspx.cs" Inherits="ABS_1.Members.AvailabilityChecker" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .style1
        {
            font-size: xx-large;
        }
        .style2
        {
            font-size: large;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <p class="header">
                    Availability Checker</p>
    <p>
                    You can use the Availability Checker to see if your favourite Conference Room is 
                    available at the date of your choice.
                </p>
    <p>
                    Click the Calander icon below and select the date you want for your appointment. 
                    You&#39;ll see a list with all the Conference Rooms and an indication of their 
                    availability.
                </p>
    <p>
                    When the Conference Room is available, you can make an appointment directly by 
                    clicking &quot;Book&quot;..</p>
    <p>
        <asp:Calendar ID="Calendar1" runat="server" BackColor="White" 
                        BorderColor="Black" BorderStyle="Solid" CellSpacing="1" Font-Names="Verdana" 
                        Font-Size="9pt" ForeColor="Black" Height="71px" NextPrevFormat="ShortMonth" 
                        Width="28px" onselectionchanged="Calendar1_SelectionChanged">
            <DayHeaderStyle Font-Bold="True" Font-Size="8pt" ForeColor="#333333" 
                            Height="8pt" />
            <DayStyle BackColor="#CCCCCC" />
            <NextPrevStyle Font-Bold="True" Font-Size="8pt" ForeColor="White" />
            <OtherMonthDayStyle ForeColor="#999999" />
            <SelectedDayStyle BackColor="#333399" ForeColor="White" />
            <TitleStyle BackColor="#333399" BorderStyle="Solid" Font-Bold="True" 
                            Font-Size="12pt" ForeColor="White" Height="12pt" />
            <TodayDayStyle BackColor="#999999" ForeColor="White" />
        </asp:Calendar>
                    You have selected:
                    <asp:Label ID="CalLabel" runat="server" Text="Label" 
            Font-Bold="True"></asp:Label>
    &nbsp;.Click the calander above to select a different date</p>
    <p>
                    &nbsp;</p>
  
           <div style="height: 493px; width: 573px; float: left; margin-bottom: 0px;">
               <strong><span class="style2">All Bookings</span></strong><br />
               <asp:GridView ID="GridView3" runat="server" CellPadding="4" 
                   DataSourceID="ObjectDataSource3" ForeColor="#333333" GridLines="None">
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
               <asp:ObjectDataSource ID="ObjectDataSource3" runat="server" 
                   SelectMethod="GetBookings" TypeName="ABS_1.DbConnect.Users">
               </asp:ObjectDataSource>
               <br />
               <strong><span class="style2">Bookings on selected Date</span></strong><br />
               <br />
               <asp:GridView ID="GridView2" runat="server" CellPadding="4" 
                   DataSourceID="ObjectDataSource2" ForeColor="#333333" GridLines="None">
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
               <br />
               <asp:ObjectDataSource ID="ObjectDataSource2" runat="server" 
                   SelectMethod="getRoomBooking" TypeName="ABS_1.DbConnect.Users">
                   <SelectParameters>
                       <asp:ControlParameter ControlID="Calendar1" 
                           DefaultValue="2012-01-01 00:00:00.000" Name="startDate" 
                           PropertyName="SelectedDate" Type="DateTime" />
                   </SelectParameters>
               </asp:ObjectDataSource>
        </div>

</asp:Content>
