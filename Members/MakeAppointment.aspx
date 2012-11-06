<%@ Page Title="" Language="C#" MasterPageFile="~/Members.Master" AutoEventWireup="true" CodeBehind="MakeAppointment.aspx.cs" Inherits="ABS_1.Members.MakeAppointment" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <p class="header">
                    Make Appointment</p>
    <p>
                   Welcome to the make appointment page.
                </p>
    <p>
                    There is a wizard that will guide you through the process of making an appointment.
                </p>
    <p>
                    <asp:Wizard ID="Wizard1" runat="server" ActiveStepIndex="3" Height="121px" 
                        Width="413px">
                        <WizardSteps>
                            <asp:WizardStep runat="server" title="Introduction">
                                <strong>Conference Room Selection Wizard<br /> </strong>
                                <br />
                                Welcome to the Conference Room Selection Wizard. The wizard will guide you 
                                through the process of making an appointment. Click Next to continue
                            </asp:WizardStep>
                            <asp:WizardStep runat="server" title="Select a Conference Room">
                                <strong>Select Conference Room to book</strong><br />
                                <asp:RadioButtonList ID="RadioButtonList1" runat="server" Height="76px" 
                                    Width="125px">
                                    <asp:ListItem>Room 1</asp:ListItem>
                                    <asp:ListItem>Room 2</asp:ListItem>
                                    <asp:ListItem>Room 3</asp:ListItem>
                                </asp:RadioButtonList>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                                    ControlToValidate="RadioButtonList1" 
                                    ErrorMessage="Please select a room to book"></asp:RequiredFieldValidator>
                            </asp:WizardStep>
                            <asp:WizardStep runat="server" Title="Select Date">
                                Select the date for the conference to be booked<br />
                                <asp:Calendar ID="Calendar1" runat="server" BackColor="White" 
                                    BorderColor="Black" BorderStyle="Solid" CellSpacing="1" Font-Names="Verdana" 
                                    Font-Size="9pt" ForeColor="Black" Height="192px" NextPrevFormat="ShortMonth" 
                                    OnSelectionChanged="Calendar1_SelectionChanged" Width="201px">
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
                                <br />
                            </asp:WizardStep>
                            <asp:WizardStep runat="server" Title="Select Time">
                                Select the time on the day
                                <asp:Label ID="CalLabel" runat="server" Text="Label"></asp:Label>
                                &nbsp;where you would like your appointment to be held
                            </asp:WizardStep>
                            <asp:WizardStep runat="server" Title="Review Your Request">
                            </asp:WizardStep>
                        </WizardSteps>
                    </asp:Wizard>
                </p>


</asp:Content>
