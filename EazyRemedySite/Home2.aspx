<%@ Page Title="" Language="C#" MasterPageFile="~/EazyRemedy.Master" AutoEventWireup="true" CodeBehind="Home2.aspx.cs" Inherits="EazyRemedySite.Home2" %>

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
                        <span class="h3 align-self-center mb-0 ">EaziRemedy</span>              
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
                
                <div class="media-body text-center mt-0 color-primary mt-2">
                       <%-- <a href="#" class="nav-link py-0" data-toggle="dropdown" aria-expanded="false"> 
                            <h6 class="mb-0 font-weight-bold">Harry Jones</h6>
                            Toronto, Canada 
                        </a>--%>
                    <br />
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
                            <div class="w-sm-100 mr-auto"><h4 class="mb-0">Dashboard</h4> <b>EaziRemedy Admin Panel</b></div>

                            <ol class="breadcrumb bg-transparent align-self-center m-0 p-0">
                                <li class="breadcrumb-item"><a href="~/Home2.aspx">Home</a></li>
                                <li class="breadcrumb-item active">Dashboard</li>
                            </ol>
                        </div>
                    </div>
                </div>
                <!-- END: Breadcrumbs-->

                <!-- START: Card Data-->
                  <%-- <form id="form1" runat="server">
                       <div class="table-responsive">
                           <h3 class="centered">Reports Table</h3>
                           <br />
                           <br />
                           <asp:Table ID="tbBookings" CssClass="table" runat="server">
                               <asp:TableHeaderRow>
                                   <asp:TableHeaderCell>Duration</asp:TableHeaderCell>
                                   <asp:TableHeaderCell>Date</asp:TableHeaderCell>
                                   <asp:TableHeaderCell>Time</asp:TableHeaderCell>
                                   <asp:TableHeaderCell>Care Recipient</asp:TableHeaderCell>
                                   <asp:TableHeaderCell>Activity Type</asp:TableHeaderCell>
                                   <asp:TableHeaderCell>Address</asp:TableHeaderCell>
                               </asp:TableHeaderRow>
                           </asp:Table>
                       </div>
                   </form>
                   <br />
                   <br />--%>
                    <div class="col-12  col-md-6 mt-3">
                        <div class="card">
                            <div class="card-header d-flex justify-content-between align-items-center">                               
                                <h4 class="card-title">Todo List</h4>

                            </div>
                            <div class="card-content">
                                <div class="card-body pt-0">
                                    <div class="row">                                           
                                        <div class="col-12">
                                            <ul class="tasks">
                                                <li class="task d-flex py-3 px-2">
                                                    <label class="chkbox">
                                                        <input type="checkbox" checked="checked"/>
                                                        <b><del>Aenean ligula porttitor consequat vitae eleifend enim.</del></b>  <br/><span class="text-muted">December 12, 2019</span>
                                                        <br/>
                                                        <img src="dist/images/author.jpg" alt="author" width="30" class="rounded-circle position-absolute"/>
                                                        <img src="dist/images/author2.jpg" alt="author" width="30" class="rounded-circle position-absolute ml-4"/>
                                                        <br/>                                                              

                                                        <span class="checkmark mt-2"></span>
                                                    </label>
                                                    <div class="ml-auto d-flex"><a href="#"><i class="ion ion-edit"></i></a> <a href="#" class="ml-2"><i class="ion ion-trash-a"></i></a></div>
                                                </li>

                                                <li class="task py-3 px-2 d-flex">
                                                    <label class="chkbox">
                                                        <input type="checkbox"/ >
                                                        <b>In enim justo, rhoncus ut imperdiet a, venenatis vitae justo.</b>  <br/><span class="text-muted">December 21, 2019</span>
                                                        <br/>
                                                        <img src="dist/images/author2.jpg" alt="author" width="30" class="rounded-circle position-absolute"/>
                                                        <img src="dist/images/author3.jpg" alt="author" width="30" class="rounded-circle position-absolute ml-4"/>
                                                        <br/>                                                       
                                                        <span class="checkmark mt-2"></span>
                                                    </label>
                                                    <div class="ml-auto d-flex"><a href="#"><i class="ion ion-edit"></i></a> <a href="#" class="ml-2"><i class="ion ion-trash-a"></i></a></div>
                                                </li>
                                                <li class="task py-3 d-flex px-2">
                                                    <label class="chkbox">
                                                        <input type="checkbox" checked="checked"/>
                                                        <b>Cras dapibus vivamus elementum semper nisi.</b>  <br/><span class="text-muted">January 1, 2020</span>
                                                        <br/>
                                                        <img src="dist/images/author3.jpg" alt="author" width="30" class="rounded-circle position-absolute"/>
                                                        <img src="dist/images/author7.jpg" alt="author" width="30" class="rounded-circle position-absolute ml-4"/>
                                                        <br/>                                                        
                                                        <span class="checkmark mt-2"></span>
                                                    </label>
                                                    <div class="ml-auto d-flex"><a href="#"><i class="ion ion-edit"></i></a> <a href="#" class="ml-2"><i class="ion ion-trash-a"></i></a></div>
                                                </li>

                                                <li class="task py-3 px-2 d-flex">
                                                    <label class="chkbox">
                                                        <input type="checkbox" />
                                                        <b>Donec quam felis ultricies nec, pellentesque eu pretium quis.</b>  <br/><span class="text-muted">January 12, 2020</span>
                                                        <br/><img src="dist/images/author6.jpg" alt="author" width="30" class="rounded-circle position-absolute"/>
                                                        <img src="dist/images/author8.jpg" alt="author" width="30" class="rounded-circle position-absolute ml-4"/>
                                                        <br/>                                                       
                                                        <span class="checkmark mt-2"></span>
                                                    </label>
                                                    <div class="ml-auto d-flex"><a href="#"><i class="ion ion-edit"></i></a> <a href="#" class="ml-2"><i class="ion ion-trash-a"></i></a></div>
                                                </li>
                                                <li class="task py-3 px-2 d-flex border-0">
                                                    <label class="chkbox">
                                                        <input type="checkbox" >
                                                        <b>Donec quam felis ultricies nec, pellentesque eu pretium quis.</b>  <br/><span class="text-muted">January 12, 2020</span>
                                                        <br/><img src="dist/images/author.jpg" alt="author" width="30" class="rounded-circle position-absolute"/>
                                                        <img src="dist/images/author8.jpg" alt="author" width="30" class="rounded-circle position-absolute ml-4"/>
                                                        <br/>                                                       
                                                        <span class="checkmark mt-2"></span>
                                                    </label>
                                                    <div class="ml-auto d-flex"><a href="#"><i class="ion ion-edit"></i></a> <a href="#" class="ml-2"><i class="ion ion-trash-a"></i></a></div>
                                                </li>

                                            </ul>  
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-12  col-md-6 mt-3">
                        <div class="card">
                            <div class="card-header">                               
                                <h4 class="card-title">Recent Activities</h4>
                            </div>
                            <div class="card-content">
                                <div class="card-body pt-0">
                                    <div class="row">                                           
                                        <div class="col-12">
                                            <ul class="activities mt-3 mb-2">
                                                <li class="activity py-2 border-left">
                                                    <div class="activity-absolute">
                                                        <div class="absolute-circle dropbox"><i class="fab fa-dropbox"></i></div>
                                                        <img src="dist/images/author8.jpg" alt="author" width="50" class="rounded-circle position-absolute ml-35"/>
                                                    </div>

                                                    <p> <span class="text-primary font-weight-bold">Mark Pearson</span><br/>
                                                        <span class="text-muted">60 min ago</span><br/><br/>
                                                        <b>File added to dropbox.</b></p>
                                                    <div class="d-flex">
                                                        <div>
                                                            <img src="dist/images/photoshop.png" alt="photoshop" class="img-responsive"/>
                                                        </div>
                                                        <p class="ml-2">
                                                            Liner Admin.psd<br/>
                                                            <a href="#" class="text-primary small">Download  <i class="fas   mr-2 fa-cloud-download-alt"></i></a>                                                                
                                                        </p>
                                                    </div>                                                         
                                                </li>
                                                <li class="activity py-2 border-left">
                                                    <div class="activity-absolute">
                                                        <div class="absolute-circle galleries"><i class="far fa-images"></i></div>
                                                        <img src="dist/images/author6.jpg" alt="author" width="50" class="rounded-circle position-absolute ml-35"/>
                                                    </div>

                                                    <p> <span class="text-primary font-weight-bold">Sean	Gregory</span><br/>
                                                        <span class="text-muted">30 min ago</span><br/><br/>
                                                        <b>Upload gallery images.</b></p>
                                                    <div class="mt-2">

                                                        <img src="dist/images/portfolio1.jpg" alt="photoshop" width="100" class="img-responsive rounded"/>
                                                        <img src="dist/images/portfolio2.jpg" alt="photoshop" width="100" class="img-responsive rounded ml-2"/>
                                                        <img src="dist/images/portfolio3.jpg" alt="photoshop" width="100" class="img-responsive rounded ml-2"/>
                                                        <img src="dist/images/portfolio4.jpg" alt="photoshop" width="100" class="img-responsive rounded ml-2"/>

                                                    </div>                                                         
                                                </li>
                                                <li class="activity py-2 border-left">
                                                    <div class="activity-absolute">
                                                        <div class="absolute-circle comments"><i class="far fa-comments"></i></div>
                                                        <img src="dist/images/author8.jpg" alt="author" width="50" class="rounded-circle position-absolute ml-35"/>
                                                    </div>

                                                    <p> <span class="text-primary font-weight-bold">Luther Chapman</span><br/>
                                                        <span class="text-muted">22 min ago</span><br/><br/>
                                                        <b>Add comment</b></p>
                                                    <div class="mt-2">                                                     
                                                        Cum sociis natoque penatibus et magnis dis arturient ontes, nascetur ridiculus mus.                                                     
                                                    </div>                                                         
                                                </li>
                                            </ul> 
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-12 col-md-4 col-lg-4 mt-3">
                        <div class="card">
                            <div class="card-header  justify-content-between align-items-center">                               
                                <h4 class="card-title">Messages</h4> 
                            </div>
                            <div class="card-body table-responsive">
                                <ul class="nav flex-column chat-menu" id="myTab" role="tablist">
                                    <li class="nav-item px-3">
                                        <a class="nav-link online-status green" data-toggle="tab" href="#tab1" role="tab" aria-selected="true">
                                            <div class="media d-block d-flex text-left py-2">
                                                <img class="img-fluid mr-3 rounded-circle" src="dist/images/author2.jpg" alt=""/>
                                                <div class="media-body align-self-center mt-0 color-primary d-flex">
                                                    <div class="message-content"> <h6 class="mb-1 font-weight-bold d-flex">Harry Jones</h6>
                                                        How are you? ... 
                                                        <br/>
                                                        <small class="body-color">23 hours ago</small></div>
                                                    <div class="new-message ml-auto bg-primary text-white">3</div>

                                                </div>
                                            </div>
                                        </a>
                                    </li>
                                    <li class="nav-item  px-3">
                                        <a class="nav-link online-status green" data-toggle="tab" href="#tab2" role="tab" aria-selected="false">
                                            <div class="media d-block d-flex text-left py-2">
                                                <img class="img-fluid  mr-3 rounded-circle" src="dist/images/author3.jpg" alt=""/>
                                                <div class="media-body align-self-center mt-0 color-primary d-flex">
                                                    <div class="message-content"> <h6 class="mb-1 font-weight-bold d-flex">Daniel Taylor</h6>
                                                        I am waiting ... 
                                                        <br/>
                                                        <small class="body-color">14 hours ago</small></div>
                                                    <div class="new-message ml-auto bg-primary text-white">1</div>

                                                </div>
                                            </div> 
                                        </a>
                                    </li>
                                    <li class="nav-item  px-3">
                                        <a class="nav-link online-status yellow" data-toggle="tab" href="#tab3" role="tab" aria-selected="false">
                                            <div class="media d-block d-flex text-left py-2">
                                                <img class="img-fluid mr-3 rounded-circle" src="dist/images/author.jpg" alt=""/>
                                                <div class="media-body align-self-center mt-0">
                                                    <h6 class="mb-1 font-weight-bold">Charlotte </h6>
                                                    video <i class="fa fa-file-video-o"></i>
                                                </div>
                                            </div> 
                                        </a>
                                    </li>
                                    <li class="nav-item  px-3">
                                        <a class="nav-link online-status yellow" data-toggle="tab" href="#tab4" role="tab" aria-selected="false">
                                            <div class="media d-block d-flex text-left py-2">
                                                <img class="img-fluid  mr-3 rounded-circle" src="dist/images/author7.jpg" alt="">
                                                <div class="media-body align-self-center mt-0">
                                                    <h6 class="mb-1 font-weight-bold">Jack Sparrow</h6>
                                                    tour pictures <i class="fa fa-photo"></i>
                                                </div>
                                            </div> 
                                        </a>
                                    </li>
                                    <li class="nav-item px-3">
                                        <a class="nav-link online-status yellow" data-toggle="tab" href="#tab5" role="tab" aria-selected="false">
                                            <div class="media d-block d-flex text-left py-2">
                                                <img class="img-fluid  mr-3 rounded-circle" src="dist/images/author6.jpg" alt=""/>
                                                <div class="media-body align-self-center mt-0">
                                                    <h6 class="mb-1 font-weight-bold">Bhaumik</h6>
                                                    Lorem Ipsum has been the industry ...
                                                </div>
                                            </div> 
                                        </a>
                                    </li>

                                </ul>
                            </div>
                        </div>

                    </div>
                    <div class="col-12 col-md-8 col-lg-8 mt-3">
                        <div class="card">
                            <div class="card-header  justify-content-between align-items-center">                               
                                <h4 class="card-title">Recent Orders</h4> 
                            </div>
                            <div class="card-body table-responsive">
                                <div class="row align-items-center">
                                    <div class="col-12 col-md-8 text-primary">
                                        Total completed order 1952, Panding 768, Canceled 234.
                                    </div>
                                    <div class="col-12 col-md-4 text-right">
                                        Short By <div class="btn-group ml-2">
                                            <button type="button" class="btn btn-outline-primary dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">Date</button>
                                            <div class="dropdown-menu p-0">
                                                <a class="dropdown-item" href="#">Action</a>
                                                <a class="dropdown-item" href="#">Another action</a>
                                                <a class="dropdown-item" href="#">Something else here</a>
                                                <div class="dropdown-divider"></div>
                                                <a class="dropdown-item" href="#">Separated link</a>
                                            </div>
                                        </div>
                                    </div>                                                
                                </div>  


                                <table class="table table-bordered  table-hover mb-0 mt-3">
                                    <thead>
                                        <tr>
                                            <th>ID</th>
                                            <th>Purchased</th>
                                            <th>Client Name</th>
                                            <th>Amount</th>
                                            <th>Quantity</th>
                                            <th>Shipment</th>
                                            <th>Status</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <tr>
                                            <td>0001</td>
                                            <td>03/11/2015</td>
                                            <td>Addison Nichols</td>
                                            <td>$ 515.20</td>
                                            <td>547</td>
                                            <td>04/10/2017</td>
                                            <td><span class="badge badge-primary text-white">Standby</span></td>
                                        </tr>
                                        <tr class="ng-scope">
                                            <td>0002</td>
                                            <td>05/11/2015</td>
                                            <td>Albert Watkins</td>
                                            <td>$ 22.30</td>
                                            <td>122</td>
                                            <td>06/10/2017</td>
                                            <td><span class="badge badge-dark text-white">Paid</span></td>
                                        </tr>
                                        <tr class="ng-scope">
                                            <td>0003</td>
                                            <td>07/09/2015</td>
                                            <td>Johnny Fernandez</td>
                                            <td>$ 31.4</td>
                                            <td>68</td>
                                            <td>28/09/2017</td>
                                            <td><span class="badge badge-success text-white">Standby</span></td>
                                        </tr>

                                        <tr class="ng-scope">
                                            <td>0014</td>
                                            <td>30/09/2015</td>
                                            <td>Nora Lambert</td>
                                            <td>$ 147.15</td>
                                            <td>65</td>
                                            <td>23/11/2017</td>
                                            <td><span class="badge badge-info text-white">Paid</span></td>
                                        </tr>
                                        <tr class="ng-scope">
                                            <td>0015</td>
                                            <td>29/07/2015</td>
                                            <td>Shelly Robertson</td>
                                            <td>$ 15.016</td>
                                            <td>12</td>
                                            <td>30/1/2020</td>
                                            <td><span class="badge badge-danger text-white">Canceled</span></td>
                                        </tr>
                                        <tr class="ng-scope">
                                            <td>0016</td>
                                            <td>22/07/2015</td>
                                            <td>Everett Garcia</td>
                                            <td>$ 188.19</td>
                                            <td>65</td>
                                            <td>029/11/2017</td>
                                            <td><span class="badge badge-primary text-white">Paid</span></td>
                                        </tr>
                                    </tbody>
                                </table>
                            </div>
                        </div>


                    </div>


                    <div class="col-12 col-md-6 col-lg-8 mt-3">
                        <div class="card">                      
                            <div class="card-content">
                                <div class="card-body">
                                    <div id="world-map-gdp" class="w-100 height-350" style="height:393px;"></div>
                                </div>
                            </div>
                        </div>
                    </div>

                </div>
                <!-- END: Card DATA-->
            </div>
        </main>
        <!-- END: Content-->



        <!-- START: Back to top-->
        <a href="#" class="scrollup text-center"> 
            <i class="icon-arrow-up"></i>
        </a>
        <!-- END: Back to top-->

        <!-- START: Chat Button-->
        <a href="#" class="chatbutton text-center"> 
            <i class="icon-speech"></i>
        </a>
        <div class="card border h-50 chatwindow mx-3">
            <div class="card-body p-0">                          
                <ul class="nav flex-column chat-menu" id="myTab3" role="tablist">
                    <li class="nav-item active px-3">                                               
                        <div class="media d-block d-flex text-left py-3">
                            <img class="img-fluid  mr-3 rounded-circle" src="dist/images/author2.jpg" alt="">
                            <div class="media-body align-self-center mt-0  d-flex">
                                <div class="message-content"> <h6 class="mb-1 font-weight-bold d-flex">Harry Jones</h6>
                                    typing ... 
                                    <br>
                                </div>
                                <div class="call-button ml-auto">
                                    <a href="#" class="call h4" data-toggle="modal" data-target="#call1"><i class="icon-phone"></i></a>
                                    <a href="#" class="video-call h4" data-toggle="modal" data-target="#call1"><i class="icon-camrecorder"></i></a>
                                </div>
                            </div>
                        </div>                                               
                    </li>
                </ul>

                <div class="popupchat p-3">                                            
                    <div class="media d-flex  mb-4">
                        <div class="p-3 ml-auto speech-bubble">
                            Hello John, how can I help you today ?
                        </div>
                        <div class="ml-4"><a href="#"><img src="dist/images/author2.jpg" alt="" class="img-fluid rounded-circle" /></a></div>
                    </div>
                    <div class="media d-flex mb-4">
                        <div class="mr-4 thumb-img"><a href="#"><img src="dist/images/author3.jpg" alt="" class="img-fluid rounded-circle" /></a></div>
                        <div class="p-3 mr-auto speech-bubble alt">
                            Hi, I want to buy a new shoes.
                        </div>
                    </div>
                    <div class="media d-flex mb-4">
                        <div class="p-3 ml-auto speech-bubble">
                            Shipment is free. You'll get your shoes tomorrow!<br/>

                        </div>
                        <div class="ml-4"><a href="#"><img src="dist/images/author2.jpg" alt="" class="img-fluid rounded-circle" /></a></div>
                    </div> 
                </div>
                <div class="border-top theme-border px-2 py-3 d-flex">
                    <input type="text" class="form-control mr-2" placeholder="Type message here ..." />
                    <a href="#" class="ml-auto rounded  p-2 m-0 my-auto bg-success text-white"><i class="icon-link"></i></a> 
                    <a href="#" class="p-2 ml-2 rounded line-height-21 bg-primary text-white"><i class="icon-cursor align-middle"></i></a>
                </div>
            </div>
        </div>
        <!-- END: Chat Button-->



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
    <!-- END: Body-->

<!-- Mirrored from html.designstream.co.in/liner/html/index.html by HTTrack Website Copier/3.x [XR&CO'2014], Wed, 09 Dec 2020 02:40:46 GMT -->
</html>

      
</asp:Content>
