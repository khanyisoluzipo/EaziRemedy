<%@ Page Title="" Language="C#" MasterPageFile="~/EazyRemedy.Master" AutoEventWireup="true" CodeBehind="Reports.aspx.cs" Inherits="EazyRemedySite.Reports" %>

<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" runat="server">
    <!DOCTYPE html>
<html>
    <!-- START: Head-->
    
<!-- Mirrored from html.designstream.co.in/liner/html/index.html by HTTrack Website Copier/3.x [XR&CO'2014], Wed, 09 Dec 2020 02:40:46 GMT -->
<head>
        <meta charset="UTF-8"/>
        <title>Liner Admin</title>
        <link rel="shortcut icon" href="dist/images/favicon.ico" />
        <meta name="viewport" content="width=device-width,initial-scale=1"/> 

        <!-- START: Template CSS-->
        <link rel="stylesheet" href="dist/vendors/bootstrap/css/bootstrap.min.css"/>
        <link rel="stylesheet" href="dist/vendors/jquery-ui/jquery-ui.min.css"/>
        <link rel="stylesheet" href="dist/vendors/jquery-ui/jquery-ui.theme.min.css"/>
        <link rel="stylesheet" href="dist/vendors/simple-line-icons/css/simple-line-icons.css"/>        
        <link rel="stylesheet" href="dist/vendors/flags-icon/css/flag-icon.min.css"/> 
        <link rel="stylesheet" href="dist/vendors/flag-select/css/flags.css"/>
        <!-- END Template CSS-->

        <!-- START: Page CSS-->
        <link rel="stylesheet"  href="dist/vendors/chartjs/Chart.min.css"/>
        <!-- END: Page CSS-->

        <!-- START: Page CSS-->   
        <link rel="stylesheet" href="dist/vendors/morris/morris.css"/> 
        <link rel="stylesheet" href="dist/vendors/weather-icons/css/pe-icon-set-weather.min.css"/> 
        <link rel="stylesheet" href="dist/vendors/chartjs/Chart.min.css"/> 
        <link rel="stylesheet" href="dist/vendors/starrr/starrr.css"/> 
        <link rel="stylesheet" href="dist/vendors/fontawesome/css/all.min.css"/>
        <link rel="stylesheet" href="dist/vendors/ionicons/css/ionicons.min.css"/> 
        <link rel="stylesheet" href="dist/vendors/jquery-jvectormap/jquery-jvectormap-2.0.3.css"/>
        <!-- END: Page CSS-->

        <!-- START: Custom CSS-->
        <link rel="stylesheet" href="dist/css/main.css"/>
        <!-- END: Custom CSS-->
    </head>
    <!-- END Head-->

    <!-- START: Body-->
    <body>

        <!-- START: Pre Loader-->
        <div class="se-pre-con">
            <img src="dist/images/logo.png" alt="logo" width="23" class="img-fluid"/>
        </div>
        <!-- END: Pre Loader-->

        <!-- START: Header-->
        <div id="header-fix" class="header fixed-top">
            <nav class="navbar navbar-expand-lg  p-0">
                <div class="navbar-header h4 mb-0 align-self-center logo-bar text-center">  
                    <a href="index-2.html" class="horizontal-logo text-center">
                        <span class="h3 align-self-center mb-0 ">LINER</span>              
                    </a>                   
                </div>
                <div class="navbar-header h4 mb-0 text-center h-100 collapse-menu-bar">
                    <a href="#" class="sidebarCollapse" id="collapse"><i class="icon-menu body-color"></i></a>
                </div>

                <form class="float-left d-none d-lg-block search-form">
                    <div class="form-group mb-0 position-relative">
                        <input type="text" class="form-control border-0 rounded bg-search pl-5" placeholder="Search anything..."/>
                        <div class="btn-search position-absolute top-0">
                            <a href="#"><i class="h5 icon-magnifier body-color"></i></a>
                        </div>
                        <a href="#" class="position-absolute close-button mobilesearch d-lg-none" data-toggle="dropdown" aria-expanded="false"><i class="icon-close h5"></i>                               
                        </a>

                    </div>
                </form>
                <div class="navbar-right ml-auto h-100">
                    <ul class="ml-auto p-0 m-0 list-unstyled d-flex top-icon h-100">
                        <li class="d-inline-block align-self-center  d-block d-lg-none">
                            <a href="#" class="nav-link mobilesearch" data-toggle="dropdown" aria-expanded="false"><i class="icon-magnifier h4"></i>                               
                            </a>
                        </li>                        
                        <li class="d-inline-block align-self-center">
                            <div id="options" data-input-name="country2"  data-selected-country="US"></div>
                        </li>
                        <li class="dropdown align-self-center">
                            <a href="#" class="nav-link" data-toggle="dropdown" aria-expanded="false"><i class="icon-reload h4"></i>
                                <span class="badge badge-default"> <span class="ring">
                                    </span><span class="ring-point">
                                    </span> </span>
                            </a>
                            <ul class="dropdown-menu dropdown-menu-right border  py-0">
                                <li>
                                    <a class="dropdown-item px-2 py-2 border border-top-0 border-left-0 border-right-0" href="#">
                                        <div class="media">
                                            <img src="dist/images/author.jpg" alt="" class="d-flex mr-3 img-fluid rounded-circle"/>
                                            <div class="media-body">
                                                <h6 class="mb-0">john</h6>
                                                <span class="text-warning">New user registered.</span>
                                            </div>
                                        </div>
                                    </a>
                                </li>
                                <li>
                                    <a class="dropdown-item px-2 py-2 border border-top-0 border-left-0 border-right-0" href="#">
                                        <div class="media">
                                            <img src="dist/images/author2.jpg" alt="" class="d-flex mr-3 img-fluid rounded-circle">
                                            <div class="media-body">
                                                <h6 class="mb-0">Peter</h6>
                                                <span class="text-success">Server #12 overloaded.</span>
                                            </div>
                                        </div>
                                    </a>
                                </li>
                                <li>
                                    <a class="dropdown-item px-2 py-2 border border-top-0 border-left-0 border-right-0" href="#">
                                        <div class="media">
                                            <img src="dist/images/author3.jpg" alt="" class="d-flex mr-3 img-fluid rounded-circle">
                                            <div class="media-body">
                                                <h6 class="mb-0">Bill</h6>
                                                <span class="text-danger">Application error.</span>
                                            </div>
                                        </div>
                                    </a>
                                </li>

                                <li><a class="dropdown-item text-center py-2" href="#"> <strong>See All Tasks <i class="icon-arrow-right pl-2 small"></i></strong></a></li>
                            </ul>

                        </li>
                        <li class="dropdown align-self-center d-inline-block">
                            <a href="#" class="nav-link" data-toggle="dropdown" aria-expanded="false"><i class="icon-bell h4"></i>
                                <span class="badge badge-default"> <span class="ring">
                                    </span><span class="ring-point">
                                    </span> </span>
                            </a>
                            <ul class="dropdown-menu dropdown-menu-right border   py-0">
                                <li>
                                    <a class="dropdown-item px-2 py-2 border border-top-0 border-left-0 border-right-0" href="#">
                                        <div class="media">
                                            <img src="dist/images/author.jpg" alt="" class="d-flex mr-3 img-fluid rounded-circle w-50">
                                            <div class="media-body">
                                                <h6 class="mb-0 text-success">john send a message</h6>
                                                12 min ago
                                            </div>
                                        </div>
                                    </a>
                                </li>
                                <li >
                                    <a class="dropdown-item px-2 py-2 border border-top-0 border-left-0 border-right-0" href="#">
                                        <div class="media">
                                            <img src="dist/images/author2.jpg" alt="" class="d-flex mr-3 img-fluid rounded-circle">
                                            <div class="media-body">
                                                <h6 class="mb-0 text-danger">Peter send a message</h6>
                                                15 min ago
                                            </div>
                                        </div>
                                    </a>
                                </li>
                                <li >
                                    <a class="dropdown-item px-2 py-2 border border-top-0 border-left-0 border-right-0" href="#">
                                        <div class="media">
                                            <img src="dist/images/author3.jpg" alt="" class="d-flex mr-3 img-fluid rounded-circle">
                                            <div class="media-body">
                                                <h6 class="mb-0 text-warning">Bill send a message</h6>
                                                5 min ago
                                            </div>
                                        </div>
                                    </a>
                                </li>

                                <li><a class="dropdown-item text-center py-2" href="#"> <strong>Read All Message <i class="icon-arrow-right pl-2 small"></i></strong></a></li>
                            </ul>
                        </li>
                        <li class="dropdown user-profile align-self-center d-inline-block">
                            <a href="#" class="nav-link py-0" data-toggle="dropdown" aria-expanded="false"> 
                                <div class="media">                                   
                                    <img src="dist/images/author.jpg" alt="" class="d-flex img-fluid rounded-circle" width="29">
                                </div>
                            </a>

                            <div class="dropdown-menu  dropdown-menu-right p-0">
                                <a href="#" class="dropdown-item px-2 align-self-center d-flex">
                                    <span class="icon-pencil mr-2 h6 mb-0"></span> Edit Profile</a>
                                <a href="#" class="dropdown-item px-2 align-self-center d-flex">
                                    <span class="icon-user mr-2 h6 mb-0"></span> View Profile</a>
                                <div class="dropdown-divider"></div>
                                <a href="#" class="dropdown-item px-2 align-self-center d-flex">
                                    <span class="icon-support mr-2 h6  mb-0"></span> Help Center</a>
                                <a href="#" class="dropdown-item px-2 align-self-center d-flex">
                                    <span class="icon-globe mr-2 h6 mb-0"></span> Forum</a>
                                <a href="#" class="dropdown-item px-2 align-self-center d-flex">
                                    <span class="icon-settings mr-2 h6 mb-0"></span> Account Settings</a>
                                <div class="dropdown-divider"></div>
                                <a href="#" class="dropdown-item px-2 text-danger align-self-center d-flex">
                                    <span class="icon-logout mr-2 h6  mb-0"></span> Sign Out</a>
                            </div>

                        </li>

                    </ul>
                </div>
            </nav>
        </div>
        <!-- END: Header-->
      <!-- START: Main Menu-->
        <nav class="sidebar">
        <div class="sidebar">
            <div class="media d-block text-center user-profile">
               <br />
                <div class="media-body text-center mt-0 color-primary mt-2">
                       
                        <div class="dropdown-menu dropdown-menu-right p-0" style="">
                            <a href="#" class="dropdown-item px-2 align-self-center d-flex">
                                <span class="icon-pencil mr-2 h6 mb-0"></span> Edit Profile</a>
                            <a href="#" class="dropdown-item px-2 align-self-center d-flex">
                                <span class="icon-user mr-2 h6 mb-0"></span> View Profile</a>
                            <div class="dropdown-divider"></div>
                            <a href="#" class="dropdown-item px-2 align-self-center d-flex">
                                <span class="icon-support mr-2 h6  mb-0"></span> Help Center</a>
                            <a href="#" class="dropdown-item px-2 align-self-center d-flex">
                                <span class="icon-globe mr-2 h6 mb-0"></span> Forum</a>
                            <a href="#" class="dropdown-item px-2 align-self-center d-flex">
                                <span class="icon-settings mr-2 h6 mb-0"></span> Account Settings</a>
                            <div class="dropdown-divider"></div>
                            <a href="#" class="dropdown-item px-2 text-danger align-self-center d-flex">
                                <span class="icon-logout mr-2 h6  mb-0"></span> Sign Out</a>
                        </div>
                </div>
            </div>
            
            <!-- START: Menu-->
            <ul id="side-menu" class="sidebar-menu" >
                <li class="dropdown active"><a href="#">Dashboard</a>                  
                    <ul>
                        <li class="active"><a href="index-2.html"><i class="icon-rocket"></i> Dashboard</a></li>
                    </ul>
                </li>
                <li class="dropdown"><a href="#">Web Apps</a>                  
                    <ul>
                        <li><a runat="server" href="~/Home2.aspx"><i class="icon-home"></i>Home</a></li>
                        <li><a runat="server" href="~/Reports.aspx"><i class="icon-grid"></i>Session Reports</a></li>
                        <li><a runat="server" href="~/Invoice.aspx"><i class="icon-wallet"></i>Invoice</a></li>
                        <li><a href="app-calendar.html"><i class="icon-calendar"></i> Calendar</a></li>
                        <li><a href="app-chat.html"><i class="icon-speech"></i> Chats</a></li>
                        <li><a href="app-to-do.html"><i class="icon-support"></i> Todo</a></li> 
                        <li class="dropdown"><a href="#"><i class="icon-envelope"></i>Mailbox</a>                              
                            <ul class="sub-menu">
                                <li><a href="app-mail.html"><i class="icon-envelope"></i> Inbox</a></li>
                                <li><a href="app-view-email.html"><i class="icon-eye"></i> View Email</a></li>
                                <li><a href="app-mail-compose.html"><i class="icon-compass"></i> Compose Email</a></li>                        
                            </ul>                               
                        </li>
                    </ul>                   
                </li>
            </ul>
            <!-- END: Menu-->
        </div>
        </nav>
        <!-- END: Main Menu-->
         
         <!-- START: Main Content-->
        <main>
            <div class="container-fluid">
                <!-- START: Breadcrumbs-->
                <div class="row">
                    <div class="col-12  align-self-center">
                        <div class="sub-header mt-3 py-3 px-3 align-self-center d-sm-flex w-100 rounded">
                            <%--<div class="w-sm-100 mr-auto"><h5 class="mb-0">View Reports</h5></div>--%>

                            <ol class="breadcrumb bg-transparent align-self-center m-0 p-0">
                                <li class="breadcrumb-item"><a runat="server" href="~/Home2.aspx">Home</a></li>
                                <li class="breadcrumb-item active">View Reports</li>
                            </ol>
                        </div>
                    </div>
                </div>
                <!-- END: Breadcrumbs-->
                <br />
                <br />
                <section class="table">
                    <form id="form1" runat="server">
                        <div class="table-responsive">
                            <h2 class="centered">Session Reports</h2>
                            <br />
                            <asp:Table ID="tbReports" CssClass="table" runat="server">
                                <asp:TableHeaderRow>
                                    <asp:TableHeaderCell>Session ID</asp:TableHeaderCell>
                                    <asp:TableHeaderCell>Care Worker ID</asp:TableHeaderCell>
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
                
         </div>
         </main>


         <!-- START: Template JS-->
        <script src="dist/vendors/jquery/jquery-3.3.1.min.js"></script>
        <script src="dist/vendors/jquery-ui/jquery-ui.min.js"></script>
        <script src="dist/vendors/moment/moment.js"></script>
        <script src="dist/vendors/bootstrap/js/bootstrap.bundle.min.js"></script>    
        <script src="dist/vendors/slimscroll/jquery.slimscroll.min.js"></script>
        <script src="dist/vendors/flag-select/js/jquery.flagstrap.min.js"></script> 
        <!-- END: Template JS-->

        <!-- START: APP JS-->
        <script src="dist/js/app.js"></script>
        <!-- END: APP JS-->

        <!-- START: Page Vendor JS-->
        <script src="dist/vendors/raphael/raphael.min.js"></script>
        <script src="dist/vendors/morris/morris.min.js"></script>
        <script src="dist/vendors/chartjs/Chart.min.js"></script>
        <script src="dist/vendors/starrr/starrr.js"></script>
        <script src="dist/vendors/jquery-flot/jquery.canvaswrapper.js"></script>
        <script src="dist/vendors/jquery-flot/jquery.colorhelpers.js"></script>
        <script src="dist/vendors/jquery-flot/jquery.flot.js"></script>
        <script src="dist/vendors/jquery-flot/jquery.flot.saturated.js"></script>
        <script src="dist/vendors/jquery-flot/jquery.flot.browser.js"></script>
        <script src="dist/vendors/jquery-flot/jquery.flot.drawSeries.js"></script>
        <script src="dist/vendors/jquery-flot/jquery.flot.uiConstants.js"></script>
        <script src="dist/vendors/jquery-flot/jquery.flot.legend.js"></script>
        <script src="dist/vendors/jquery-flot/jquery.flot.pie.js"></script>        
        <script src="dist/vendors/chartjs/Chart.min.js"></script>  
        <script src="dist/vendors/jquery-jvectormap/jquery-jvectormap-2.0.3.min.js"></script>
        <script src="dist/vendors/jquery-jvectormap/jquery-jvectormap-world-mill.js"></script>
        <script src="dist/vendors/jquery-jvectormap/jquery-jvectormap-de-merc.js"></script>
        <script src="dist/vendors/jquery-jvectormap/jquery-jvectormap-us-aea.js"></script>
        <!-- END: Page Vendor JS-->

        <!-- START: Page JS-->
        <script src="dist/js/home.script.js"></script>
        <!-- END: Page JS-->
        </body>
    </html>
</asp:Content>
