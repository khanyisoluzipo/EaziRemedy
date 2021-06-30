<%@ Page Title="" Language="C#" MasterPageFile="~/EazyRemedy.Master" AutoEventWireup="true" CodeBehind="CaptureReports.aspx.cs" Inherits="EazyRemedySite.CaptureReports" %>

<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" runat="server">
    <section class="page-title" style="background-image:url(images/background/3.jpg)">
    	<div class="auto-container">
        	<h2>Caputre Reports</h2>
            <ul class="page-breadcrumb">
            	<li><a runat="server" href="~/Home.aspx">home</a></li>
                <li>Capture Reports</li>
            </ul>
            <br />
            <br />
        </div>
      </section>
    <div class="form-group">
        <form id="form1" runat="server">
            <div class="form-group">
                <br />
                <br />
                <asp:Label Font-Bold="true" runat="server">Care Worker:</asp:Label>&nbsp&nbsp&nbsp&nbsp&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;<asp:Label ID="lblWorker" Font-Bold="true" runat="server"></asp:Label>
                <br />
                <br />
                <asp:Label Font-Bold="true" runat="server">Patient Name:</asp:Label>&nbsp&nbsp&nbsp&nbsp&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:DropDownList ID="drpRecipient" CssClass="dropdown" runat="server"></asp:DropDownList>
                <br />
                <br />
                <asp:Label Font-Bold="true" runat="server">Date:</asp:Label>&nbsp&nbsp&nbsp&nbsp&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp<input type="date" id="dtDate" class="ui-datepicker-current" runat="server" />
                <br />
                <br />
                <asp:Label Font-Bold="true" runat="server">Care Activity</asp:Label>&nbsp&nbsp&nbsp&nbsp&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:DropDownList ID="drpActivity" CssClass="dropdown" runat="server"></asp:DropDownList>
                <br />
                <br />
                <asp:Label Font-Bold="true" runat="server">Hours Worked:</asp:Label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:TextBox ID="txtHours" BorderStyle="Inset" runat="server"></asp:TextBox>
                <br />
                <br />
                <asp:Label Font-Bold="true" runat="server">Notes:</asp:Label><br />&nbsp&nbsp&nbsp&nbsp&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp; &nbsp<asp:TextBox ID="txtNotes" TextMode="MultiLine" Width="420px" Height="200px" BorderStyle="Inset" runat="server"></asp:TextBox>
                <br />
                <br />
                &nbsp;&nbsp;&nbsp;&nbsp<asp:Button ID="btnReports" Text="Submit Report" runat="server" CssClass="theme-btn btn-style-one" OnClick="btnReports_Click" />
            </div>
        </form>
    </div>
</asp:Content>
