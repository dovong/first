<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  <meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no, shrink-to-fit=no" name="viewport">
  <title>Dashboard &mdash; Stisla</title>

  <link rel="stylesheet" href="/modules/bootstrap/css/bootstrap.min.css">
  <link rel="stylesheet" href="/modules/ionicons/css/ionicons.min.css">
  <link rel="stylesheet" href="/modules/fontawesome/web-fonts-with-css/css/fontawesome-all.min.css">

  <link rel="stylesheet" href="/modules/summernote/summernote-lite.css">
  <link rel="stylesheet" href="/modules/flag-icon-css/css/flag-icon.min.css">
  <link rel="stylesheet" href="/css/demo.css">
  <link rel="stylesheet" href="/css/style.css">
  
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script>
$(document).ready(function(){
	  //$("#btn").click(function(){	
    //});
});    
</script>
</head>

<body>
  <div id="app">
    <div class="main-wrapper">
      <div class="navbar-bg"></div>
      <nav class="navbar navbar-expand-lg main-navbar">
        <form class="form-inline mr-auto">
          <ul class="navbar-nav mr-3">
            <li><a href="#" data-toggle="sidebar" class="nav-link nav-link-lg"><i class="ion ion-navicon-round"></i></a></li>
            <li><a href="#" data-toggle="search" class="nav-link nav-link-lg d-sm-none"><i class="ion ion-search"></i></a></li>
          </ul>
          <div class="search-element">
            <input class="form-control" type="search" placeholder="Search" aria-label="Search">
            <button class="btn" type="submit"><i class="ion ion-search"></i></button>
          </div>
        </form>
        <ul class="navbar-nav navbar-right">
          <li class="dropdown dropdown-list-toggle"><a href="#" data-toggle="dropdown" class="nav-link notification-toggle nav-link-lg beep"><i class="ion ion-ios-bell-outline"></i></a>
            <div class="dropdown-menu dropdown-list dropdown-menu-right">
              <div class="dropdown-header">Notifications
                <div class="float-right">
                  <a href="#">View All</a>
                </div>
              </div>
              <div class="dropdown-list-content">
                <a href="#" class="dropdown-item dropdown-item-unread">
                  <img alt="image" src="/img/avatar/avatar-1.jpeg" class="rounded-circle dropdown-item-img">
                  <div class="dropdown-item-desc">
                    <b>Kusnaedi</b> has moved task <b>Fix bug header</b> to <b>Done</b>
                    <div class="time">10 Hours Ago</div>
                  </div>
                </a>
                <a href="#" class="dropdown-item dropdown-item-unread">
                  <img alt="image" src="/img/avatar/avatar-2.jpeg" class="rounded-circle dropdown-item-img">
                  <div class="dropdown-item-desc">
                    <b>Ujang Maman</b> has moved task <b>Fix bug footer</b> to <b>Progress</b>
                    <div class="time">12 Hours Ago</div>
                  </div>
                </a>
                <a href="#" class="dropdown-item">
                  <img alt="image" src="/img/avatar/avatar-3.jpeg" class="rounded-circle dropdown-item-img">
                  <div class="dropdown-item-desc">
                    <b>Agung Ardiansyah</b> has moved task <b>Fix bug sidebar</b> to <b>Done</b>
                    <div class="time">12 Hours Ago</div>
                  </div>
                </a>
                <a href="#" class="dropdown-item">
                  <img alt="image" src="/img/avatar/avatar-4.jpeg" class="rounded-circle dropdown-item-img">
                  <div class="dropdown-item-desc">
                    <b>Ardian Rahardiansyah</b> has moved task <b>Fix bug navbar</b> to <b>Done</b>
                    <div class="time">16 Hours Ago</div>
                  </div>
                </a>
                <a href="#" class="dropdown-item">
                  <img alt="image" src="/img/avatar/avatar-5.jpeg" class="rounded-circle dropdown-item-img">
                  <div class="dropdown-item-desc">
                    <b>Alfa Zulkarnain</b> has moved task <b>Add logo</b> to <b>Done</b>
                    <div class="time">Yesterday</div>
                  </div>
                </a>
              </div>
            </div>
          </li>
          <li class="dropdown"><a href="#" data-toggle="dropdown" class="nav-link dropdown-toggle nav-link-lg">
            <i class="ion ion-android-person d-lg-none"></i>
            <div class="d-sm-none d-lg-inline-block">Hi, Ujang Maman</div></a>
            <div class="dropdown-menu dropdown-menu-right">
              <a href="profile.jsp" class="dropdown-item has-icon">
                <i class="ion ion-android-person"></i> Profile
              </a>
              <a href="#" class="dropdown-item has-icon">
                <i class="ion ion-log-out"></i> Logout
              </a>
            </div>
          </li>
        </ul>
      </nav>
      <div class="main-sidebar">
        <aside id="sidebar-wrapper">
          <div class="sidebar-brand">
            <a href="index.jsp">Stisla Lite</a>
          </div>
          <div class="sidebar-user">
            <div class="sidebar-user-picture">
              <img alt="image" src="/img/avatar/avatar-1.jpeg">
            </div>
            <div class="sidebar-user-details">
              <div class="user-name">Ujang Maman</div>
              <div class="user-role">
                Administrator
              </div>
            </div>
          </div>
          <ul class="sidebar-menu">
            <li class="menu-header">Dashboard</li>
            <li>
              <a href="index.jsp"><i class="ion ion-speedometer"></i><span>Dashboard</span></a>
            </li>

            <li class="menu-header">Components</li>
            <li class="active">
              <a href="#" class="has-dropdown"><i class="ion ion-ios-albums-outline"></i><span>Components</span></a>
              <ul class="menu-dropdown">
                <li><a href="general.jsp"><i class="ion ion-ios-circle-outline"></i> Basic</a></li>
                <li class="active"><a href="components.jsp"><i class="ion ion-ios-circle-outline"></i> Main Components</a></li>
                <li><a href="buttons.jsp"><i class="ion ion-ios-circle-outline"></i> Buttons</a></li>
                <li><a href="toastr.jsp"><i class="ion ion-ios-circle-outline"></i> Toastr</a></li>
              </ul>
            </li>
            <li>
              <a href="#" class="has-dropdown"><i class="ion ion-flag"></i><span>Icons</span></a>
              <ul class="menu-dropdown">
                <li><a href="ion-icons.jsp"><i class="ion ion-ios-circle-outline"></i> Ion Icons</a></li>
                <li><a href="fontawesome.jsp"><i class="ion ion-ios-circle-outline"></i> Font Awesome</a></li>
                <li><a href="flag.jsp"><i class="ion ion-ios-circle-outline"></i> Flag</a></li>
              </ul>
            </li>
            <li>
              <a href="table.jsp"><i class="ion ion-clipboard"></i><span>Tables</span></a>
            </li>
            <li>
              <a href="chartjs.jsp"><i class="ion ion-stats-bars"></i><span>Chart.js</span></a>
            </li>
            <li>
              <a href="simple.jsp"><i class="ion ion-ios-location-outline"></i><span>Google Maps</span></a>
            </li>
            <li>
              <a href="#" class="has-dropdown"><i class="ion ion-ios-copy-outline"></i><span>Examples</span></a>
              <ul class="menu-dropdown">
                <li><a href="login.jsp"><i class="ion ion-ios-circle-outline"></i> Login</a></li>
                <li><a href="register.jsp"><i class="ion ion-ios-circle-outline"></i> Register</a></li>
                <li><a href="forgot.jsp"><i class="ion ion-ios-circle-outline"></i> Forgot Password</a></li>
                <li><a href="reset.jsp"><i class="ion ion-ios-circle-outline"></i> Reset Password</a></li>
                <li><a href="404.jsp"><i class="ion ion-ios-circle-outline"></i> 404</a></li>
              </ul>
            </li>

            <li class="menu-header">More</li>
            <li>
              <a href="#" class="has-dropdown"><i class="ion ion-ios-nutrition"></i> Click Me</a>
              <ul class="menu-dropdown">
                <li><a href="#"><i class="ion ion-ios-circle-outline"></i> Menu 1</a></li>
                <li><a href="#" class="has-dropdown"><i class="ion ion-ios-circle-outline"></i> Menu 2</a>
                  <ul class="menu-dropdown">
                    <li><a href="#"><i class="ion ion-ios-circle-outline"></i> Child Menu 1</a></li>
                    <li><a href="#"><i class="ion ion-ios-circle-outline"></i> Child Menu 2</a></li>
                    <li><a href="#" class="has-dropdown"><i class="ion ion-ios-circle-outline"></i> Child Menu 3</a>
                      <ul class="menu-dropdown">
                        <li><a href="#"><i class="ion ion-ios-circle-outline"></i> Child Menu 1</a></li>
                        <li><a href="#"><i class="ion ion-ios-circle-outline"></i> Child Menu 2</a></li>
                        <li><a href="#"><i class="ion ion-ios-circle-outline"></i> Child Menu 3</a></li>
                      </ul>
                    </li>
                    <li><a href="#"><i class="ion ion-ios-circle-outline"></i> Child Menu 4</a></li>
                  </ul>
                </li>
              </ul>
            </li>
            <li>
              <a href="#"><i class="ion ion-heart"></i> Badges <div class="badge badge-primary">10</div></a>
            </li>
            <li>
              <a href="credits.jsp"><i class="ion ion-ios-information-outline"></i> Credits</a>
            </li>          </ul>
          <div class="p-3 mt-4 mb-4">
            <a href="http://stisla.multinity.com/" class="btn btn-danger btn-shadow btn-round has-icon has-icon-nofloat btn-block">
              <i class="ion ion-help-buoy"></i> <div>Go PRO!</div>
            </a>
          </div>
        </aside>
      </div>
      <div class="main-content">
        <section class="section">
          <h1 class="section-header">
            <div>Components</div>
          </h1>

          <div class="section-body">
            <h2 class="section-title">Statistic Boxes</h2>
            <div class="row">
              <div class="col-12 col-sm-6 col-lg-3">
                <div class="card card-sm">
                  <div class="card-icon text-primary">
                    <i class="ion ion-person"></i>
                  </div>
                  <div class="card-wrap">
                    <div class="card-body">
                      10
                    </div>
                    <div class="card-header">
                      <h4>Total Admin</h4>
                    </div>
                  </div>
                </div>
              </div>
              <div class="col-12 col-sm-6 col-lg-3">
                <div class="card card-sm">
                  <div class="card-icon text-danger">
                    <i class="ion ion-ios-paper-outline"></i>
                  </div>
                  <div class="card-wrap">
                    <div class="card-body">
                      42
                    </div>
                    <div class="card-header">
                      <h4>News</h4>
                    </div>
                  </div>
                </div>
              </div>
              <div class="col-12 col-sm-6 col-lg-3">
                <div class="card card-sm">
                  <div class="card-icon text-warning">
                    <i class="ion ion-paper-airplane"></i>
                  </div>
                  <div class="card-wrap">
                    <div class="card-body">
                      1,201
                    </div>
                    <div class="card-header">
                      <h4>Reports</h4>
                    </div>
                  </div>
                </div>
              </div>
              <div class="col-12 col-sm-6 col-lg-3">
                <div class="card card-sm">
                  <div class="card-icon text-success">
                    <i class="ion ion-record"></i>
                  </div>
                  <div class="card-wrap">
                    <div class="card-body">
                      47
                    </div>
                    <div class="card-header">
                      <h4>Online Users</h4>
                    </div>
                  </div>
                </div>
              </div>
            </div>

            <h2 class="section-title">Statistic Boxes (Colored)</h2>
            <div class="row">
              <div class="col-12 col-sm-6 col-lg-3">
                <div class="card card-sm bg-primary">
                  <div class="card-icon">
                    <i class="ion ion-person"></i>
                  </div>
                  <div class="card-wrap">
                    <div class="card-body">
                      10
                    </div>
                    <div class="card-header">
                      <h4>Total Admin</h4>
                    </div>
                  </div>
                </div>
              </div>
              <div class="col-12 col-sm-6 col-lg-3">
                <div class="card card-sm bg-danger">
                  <div class="card-icon">
                    <i class="ion ion-ios-paper-outline"></i>
                  </div>
                  <div class="card-wrap">
                    <div class="card-body">
                      42
                    </div>
                    <div class="card-header">
                      <h4>News</h4>
                    </div>
                  </div>
                </div>
              </div>
              <div class="col-12 col-sm-6 col-lg-3">
                <div class="card card-sm bg-warning">
                  <div class="card-icon">
                    <i class="ion ion-paper-airplane"></i>
                  </div>
                  <div class="card-wrap">
                    <div class="card-body">
                      1,201
                    </div>
                    <div class="card-header">
                      <h4>Reports</h4>
                    </div>
                  </div>
                </div>
              </div>
              <div class="col-12 col-sm-6 col-lg-3">
                <div class="card card-sm bg-dark">
                  <div class="card-icon">
                    <i class="ion ion-record"></i>
                  </div>
                  <div class="card-wrap">
                    <div class="card-body">
                      47
                    </div>
                    <div class="card-header">
                      <h4>Online Users</h4>
                    </div>
                  </div>
                </div>
              </div>
            </div>
            <div class="row mt-4">
              <div class="col-12 col-sm-6 col-lg-3">
                <div class="card card-sm-3">
                  <div class="card-icon bg-primary">
                    <i class="ion ion-person"></i>
                  </div>
                  <div class="card-wrap">
                    <div class="card-header">
                      <h4>Total Admin</h4>
                    </div>
                    <div class="card-body">
                      10
                    </div>
                  </div>
                </div>
              </div>
              <div class="col-12 col-sm-6 col-lg-3">
                <div class="card card-sm-3">
                  <div class="card-icon bg-danger">
                    <i class="ion ion-ios-paper-outline"></i>
                  </div>
                  <div class="card-wrap">
                    <div class="card-header">
                      <h4>News</h4>
                    </div>
                    <div class="card-body">
                      42
                    </div>
                  </div>
                </div>
              </div>
              <div class="col-12 col-sm-6 col-lg-3">
                <div class="card card-sm-3">
                  <div class="card-icon bg-warning">
                    <i class="ion ion-paper-airplane"></i>
                  </div>
                  <div class="card-wrap">
                    <div class="card-header">
                      <h4>Reports</h4>
                    </div>
                    <div class="card-body">
                      1,201
                    </div>
                  </div>
                </div>
              </div>
              <div class="col-12 col-sm-6 col-lg-3">
                <div class="card card-sm-3">
                  <div class="card-icon bg-dark">
                    <i class="ion ion-record"></i>
                  </div>
                  <div class="card-wrap">
                    <div class="card-header">
                      <h4>Online Users</h4>
                    </div>
                    <div class="card-body">
                      47
                    </div>
                  </div>
                </div>
              </div>
            </div>
            <div class="row mt-4">
              <div class="col-12 col-sm-6 col-lg-3">
                <div class="card card-sm-4">
                  <div class="card-icon bg-primary">
                    <i class="ion ion-person"></i>
                  </div>
                  <div class="card-wrap">
                    <div class="card-header">
                      <h4>Total Admin</h4>
                    </div>
                    <div class="card-body">
                      10
                    </div>
                  </div>
                </div>
              </div>
              <div class="col-12 col-sm-6 col-lg-3">
                <div class="card card-sm-4">
                  <div class="card-icon bg-danger">
                    <i class="ion ion-ios-paper-outline"></i>
                  </div>
                  <div class="card-wrap">
                    <div class="card-header">
                      <h4>News</h4>
                    </div>
                    <div class="card-body">
                      42
                    </div>
                  </div>
                </div>
              </div>
              <div class="col-12 col-sm-6 col-lg-3">
                <div class="card card-sm-4">
                  <div class="card-icon bg-warning">
                    <i class="ion ion-paper-airplane"></i>
                  </div>
                  <div class="card-wrap">
                    <div class="card-header">
                      <h4>Reports</h4>
                    </div>
                    <div class="card-body">
                      1,201
                    </div>
                  </div>
                </div>
              </div>
              <div class="col-12 col-sm-6 col-lg-3">
                <div class="card card-sm-4">
                  <div class="card-icon bg-dark">
                    <i class="ion ion-record"></i>
                  </div>
                  <div class="card-wrap">
                    <div class="card-header">
                      <h4>Online Users</h4>
                    </div>
                    <div class="card-body">
                      47
                    </div>
                  </div>
                </div>
              </div>
            </div>

            <h2 class="section-title">Statistic Boxes (Options)</h2>
            <div class="row">
              <div class="col-12 col-sm-6 col-lg-3">
                <div class="card card-sm">
                  <div class="card-icon text-primary">
                    <i class="ion ion-person"></i>
                  </div>
                  <div class="card-wrap">
                    <div class="card-options dropdown">
                      <a href="#" class="dropdown-toggle remove-caret" data-toggle="dropdown"><i class="ion ion-ios-circle-outline"></i></a>
                      <div class="dropdown-menu">
                        <a href="#" class="dropdown-item">Option 1</a>
                        <a href="#" class="dropdown-item">Option 2</a>
                        <a href="#" class="dropdown-item">Option 3</a>
                        <div class="dropdown-divider"></div>
                        <a href="#" class="dropdown-item">Option 4</a>
                      </div>
                    </div>
                    <div class="card-body">
                      10
                    </div>
                    <div class="card-header">
                      <h4>Total Admin</h4>
                    </div>
                  </div>
                </div>
              </div>
              <div class="col-12 col-sm-6 col-lg-3">
                <div class="card card-sm">
                  <div class="card-icon text-danger">
                    <i class="ion ion-ios-paper-outline"></i>
                  </div>
                  <div class="card-wrap">
                    <div class="card-options dropdown">
                      <a href="#" class="dropdown-toggle remove-caret" data-toggle="dropdown"><i class="ion ion-ios-circle-outline"></i></a>
                      <div class="dropdown-menu">
                        <a href="#" class="dropdown-item">Option 1</a>
                        <a href="#" class="dropdown-item">Option 2</a>
                        <a href="#" class="dropdown-item">Option 3</a>
                        <div class="dropdown-divider"></div>
                        <a href="#" class="dropdown-item">Option 4</a>
                      </div>
                    </div>
                    <div class="card-body">
                      42
                    </div>
                    <div class="card-header">
                      <h4>News</h4>
                    </div>
                  </div>
                </div>
              </div>
              <div class="col-12 col-sm-6 col-lg-3">
                <div class="card card-sm">
                  <div class="card-icon text-warning">
                    <i class="ion ion-paper-airplane"></i>
                  </div>
                  <div class="card-wrap">
                    <div class="card-options dropdown">
                      <a href="#" class="dropdown-toggle remove-caret" data-toggle="dropdown"><i class="ion ion-ios-circle-outline"></i></a>
                      <div class="dropdown-menu">
                        <a href="#" class="dropdown-item">Option 1</a>
                        <a href="#" class="dropdown-item">Option 2</a>
                        <a href="#" class="dropdown-item">Option 3</a>
                        <div class="dropdown-divider"></div>
                        <a href="#" class="dropdown-item">Option 4</a>
                      </div>
                    </div>
                    <div class="card-body">
                      1,201
                    </div>
                    <div class="card-header">
                      <h4>Reports</h4>
                    </div>
                  </div>
                </div>
              </div>
              <div class="col-12 col-sm-6 col-lg-3">
                <div class="card card-sm">
                  <div class="card-icon text-success">
                    <i class="ion ion-record"></i>
                  </div>
                  <div class="card-wrap">
                    <div class="card-options dropdown">
                      <a href="#" class="dropdown-toggle remove-caret" data-toggle="dropdown"><i class="ion ion-ios-circle-outline"></i></a>
                      <div class="dropdown-menu dropdown-menu-right">
                        <a href="#" class="dropdown-item">Option 1</a>
                        <a href="#" class="dropdown-item">Option 2</a>
                        <a href="#" class="dropdown-item">Option 3</a>
                        <div class="dropdown-divider"></div>
                        <a href="#" class="dropdown-item">Option 4</a>
                      </div>
                    </div>
                    <div class="card-body">
                      47
                    </div>
                    <div class="card-header">
                      <h4>Online Users</h4>
                    </div>
                  </div>
                </div>
              </div>
            </div>

            <h2 class="section-title">Statistic Boxes (Progress)</h2>
            <div class="row">
              <div class="col-12 col-sm-6 col-lg-3">
                <div class="card card-sm">
                  <div class="card-icon text-primary">
                    <i class="ion ion-person"></i>
                  </div>
                  <div class="card-wrap">
                    <div class="card-body">
                      10
                    </div>
                    <div class="card-header">
                      <h4>Total Admin</h4>
                    </div>
                    <div class="card-progressbar">
                      <div class="progress" style="height: 3px;">
                        <div class="progress-bar" role="progressbar" style="width: 25%;"></div>
                      </div>
                      <div class="text-right">
                        <small class="text-muted">10 / 30</small>
                      </div>
                    </div>
                  </div>
                </div>
              </div>
              <div class="col-12 col-sm-6 col-lg-3">
                <div class="card card-sm">
                  <div class="card-icon text-danger">
                    <i class="ion ion-ios-paper-outline"></i>
                  </div>
                  <div class="card-wrap">
                    <div class="card-body">
                      42
                    </div>
                    <div class="card-header">
                      <h4>News</h4>
                    </div>
                    <div class="card-progressbar">
                      <div class="progress" style="height: 3px;">
                        <div class="progress-bar bg-danger" role="progressbar" style="width: 5%;"></div>
                      </div>
                      <div class="text-right">
                        <small class="text-muted">42 / &infin;</small>
                      </div>
                    </div>
                  </div>
                </div>
              </div>
              <div class="col-12 col-sm-6 col-lg-3">
                <div class="card card-sm">
                  <div class="card-icon text-warning">
                    <i class="ion ion-paper-airplane"></i>
                  </div>
                  <div class="card-wrap">
                    <div class="card-body">
                      1,201
                    </div>
                    <div class="card-header">
                      <h4>Reports</h4>
                    </div>
                    <div class="card-progressbar">
                      <div class="progress" style="height: 3px;">
                        <div class="progress-bar bg-warning" role="progressbar" style="width: 5%;"></div>
                      </div>
                      <div class="text-right">
                        <small class="text-muted">1,201 / &infin;</small>
                      </div>
                    </div>
                  </div>
                </div>
              </div>
              <div class="col-12 col-sm-6 col-lg-3">
                <div class="card card-sm">
                  <div class="card-icon text-success">
                    <i class="ion ion-record"></i>
                  </div>
                  <div class="card-wrap">
                    <div class="card-body">
                      47
                    </div>
                    <div class="card-header">
                      <h4>Online Users</h4>
                    </div>
                    <div class="card-progressbar">
                      <div class="progress" style="height: 3px;">
                        <div class="progress-bar bg-success" role="progressbar" style="width: 67%;"></div>
                      </div>
                      <div class="text-right">
                        <small class="text-muted">47 / 72</small>
                      </div>
                    </div>
                  </div>
                </div>
              </div>
            </div>
            <div class="row mt-4">
              <div class="col-12 col-sm-4 col-lg-4">
                <div class="card card-sm-2">
                  <div class="card-icon">
                    <i class="ion ion-ios-paper-outline text-primary"></i>
                  </div>
                  <div class="card-header">
                    <h4>News</h4>
                  </div>
                  <div class="card-body">
                    40 <span class="text-muted">/ &infin;</span>
                  </div>
                  <div class="card-progressbar">
                    <div class="progress" style="height: 6px;">
                      <div class="progress-bar" role="progressbar" style="width: 5%;"></div>
                    </div>
                  </div>
                  <div class="card-footer">
                    Sunt in culpa qui officia deserunt mollit anim id est laborum.
                  </div>
                </div>
              </div>
              <div class="col-12 col-sm-4 col-lg-4">
                <div class="card card-sm-2">
                  <div class="card-icon">
                    <i class="ion ion-person text-danger"></i>
                  </div>
                  <div class="card-header">
                    <h4>Total Admin</h4>
                  </div>
                  <div class="card-body">
                    10 <span class="text-muted">/ 50</span>
                  </div>
                  <div class="card-progressbar">
                    <div class="progress" style="height: 6px;">
                      <div class="progress-bar bg-danger" role="progressbar" style="width: 25%;"></div>
                    </div>
                  </div>
                  <div class="card-footer">
                    Sunt in culpa qui officia deserunt mollit anim id est laborum.
                  </div>
                </div>
              </div>
              <div class="col-12 col-sm-4 col-lg-4">
                <div class="card card-sm-2">
                  <div class="card-icon">
                    <i class="ion ion-person text-success"></i>
                  </div>
                  <div class="card-header">
                    <h4>Online Users</h4>
                  </div>
                  <div class="card-body">
                    68 <span class="text-muted">/ 78</span>
                  </div>
                  <div class="card-progressbar">
                    <div class="progress" style="height: 6px;">
                      <div class="progress-bar bg-success" role="progressbar" style="width: 67%;"></div>
                    </div>
                  </div>
                  <div class="card-footer">
                    Sunt in culpa qui officia deserunt mollit anim id est laborum.
                  </div>
                </div>
              </div>
            </div>

            <h2 class="section-title">Statistic Boxes (Link)</h2>
            <div class="row">
              <div class="col-12 col-sm-6 col-lg-3">
                <div class="card card-sm">
                  <div class="card-icon text-primary">
                    <i class="ion ion-person"></i>
                  </div>
                  <div class="card-wrap">
                    <div class="card-body">
                      10
                    </div>
                    <div class="card-header pb-0">
                      <h4>Total Admin</h4>
                    </div>
                  </div>
                  <div class="card-cta">
                    <a href="#">More Info <i class="ion ion-ios-arrow-right"></i></a>
                  </div>
                </div>
              </div>
              <div class="col-12 col-sm-6 col-lg-3">
                <div class="card card-sm">
                  <div class="card-icon text-danger">
                    <i class="ion ion-ios-paper-outline"></i>
                  </div>
                  <div class="card-wrap">
                    <div class="card-body">
                      42
                    </div>
                    <div class="card-header pb-0">
                      <h4>News</h4>
                    </div>
                  </div>
                  <div class="card-cta">
                    <a href="#">More Info <i class="ion ion-ios-arrow-right"></i></a>
                  </div>
                </div>
              </div>
              <div class="col-12 col-sm-6 col-lg-3">
                <div class="card card-sm">
                  <div class="card-icon text-warning">
                    <i class="ion ion-paper-airplane"></i>
                  </div>
                  <div class="card-wrap">
                    <div class="card-body">
                      1,201
                    </div>
                    <div class="card-header pb-0">
                      <h4>Reports</h4>
                    </div>
                  </div>
                  <div class="card-cta">
                    <a href="#">More Info <i class="ion ion-ios-arrow-right"></i></a>
                  </div>
                </div>
              </div>
              <div class="col-12 col-sm-6 col-lg-3">
                <div class="card card-sm">
                  <div class="card-icon text-success">
                    <i class="ion ion-record"></i>
                  </div>
                  <div class="card-wrap">
                    <div class="card-body">
                      47
                    </div>
                    <div class="card-header pb-0">
                      <h4>Online Users</h4>
                    </div>
                  </div>
                  <div class="card-cta">
                    <a href="#">More Info <i class="ion ion-ios-arrow-right"></i></a>
                  </div>
                </div>
              </div>
            </div>

            <h2 class="section-title">Cards</h2>
            <div class="row">
              <div class="col-12 col-sm-6 col-lg-3">
                <div class="card">
                  <div class="card-header">
                    <h4>Card Title</h4>
                  </div>
                  <div class="card-body">
                    Your content
                  </div>
                  <div class="card-footer">
                    Card footer
                  </div>
                </div>
              </div>
              <div class="col-12 col-sm-6 col-lg-3">
                <div class="card card-primary">
                  <div class="card-header">
                    <h4>Card Title</h4>
                  </div>
                  <div class="card-body">
                    <code>.card-primary</code>
                  </div>
                  <div class="card-footer">
                    Card footer
                  </div>
                </div>
              </div>
              <div class="col-12 col-sm-6 col-lg-3">
                <div class="card card-secondary">
                  <div class="card-header">
                    <h4>Card Title</h4>
                  </div>
                  <div class="card-body">
                    <code>.card-secondary</code>
                  </div>
                  <div class="card-footer">
                    Card footer
                  </div>
                </div>
              </div>
              <div class="col-12 col-sm-6 col-lg-3">
                <div class="card card-success">
                  <div class="card-header">
                    <h4>Card Title</h4>
                  </div>
                  <div class="card-body">
                    <code>.card-success</code>
                  </div>
                  <div class="card-footer">
                    Card footer
                  </div>
                </div>
              </div>
            </div>
            <div class="row mt-4">
              <div class="col-12 col-sm-6 col-lg-3">
                <div class="card card-danger">
                  <div class="card-header">
                    <h4>Card Title</h4>
                  </div>
                  <div class="card-body">
                    <code>.card-danger</code>
                  </div>
                  <div class="card-footer">
                    Card footer
                  </div>
                </div>
              </div>
              <div class="col-12 col-sm-6 col-lg-3">
                <div class="card card-warning">
                  <div class="card-header">
                    <h4>Card Title</h4>
                  </div>
                  <div class="card-body">
                    <code>.card-warning</code>
                  </div>
                  <div class="card-footer">
                    Card footer
                  </div>
                </div>
              </div>
              <div class="col-12 col-sm-6 col-lg-3">
                <div class="card card-info">
                  <div class="card-header">
                    <h4>Card Title</h4>
                  </div>
                  <div class="card-body">
                    <code>.card-info</code>
                  </div>
                  <div class="card-footer">
                    Card footer
                  </div>
                </div>
              </div>
              <div class="col-12 col-sm-6 col-lg-3">
                <div class="card card-dark">
                  <div class="card-header">
                    <h4>Card Title</h4>
                  </div>
                  <div class="card-body">
                    <code>.card-dark</code>
                  </div>
                  <div class="card-footer">
                    Card footer
                  </div>
                </div>
              </div>
            </div>
            <h2 class="section-title">Cards (Function)</h2>
            <div class="row">
              <div class="col-12 col-sm-6 col-lg-6">
                <div class="card">
                  <div class="card-header">
                    <div class="float-right">
                      <a data-collapse="#mycard-collapse" class="btn btn-icon"><i class="ion ion-minus"></i></a>
                    </div>
                    <h4>Show/Hide</h4>
                  </div>
                  <div class="collapse show" id="mycard-collapse">
                    <div class="card-body">
                      You can show or hide this card.
                    </div>
                    <div class="card-footer">
                      Card Footer
                    </div>
                  </div>
                </div>
              </div>
              <div class="col-12 col-sm-6 col-lg-6">
                <div class="card" id="mycard-dimiss">
                  <div class="card-header">
                    <div class="float-right">
                      <a data-dismiss="#mycard-dimiss" class="btn btn-icon"><i class="ion ion-close"></i></a>
                    </div>
                    <h4>Dismiss</h4>
                  </div>
                  <div class="card-body">
                    You can dimiss this card.
                  </div>
                  <div class="card-footer">
                    Card Footer
                  </div>
                </div>
              </div>
            </div>

            <h2 class="section-title">Statistics</h2>
            <div class="row">
              <div class="col-12 col-sm-12 col-lg-6">
                <div class="card">
                  <div class="card-header">
                    <div class="float-right">
                      <div class="btn-group">
                        <a href="#summary-chart" data-tab="summary-tab" class="btn active">Chart</a>
                        <a href="#summary-text" data-tab="summary-tab" class="btn">Text</a>
                      </div>
                    </div>
                    <h4>Summary</h4>
                  </div>
                  <div class="card-body">
                    <div class="summary">
                      <div class="summary-info" data-tab-group="summary-tab" id="summary-text">
                        <h4>$1,858</h4>
                        <div class="text-muted">Sold 4 items on 2 customers</div>
                        <div class="d-block mt-2">                              
                          <a href="#">View All</a>
                        </div>
                      </div>
                      <div class="summary-chart active" data-tab-group="summary-tab" id="summary-chart">
                        <canvas id="myChart" height="150"></canvas>
                      </div>
                      <div class="summary-item">
                        <h6>Item List <span class="text-muted">(4 Items)</span></h6>
                        <ul class="list-unstyled list-unstyled-border">
                          <li class="media">
                            <a href="#">
                              <img alt="image" class="mr-3 rounded" width="50" src="/img/p-50.png" alt="product">
                            </a>
                            <div class="media-body">
                              <div class="media-right">$805</div>
                              <div class="media-title"><a href="#">Macbook Pro</a></div>
                              <small class="text-muted">by <a href="#">Hasan Basri</a> <div class="bullet"></div> Sunday</small>
                            </div>
                          </li>
                          <li class="media">
                            <a href="#">
                              <img alt="image" class="mr-3 rounded" width="50" src="/img/p-50.png" alt="product">
                            </a>
                            <div class="media-body">
                              <div class="media-right">$405</div>
                              <div class="media-title"><a href="#">PlayStation 4</a></div>
                              <small class="text-muted">by <a href="#">Hasan Basri</a> <div class="bullet"></div> Sunday</small>
                            </div>
                          </li>
                          <li class="media">
                            <a href="#">
                              <img alt="image" class="mr-3 rounded" width="50" src="/img/p-50.png" alt="product">
                            </a>
                            <div class="media-body">
                              <div class="media-right">$499</div>
                              <div class="media-title"><a href="#">Drone</a></div>
                              <small class="text-muted">by <a href="#">Hasan Basri</a> <div class="bullet"></div> Sunday
                              </small>
                            </div>
                          </li>
                          <li class="media">
                            <a href="#">
                              <img alt="image" class="mr-3 rounded" width="50" src="/img/p-50.png" alt="product">
                            </a>
                            <div class="media-body">
                              <div class="media-right">$149</div>
                              <div class="media-title"><a href="#">Xiaomi Redmi 4A</a></div>
                              <small class="text-muted">by <a href="#">Kusnaedi</a> <div class="bullet"></div> Tuesday
                              </small>
                            </div>
                          </li>
                        </ul>
                      </div>
                    </div>
                  </div>
                </div>
              </div>
              <div class="col-12 col-sm-12 col-lg-6">
                <div class="card">
                  <div class="card-header">
                    <div class="float-right">
                      <div class="btn-group">
                        <a href="#" class="btn active">Week</a>
                        <a href="#" class="btn">Month</a>
                        <a href="#" class="btn">Year</a>
                      </div>
                    </div>
                    <h4>Statistics</h4>
                  </div>
                  <div class="card-body">
                    <canvas id="myChart2" height="180"></canvas>
                    <div class="statistic-details mt-1">
                      <div class="statistic-details-item">
                        <small class="text-muted"><span class="text-primary"><i class="ion-arrow-up-b"></i></span> 7%</small>
                        <div class="detail-value">$243</div>
                        <div class="detail-name">Today</div>
                      </div>
                      <div class="statistic-details-item">
                        <small class="text-muted"><span class="text-danger"><i class="ion-arrow-down-b"></i></span> 23%</small>
                        <div class="detail-value">$2,902</div>
                        <div class="detail-name">This Week</div>
                      </div>
                      <div class="statistic-details-item">
                        <small class="text-muted"><span class="text-primary"><i class="ion-arrow-up-b"></i></span>9%</small>
                        <div class="detail-value">$12,821</div>
                        <div class="detail-name">This Month</div>
                      </div>
                      <div class="statistic-details-item">
                        <small class="text-muted"><span class="text-primary"><i class="ion-arrow-up-b"></i></span> 19%</small>
                        <div class="detail-value">$92,142</div>
                        <div class="detail-name">This Year</div>
                      </div>
                    </div>
                  </div>
                </div>
        
                <div class="card mt-4">
                  <div class="card-header">
                    <h4>Popular Browser</h4>
                  </div>
                  <div class="card-body">
                    <div class="row">
                      <div class="col mb-md-4 text-center">
                        <div class="browser browser-chrome"></div>
                        <div class="mt-2 font-weight-bold">Chrome</div>
                        <small class="text-muted"><span class="text-primary"><i class="ion-arrow-up-b"></i></span> 48%</small>
                      </div>
                      <div class="col mb-md-4 text-center">
                        <div class="browser browser-firefox"></div>
                        <div class="mt-2 font-weight-bold">Firefox</div>
                        <small class="text-muted"><span class="text-primary"><i class="ion-arrow-up-b"></i></span> 26%</small>
                      </div>
                      <div class="col mb-md-4 text-center">
                        <div class="browser browser-safari"></div>
                        <div class="mt-2 font-weight-bold">Safari</div>
                        <small class="text-muted"><span class="text-danger"><i class="ion-arrow-down-b"></i></span> 14%</small>
                      </div>
                      <div class="col mb-md-4 text-center">
                        <div class="browser browser-opera"></div>
                        <div class="mt-2 font-weight-bold">Opera</div>
                        <small class="text-muted">7%</small>
                      </div>
                      <div class="col mb-md-4 text-center">
                        <div class="browser browser-internet-explorer"></div>
                        <div class="mt-2 font-weight-bold">IE</div>
                        <small class="text-muted"><span class="text-primary"><i class="ion-arrow-up-b"></i></span> 5%</small>
                      </div>
                    </div>
                  </div>
                </div>
              </div>
            </div>
            <h2 class="section-title">Tabs</h2>
            <div class="row">
              <div class="col-12 col-sm-6 col-lg-6">
                <div class="card">
                  <div class="card-header">
                    <h4>Default Tab</h4>
                  </div>
                  <div class="card-body">
                    <ul class="nav nav-tabs" id="myTab" role="tablist">
                      <li class="nav-item">
                        <a class="nav-link active" id="home-tab" data-toggle="tab" href="#home" role="tab" aria-controls="home" aria-selected="true">Home</a>
                      </li>
                      <li class="nav-item">
                        <a class="nav-link" id="profile-tab" data-toggle="tab" href="#profile" role="tab" aria-controls="profile" aria-selected="false">Profile</a>
                      </li>
                      <li class="nav-item">
                        <a class="nav-link" id="contact-tab" data-toggle="tab" href="#contact" role="tab" aria-controls="contact" aria-selected="false">Contact</a>
                      </li>
                    </ul>
                    <div class="tab-content" id="myTabContent">
                      <div class="tab-pane fade show active" id="home" role="tabpanel" aria-labelledby="home-tab">
                        Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod
                        tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,
                        quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo
                        consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse
                        cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non
                        proident, sunt in culpa qui officia deserunt mollit anim id est laborum.
                      </div>
                      <div class="tab-pane fade" id="profile" role="tabpanel" aria-labelledby="profile-tab">
                        Sed sed metus vel lacus hendrerit tempus. Sed efficitur velit tortor, ac efficitur est lobortis quis. Nullam lacinia metus erat, sed fermentum justo rutrum ultrices. Proin quis iaculis tellus. Etiam ac vehicula eros, pharetra consectetur dui. Aliquam convallis neque eget tellus efficitur, eget maximus massa imperdiet. Morbi a mattis velit. Donec hendrerit venenatis justo, eget scelerisque tellus pharetra a.
                      </div>
                      <div class="tab-pane fade" id="contact" role="tabpanel" aria-labelledby="contact-tab">
                        Vestibulum imperdiet odio sed neque ultricies, ut dapibus mi maximus. Proin ligula massa, gravida in lacinia efficitur, hendrerit eget mauris. Pellentesque fermentum, sem interdum molestie finibus, nulla diam varius leo, nec varius lectus elit id dolor. Nam malesuada orci non ornare vulputate. Ut ut sollicitudin magna. Vestibulum eget ligula ut ipsum venenatis ultrices. Proin bibendum bibendum augue ut luctus.
                      </div>
                    </div>
                  </div>
                </div>
              </div>
              <div class="col-12 col-sm-6 col-lg-6">
                <div class="card">
                  <div class="card-header">
                    <h4>Bordered Tab</h4>
                  </div>
                  <div class="card-body">
                    <ul class="nav nav-tabs" id="myTab2" role="tablist">
                      <li class="nav-item">
                        <a class="nav-link active" id="home-tab2" data-toggle="tab" href="#home2" role="tab" aria-controls="home" aria-selected="true">Home</a>
                      </li>
                      <li class="nav-item">
                        <a class="nav-link" id="profile-tab2" data-toggle="tab" href="#profile2" role="tab" aria-controls="profile" aria-selected="false">Profile</a>
                      </li>
                      <li class="nav-item">
                        <a class="nav-link" id="contact-tab2" data-toggle="tab" href="#contact2" role="tab" aria-controls="contact" aria-selected="false">Contact</a>
                      </li>
                    </ul>
                    <div class="tab-content tab-bordered" id="myTab2Content">
                      <div class="tab-pane fade show active" id="home2" role="tabpanel" aria-labelledby="home-tab2">
                        Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod
                        tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,
                        quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo
                        consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse
                        cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non
                        proident, sunt in culpa qui officia deserunt mollit anim id est laborum.
                      </div>
                      <div class="tab-pane fade" id="profile2" role="tabpanel" aria-labelledby="profile-tab2">
                        Sed sed metus vel lacus hendrerit tempus. Sed efficitur velit tortor, ac efficitur est lobortis quis. Nullam lacinia metus erat, sed fermentum justo rutrum ultrices. Proin quis iaculis tellus. Etiam ac vehicula eros, pharetra consectetur dui. Aliquam convallis neque eget tellus efficitur, eget maximus massa imperdiet. Morbi a mattis velit. Donec hendrerit venenatis justo, eget scelerisque tellus pharetra a.
                      </div>
                      <div class="tab-pane fade" id="contact2" role="tabpanel" aria-labelledby="contact-tab2">
                        Vestibulum imperdiet odio sed neque ultricies, ut dapibus mi maximus. Proin ligula massa, gravida in lacinia efficitur, hendrerit eget mauris. Pellentesque fermentum, sem interdum molestie finibus, nulla diam varius leo, nec varius lectus elit id dolor. Nam malesuada orci non ornare vulputate. Ut ut sollicitudin magna. Vestibulum eget ligula ut ipsum venenatis ultrices. Proin bibendum bibendum augue ut luctus.
                      </div>
                    </div>
                  </div>
                </div>
              </div>
            </div>
            <div class="row mt-4">
              <div class="col-12 col-sm-5 col-lg-5">
                <div class="card">
                  <div class="card-header">
                    <h4>Tab <code>.nav-pills</code></h4>
                  </div>
                  <div class="card-body">
                    <ul class="nav nav-pills" id="myTab" role="tablist">
                      <li class="nav-item">
                        <a class="nav-link active" id="home-tab3" data-toggle="tab" href="#home3" role="tab" aria-controls="home" aria-selected="true">Home</a>
                      </li>
                      <li class="nav-item">
                        <a class="nav-link" id="profile-tab3" data-toggle="tab" href="#profile3" role="tab" aria-controls="profile" aria-selected="false">Profile</a>
                      </li>
                      <li class="nav-item">
                        <a class="nav-link" id="contact-tab3" data-toggle="tab" href="#contact3" role="tab" aria-controls="contact" aria-selected="false">Contact</a>
                      </li>
                    </ul>
                    <div class="tab-content" id="myTabContent">
                      <div class="tab-pane fade show active" id="home3" role="tabpanel" aria-labelledby="home-tab3">
                        Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod
                        tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,
                        quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo
                        consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse
                        cillum dolore eu fugiat nulla pariatur.
                      </div>
                      <div class="tab-pane fade" id="profile3" role="tabpanel" aria-labelledby="profile-tab3">
                        Sed sed metus vel lacus hendrerit tempus. Sed efficitur velit tortor, ac efficitur est lobortis quis. Nullam lacinia metus erat, sed fermentum justo rutrum ultrices. Proin quis iaculis tellus. Etiam ac vehicula eros, pharetra consectetur dui.
                      </div>
                      <div class="tab-pane fade" id="contact3" role="tabpanel" aria-labelledby="contact-tab3">
                        Vestibulum imperdiet odio sed neque ultricies, ut dapibus mi maximus. Proin ligula massa, gravida in lacinia efficitur, hendrerit eget mauris. Pellentesque fermentum, sem interdum molestie finibus, nulla diam varius leo, nec varius lectus elit id dolor.
                      </div>
                    </div>
                  </div>
                </div>
              </div>
              <div class="col-12 col-sm-7 col-lg-7">
                <div class="card">
                  <div class="card-header">
                    <h4>Bordered Tab</h4>
                  </div>
                  <div class="card-body">
                    <div class="row">
                      <div class="col-12 col-sm-12 col-md-4">
                        <ul class="nav nav-pills flex-column" id="myTab2" role="tablist">
                          <li class="nav-item">
                            <a class="nav-link active" id="home-tab4" data-toggle="tab" href="#home4" role="tab" aria-controls="home" aria-selected="true">Home</a>
                          </li>
                          <li class="nav-item">
                            <a class="nav-link" id="profile-tab4" data-toggle="tab" href="#profile4" role="tab" aria-controls="profile" aria-selected="false">Profile</a>
                          </li>
                          <li class="nav-item">
                            <a class="nav-link" id="contact-tab4" data-toggle="tab" href="#contact4" role="tab" aria-controls="contact" aria-selected="false">Contact</a>
                          </li>
                        </ul>
                      </div>
                      <div class="col-12 col-sm-12 col-md-8">
                        <div class="tab-content" id="myTab2Content">
                          <div class="tab-pane fade show active" id="home4" role="tabpanel" aria-labelledby="home-tab4">
                            Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod
                            tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,
                            quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo
                            consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse
                            cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non
                            proident, sunt in culpa qui officia deserunt mollit anim id est laborum.
                          </div>
                          <div class="tab-pane fade" id="profile4" role="tabpanel" aria-labelledby="profile-tab4">
                            Sed sed metus vel lacus hendrerit tempus. Sed efficitur velit tortor, ac efficitur est lobortis quis. Nullam lacinia metus erat, sed fermentum justo rutrum ultrices. Proin quis iaculis tellus. Etiam ac vehicula eros, pharetra consectetur dui. Aliquam convallis neque eget tellus efficitur, eget maximus massa imperdiet. Morbi a mattis velit. Donec hendrerit venenatis justo, eget scelerisque tellus pharetra a.
                          </div>
                          <div class="tab-pane fade" id="contact4" role="tabpanel" aria-labelledby="contact-tab4">
                            Vestibulum imperdiet odio sed neque ultricies, ut dapibus mi maximus. Proin ligula massa, gravida in lacinia efficitur, hendrerit eget mauris. Pellentesque fermentum, sem interdum molestie finibus, nulla diam varius leo, nec varius lectus elit id dolor. Nam malesuada orci non ornare vulputate. Ut ut sollicitudin magna. Vestibulum eget ligula ut ipsum venenatis ultrices. Proin bibendum bibendum augue ut luctus.
                          </div>
                        </div>
                      </div>
                    </div>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </section>
      </div>
      <footer class="main-footer">
        <div class="footer-left">
          Copyright &copy; 2018 <div class="bullet"></div> Design By <a href="https://multinity.com/">Multinity</a>
        </div>
        <div class="footer-right"></div>
      </footer>
    </div>
  </div>

  <script src="/modules/jquery.min.js"></script>
  <script src="/modules/popper.js"></script>
  <script src="/modules/tooltip.js"></script>
  <script src="/modules/bootstrap/js/bootstrap.min.js"></script>
  <script src="/modules/nicescroll/jquery.nicescroll.min.js"></script>
  <script src="/modules/scroll-up-bar/dist/scroll-up-bar.min.js"></script>
  
  
  <script src="/js/sa-functions.js"></script>  
  <script src="/modules/chart.min.js"></script>

  <script>
    var ctx = document.getElementById("myChart").getContext('2d');
    var myChart = new Chart(ctx, {
      type: 'line',
      data: {
        labels: ["Sunday", "Monday", "Tuesday", "Wednesday", "Thursday", "Friday", "Saturday"],
        datasets: [{
          label: 'Statistics',
          data: [460, 458, 330, 502, 430, 610, 488],
          borderWidth: 2,
          backgroundColor: 'rgb(87,75,144)',
          borderColor: 'rgb(87,75,144)',
          borderWidth: 2.5,
          pointBackgroundColor: '#ffffff',
          pointRadius: 4
        },{
          label: 'Statistics',
          data: [550, 558, 390, 562, 490, 670, 538],
          borderWidth: 2,
          backgroundColor: 'rgba(0, 0, 0, .15)',
          borderColor: 'transparent',
          borderWidth: 0,
          pointBackgroundColor: '#999',
          pointRadius: 4
        }]
      },
      options: {
        legend: {
          display: false
        },
        scales: {
          yAxes: [{
            ticks: {
              beginAtZero: true,
              stepSize: 150
            }
          }],
          xAxes: [{
            ticks: {
              display: false
            },
            gridLines: {
              display: false
            }
          }]
        },
      }
    });

    var ctx = document.getElementById("myChart2").getContext('2d');
    var myChart = new Chart(ctx, {
      type: 'bar',
      data: {
        labels: ["Sunday", "Monday", "Tuesday", "Wednesday", "Thursday", "Friday", "Saturday"],
        datasets: [{
          label: 'Statistics',
          data: [460, 458, 330, 502, 430, 610, 488],
          borderWidth: 2,
          backgroundColor: 'rgba(220, 53, 69, 1)',
          borderColor: 'rgba(220, 53, 69, 1)',
          borderWidth: 2.5,
          pointBackgroundColor: '#ffffff',
          pointRadius: 4
        },{
          label: 'Statistics',
          data: [550, 558, 390, 562, 490, 670, 538],
          borderWidth: 2,
          backgroundColor: 'rgba(0, 0, 0, .15)',
          borderColor: 'transparent',
          borderWidth: 0,
          pointBackgroundColor: '#999',
          pointRadius: 4
        }]
      },
      options: {
        legend: {
          display: false
        },
        scales: {
          yAxes: [{
            ticks: {
              beginAtZero: true,
              stepSize: 150
            }
          }],
          xAxes: [{
            gridLines: {
              display: false
            }
          }]
        },
      }
    });
  </script>
  <script src="/js/scripts.js"></script>
  <script src="/js/custom.js"></script>
  <script src="/js/demo.js"></script>
</body>
</html>