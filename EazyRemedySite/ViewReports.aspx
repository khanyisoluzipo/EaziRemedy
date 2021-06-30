<%@ Page Title="" Language="C#" MasterPageFile="~/EazyRemedy.Master" AutoEventWireup="true" CodeBehind="ViewReports.aspx.cs" Inherits="EazyRemedySite.ViewReports" %>

<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" runat="server">
    <section class="page-title" style="background-image:url(images/background/3.jpg)">
    	<div class="auto-container">
        	<h2>View Reports</h2>
            <ul class="page-breadcrumb">
            	<li><a runat="server" href="~/Index.aspx">home</a></li>
                <li>View Reports</li>
            </ul>
            <br />
            <br />
        </div>
      </section>
      <br />
      <section class="table">
          <form id="form1" runat="server">
              <div class="table-responsive">
                  <asp:Label Font-Bold="true" runat="server" Text="Reports made by: "></asp:Label>&nbsp;&nbsp;<asp:Label ID="lblID" Font-Bold="true" runat="server"></asp:Label>
                  <br />
                  <h3 class="centered">Reports Table</h3>
                  <br />
                  <asp:Table ID="tbReports" CssClass="table" runat="server">
                      <asp:TableHeaderRow>
                          <asp:TableHeaderCell>SessionID</asp:TableHeaderCell>
                          <asp:TableHeaderCell>Care Recipient</asp:TableHeaderCell>
                          <asp:TableHeaderCell>Date</asp:TableHeaderCell>
                          <asp:TableHeaderCell>Activity Type</asp:TableHeaderCell>
                          <asp:TableHeaderCell>Hours Worked</asp:TableHeaderCell>
                          <asp:TableHeaderCell>Notes</asp:TableHeaderCell>
                      </asp:TableHeaderRow>
                  </asp:Table>
              </div>
          </form>
      </section>
</asp:Content>
