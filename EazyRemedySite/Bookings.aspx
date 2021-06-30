<%@ Page Title="" Language="C#" MasterPageFile="~/EazyRemedy.Master" AutoEventWireup="true" CodeBehind="Bookings.aspx.cs" Inherits="EazyRemedySite.Bookings" %>

<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" runat="server">
     <section class="page-title" style="background-image:url(images/background/3.jpg)">
    	<div class="auto-container">
        	<h2>View Bookings</h2>
            <ul class="page-breadcrumb">
            	<li><a runat="server" href="~/Home.aspx">home</a></li>
                <li>View Bookings</li>
            </ul>
            <br />
            <br />
        </div>
      </section>
      <br />  
      <br />  
    <br />
    <form id="form1" runat="server">
        <div class="table-responsive">
            <asp:Panel ID="Panel1" runat="server"></asp:Panel>
      </div>
    </form>
      
</asp:Content>
