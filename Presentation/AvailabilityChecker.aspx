<%@ Page Title="" Language="C#" MasterPageFile="~/ABS.Master" AutoEventWireup="true" CodeBehind="AvailabilityChecker.aspx.cs" Inherits="ABS_1.Presentation.AvailabilityChecker" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .style1
        {
            width: 536px;
        }
        .style4
        {
            width: 561px;
            height: 26px;
        }
        .style5
        {
            width: 162px;
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
                    <asp:Label ID="CalLabel" runat="server" Text="Label" Font-Bold="True"></asp:Label>
    &nbsp;.Click the calander above to select a different date</p>
    <p>
                    &nbsp;</p>
        <div style="height: 79px; width: 576px; float: left; margin-bottom: 0px;">
            <table class="style4">
                <tr>
                    <td class="style5">
                        <strong>Booking Times</strong></td>
                        <td class="style5">
                            Conf.
                        Room 1 - East</td>
                        <td class="style5">
                            Conf.
                        Room 2 - West</td>
                         <td class="style5">
                             Conf.
                        Room 3 - Central</td>
                </tr>
                
            </table>
        </div>
                 </asp:Content>
