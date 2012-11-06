<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="NaviBar_Member.ascx.cs" Inherits="ABS_1.Members.NaviBar_Member" %>
<p>
    &nbsp;&nbsp; &nbsp;
    <asp:GridView ID="GridView2" runat="server" 
         Height="321px" 
        Font-style="Verdana" ShowHeader="False" ShowFooter="False" 
        AutoGenerateColumns="false" Font-Size="8pt" cellpadding="4"  width="146px" 
        onselectedindexchanged="GridView2_SelectedIndexChanged">
    
	<Columns>
		<asp:HyperLinkField  DataNavigateUrlFields="URL" DataTextField="Text"></asp:HyperLinkField>
	</Columns>

    </asp:GridView>

</p>
<p>
    &nbsp;</p>