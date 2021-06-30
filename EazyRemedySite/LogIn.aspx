<%@ Page Title="" Language="C#" MasterPageFile="~/EazyRemedy.Master" AutoEventWireup="true" CodeBehind="LogIn.aspx.cs" Inherits="EazyRemedySite.LogIn" %>

<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" runat="server">
      <!--Page Title-->
    <section class="page-title" style="background-image:url(images/background/3.jpg)">
    	<div class="auto-container">
        	<h2>Log In</h2>
            <ul class="page-breadcrumb">
            	<%--<li><a runat="server" href="~/Home.aspx">home</a></li>--%>
                <li>Log In</li>
            </ul>
            <br />
            <br />
        </div>
      </section>
        <div class ="default-form" >
         <form id="form1" runat="server">
             <div>
                 <br />
                 <br />
              <asp:TextBox ID="txtUsername" runat="server" placeholder="Username / email address*"></asp:TextBox>
          </div>
             <div>
                 <br />
                 <asp:TextBox ID="txtPassword" runat="server" TextMode="Password" placeholder="Password*"></asp:TextBox>
                 <br />
             </div>
             <br />
             <div>
                 <asp:Label ID="lblMessage" runat="server" ForeColor="Red" Visible="false">Log in falied: Invalid Username or Password</asp:Label>
             </div>
             <div>
                 <asp:Button ID="btnLogIn" CssClass="theme-btn btn-style-one" Text="Log In" runat="server" OnClick="btnLogIn_Click" />
             </div>
             <br />
         </form>
        </div>
      
</asp:Content>
