<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=0">
<title>Dreamchat - Dashboard</title>

<link rel="shortcut icon" type="image/x-icon" href="assets/img/favicon.png">

<link rel="stylesheet" href="assets/css/bootstrap.min.css">

<link rel="stylesheet" href="assets/css/font-awesome.min.css">

<link rel="stylesheet" href="assets/css/feathericon.min.css">

<link rel="stylesheet" href="assets/plugins/morris/morris.css">

<link rel="stylesheet" href="assets/css/style.css">
</head>
<body>

<div class="main-wrapper">

<div class="header">

<div class="header-left">
    
</div>

<a href="javascript:void(0);" id="toggle_btn">
<i class="fe fe-text-align-left"></i>
</a>
<div class="top-nav-search">
<form>
<input type="text" class="form-control" placeholder="Search here">
<button class="btn" type="submit"><i class="fa fa-search"></i></button>
</form>
</div>

<a class="mobile_btn" id="mobile_btn">
<i class="fa fa-bars"></i>
</a>


<ul class="nav user-menu">

<li class="nav-item dropdown noti-dropdown">
<a href="#" class="dropdown-toggle nav-link" data-bs-toggle="dropdown">
<i class="fa fa-bell"></i> <span class="badge badge-pill">3</span>
</a>
<div class="dropdown-menu notifications">
<div class="topnav-dropdown-header">
<span class="notification-title">Notifications</span>
<a href="javascript:void(0)" class="clear-noti"> Clear All </a>
</div>
<div class="noti-content">
<ul class="notification-list">
<li class="notification-message">
<a href="#">
<div class="media d-flex">
<span class="avatar avatar-sm flex-shrink-0">
<img class="avatar-img rounded-circle" alt="User Image" src="assets/img/profiles/avatar-02.jpg">
</span>
<div class="media-body flex-grow-1">
<p class="noti-details"><span class="noti-title">Carlson Tech</span> has approved <span class="noti-title">your estimate</span></p>
<p class="noti-time"><span class="notification-time">4 mins ago</span></p>
</div>
</div>
</a>
</li>
<li class="notification-message">
<a href="#">
<div class="media d-flex">
<span class="avatar avatar-sm flex-shrink-0">
<img class="avatar-img rounded-circle" alt="User Image" src="assets/img/profiles/avatar-11.jpg">
</span>
<div class="media-body flex-grow-1">
<p class="noti-details"><span class="noti-title">International Software Inc</span> has sent you a invoice in the amount of <span class="noti-title">$218</span></p>
<p class="noti-time"><span class="notification-time">6 mins ago</span></p>
</div>
</div>
</a>
</li>
<li class="notification-message">
<a href="#">
<div class="media d-flex">
<span class="avatar avatar-sm flex-shrink-0">
<img class="avatar-img rounded-circle" alt="User Image" src="assets/img/profiles/avatar-17.jpg">
</span>
<div class="media-body flex-grow-1">
<p class="noti-details"><span class="noti-title">John Hendry</span> sent a cancellation request <span class="noti-title">Apple iPhone XR</span></p>
<p class="noti-time"><span class="notification-time">8 mins ago</span></p>
</div>
</div>
</a>
</li>
<li class="notification-message">
<a href="#">
<div class="media d-flex">
<span class="avatar avatar-sm flex-shrink-0">
<img class="avatar-img rounded-circle" alt="User Image" src="assets/img/profiles/avatar-13.jpg">
</span>
<div class="media-body flex-grow-1">
<p class="noti-details"><span class="noti-title">Mercury Software Inc</span> added a new product <span class="noti-title">Apple MacBook Pro</span></p>
<p class="noti-time"><span class="notification-time">12 mins ago</span></p>
</div>
</div>
</a>
</li>
</ul>
</div>
<div class="topnav-dropdown-footer">
<a href="#">View all Notifications</a>
</div>
</div>
</li>


<li class="nav-item dropdown has-arrow">
<a href="#" class="dropdown-toggle nav-link" data-bs-toggle="dropdown">
<span class="user-img"><img class="rounded-circle" src="assets/img/profiles/TT.jpg" width="31" alt="Seema Sisty"></span>
</a>
<div class="dropdown-menu">
<div class="user-header">
<div class="avatar avatar-sm">
<img src="assets/img/profiles/TT.jpg" alt="User Image" class="avatar-img rounded-circle">
</div>
<div class="user-text">
<h6>Admin</h6>
<p class="text-muted mb-0">Administrator</p>
</div>
</div>
<a class="dropdown-item" href="general.html">My Profile</a>
<a class="dropdown-item" href="general.html">Account Settings</a>
<a class="dropdown-item" href="login.html">Logout</a>
</div>
</li>

</ul>

</div>


<div class="sidebar" id="sidebar">
<div class="sidebar-inner slimscroll">
<div id="sidebar-menu" class="sidebar-menu">
<ul>
<li class="menu-title">
</li>
<li>
<a href="index.html"><i class="fe fe-home"></i> <span>Dashboard</span></a>
</li>
<li class="submenu">
<a href="#"><i class="fe fe-users"></i> <span> Users</span> <span class="menu-arrow"></span></a>
<ul style="display: none;">
<li><a href="users.html" class="active">Clients</a></li>
</ul>
</li>
<li class="submenu">
<a href="#"><i class="fe fe-gear"></i> <span> Settings </span> <span class="menu-arrow"></span></a>
<ul style="display: none;">
<li><a href="general.html">General</a></li>
</ul>
</li>
</ul>
</li>
</ul>
</div>
</div>
</div>
<div class="page-wrapper">
<div class="content container-fluid">
<div class="page-header">
<div class="row align-items-center">
<div class="col">
<h3 class="page-title">Clients</h3>
<ul class="breadcrumb">
<li class="breadcrumb-item"><a href="index.html">Dashboard</a></li>
</ul>
</div>
</div>
</div>
<div class="row">
<div class="col-md-12 d-flex">

<div class="card card-table flex-fill">
<div class="card-body">
<div class="table-responsive">
<table class="table table-hover table-center mb-0">
<thead>
<tr>
<th>Nom</th>
<th>Prenom</th>
<th>t�l�phone</th>
<th>Adresse</th>
<th>Id Commandes</th>
<th class="text-end">Action</th>
</tr>
</thead>
<tbody>
<tr>
<td>
<h2 class="table-avatar">
<a href="kk.html">Kadiri<span>#0001</span></a>
</h2>
</td>
<td>Yazid</td>
<td>0634357789</td>
<td>Hay Riad -Casablanca</td>
<td>01</td>
<td class="text-end">
<div class="actions">
<a href="#" class="btn btn-sm bg-success-light me-2">
<i class="fe fe-pencil"></i>
</a>
<a href="#" class="btn btn-sm bg-danger-light">
<i class="fe fe-trash"></i>
 </a>
</div>
</td>
</tr>
<tr>
<td>
<h2 class="table-avatar">
<a href="ss.html">Well<span>#0002</span></a>
</h2>
</td>
<td>Louis</td>
<td>0634252622</td>
<td>Hay Salam-Agadir</td>
<td>02</td>
<td class="text-end">
<div class="actions">
<a href="#" class="btn btn-sm bg-success-light me-2">
<i class="fe fe-pencil"></i>
</a>
<a href="#" class="btn btn-sm bg-danger-light">
<i class="fe fe-trash"></i>
</a>
</div>
</td>
</tr>
<tr>
<td>
<h2 class="table-avatar">
<a href="l.html"> Adel <span>#0003</span></a>
</h2>
</td>
<td>Dina</td>
<td>067383922</td>
<td>Ain borja-Casablanca</td>
<td>03</td>
<td class="text-end">
<div class="actions">
<a href="#" class="btn btn-sm bg-success-light me-2">
<i class="fe fe-pencil"></i>
</a>
<a href="#" class="btn btn-sm bg-danger-light">
<i class="fe fe-trash"></i>
</a>
</div>
</td>
</tr>
<tr>
<td>
<h2 class="table-avatar">
<a href="ge.html">Rawi<span>#0004</span></a>
</h2>
</td>
<td>Amina</td>
<td>0536273627</td>
<td>Hay Swaret Tanger</td>
<td>04</td>
<td class="text-end">
<div class="actions">
<a href="#" class="btn btn-sm bg-success-light me-2">
<i class="fe fe-pencil"></i>
</a>
<a href="#" class="btn btn-sm bg-danger-light">
<i class="fe fe-trash"></i>
</a>
</div>
</td>
</tr>
<tr>
<td>
<h2 class="table-avatar">
<a href="eral.html">Suiss<span>#0005</span></a>
</h2>
</td>
<td>Ihssan</td>
<td>0635352634</td>
<td>Bernoussi-Casablanca</td>
<td>05</td>
<td class="text-end">
<div class="actions">
<a href="#" class="btn btn-sm bg-success-light me-2">
<i class="fe fe-pencil"></i>
</a>
<a href="#" class="btn btn-sm bg-danger-light">
<i class="fe fe-trash"></i>
</a>
</div>
</td>
</tr>
<tr>
<td>
</td>
</a>
</div>
</td>
</tr>
</tbody>
</table>
</div>
</div>
</div>
</div>
</div>
</div>
</div>
</div>
<script src="assets/js/jquery-3.6.0.min.js"></script>

<script src="assets/js/bootstrap.bundle.min.js"></script>

<script src="assets/plugins/slimscroll/jquery.slimscroll.min.js"></script>

<script src="assets/js/script.js"></script>
</body>
</html>