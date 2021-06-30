<%@ Page Title="" Language="C#" MasterPageFile="~/EazyRemedy.Master" AutoEventWireup="true" CodeBehind="Schedule.aspx.cs" Inherits="EazyRemedySite.Schedule" %>

<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" runat="server">
     <section class="page-title" style="background-image:url(images/background/3.jpg)">
    	<div class="auto-container">
        	<h2>View Schedule</h2>
            <ul class="page-breadcrumb">
            	<li><a runat="server" href="~/Home.aspx">home</a></li>
                <li>View Schedule</li>
            </ul>
            <br />
            <br />
        </div>
      </section>
      <br />
       <section class="table">
           <form id="form1" runat="server">
                <div class="table-responsive">
             <asp:Label runat="server" Font-Bold="true" Text="Bookings for: "></asp:Label>&nbsp;&nbsp;<asp:Label ID="lblUser" Font-Bold="true" runat="server"></asp:Label>
            <br />
            <asp:Label ID="lblID" runat="server" Font-Bold="true"></asp:Label>
            <br />
             <br />
             <h2 class="centered">Bookings Table</h2>
              <br />
              <asp:Table ID="tblBookings" CssClass="table" runat="server">
                  <asp:TableHeaderRow>
                      <asp:TableHeaderCell>Duration</asp:TableHeaderCell>
                      <asp:TableHeaderCell>Date</asp:TableHeaderCell>
                      <asp:TableHeaderCell>Time</asp:TableHeaderCell>
                      <asp:TableHeaderCell>Care Recipient</asp:TableHeaderCell>
                      <asp:TableHeaderCell>Activity Type</asp:TableHeaderCell>
                      <asp:TableHeaderCell>Activity Description</asp:TableHeaderCell>
                      <asp:TableHeaderCell>Address</asp:TableHeaderCell>
                  </asp:TableHeaderRow>
              </asp:Table>
             </div>
           </form>
       </section> 
</asp:Content>
