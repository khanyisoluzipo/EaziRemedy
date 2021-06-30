<%@ Page Title="" Language="C#" MasterPageFile="~/EazyRemedy.Master" AutoEventWireup="true" CodeBehind="SessionReport.aspx.cs" Inherits="EazyRemedySite.SessionReport" %>

<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" runat="server">
     <section class="page-title" style="background-image:url(images/background/3.jpg)">
    	<div class="auto-container">
        	<h2>Session Report</h2>
            <ul class="page-breadcrumb">
            	<li><a runat="server" href="~/Index.aspx">home</a></li>
                <li>Session Report</li>
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
              <asp:Label runat="server" Font-Bold="true">Patient Name:</asp:Label>&nbsp&nbsp&nbsp&nbsp&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:DropDownList ID="drpPatient" CssClass="dropdown" runat="server"></asp:DropDownList>
                <br />
                <br />
                <asp:Label runat="server" Font-Bold="true">Date:</asp:Label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="date" id="dtDate" runat="server" />
                <br />
                <br />
                <asp:Label runat="server" Font-Bold="true">Hours Worked</asp:Label>&nbsp&nbsp&nbsp&nbsp&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:TextBox ID="txtHours" runat="server" BorderStyle="Inset" CssClass="mt-0"></asp:TextBox>
                <br />
                <br />
                <asp:Label runat="server" Font-Bold="true">Activity/s:</asp:Label><br />&nbsp&nbsp&nbsp&nbsp&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp<asp:TextBox ID="txtReport" TextMode="MultiLine" Width="414px" BorderStyle="Inset" runat="server" Height="193px" CssClass="mt-0"></asp:TextBox>
                <br />
                <br />
                <asp:Button ID="btnReport" Text="Submit Report" CssClass="theme-btn btn-style-one" runat="server" OnClick="btnReport_Click" />
                <br />
                <br />
            </div>
        </form>
    </div>
</asp:Content>
