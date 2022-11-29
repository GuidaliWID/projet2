<%@page import="service.ProductService"%>
<%@page import="java.util.ArrayList"%>
<%@page import="entities.Cart"%>

<%@page import="java.util.List"%>
<%@page import="service.MarqueService"%>
<%@page import="service.CategorieService"%>
<%@page import="service.ProduitService"%>
<%@page import="entities.Produit"%>
<%@page import="service.ClientService"%>
<%@page import="service.Connexion"%>
<%@page import="entities.Client"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=0">
<title>E-Shop - Dashboard</title>

<link rel="shortcut icon" type="image/x-icon" href="images/m.jfif">

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
<a href="Cart.jsp" class="logo">
    <img src="assets/img/cote2.png" alt="Logo" height="50">
        
        </a>
        <a href="Cart.jsp" class="logo logo-small">
          <img src="assets/img/m.jfif" alt="Logo">  
        </a>
    </a> 
</div>

<a href="javascript:void(0);" id="toggle_btn">
<i class="fe fe-text-align-left"></i>
</a>
<div class="top-nav-search">

</div>

<a class="mobile_btn" id="mobile_btn">
<i class="fa fa-bars"></i>
</a>


<ul class="nav user-menu">




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

    <a class="dropdown-item" href="./Deconnexion">Logout</a> 
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
<li class="active">
<a href="Accueil.jsp"><i class="fe fe-home"></i> <span>Accueil</span></a>
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
<h3 class="page-title"></h3>
<ul class="breadcrumb">

</ul>
</div>
</div>
</div>

      
<div class="row">
<div class="col-md-12 d-flex">

<div class="card card-table flex-fill">
<div class="card-body">
<div class="table-responsive">
    <form  action="AjouterCommande" method="Post" >
<table class="table table-hover table-center mb-0">
<thead>
<tr>
<th>Quatit�</th>
<th>Nom de produit</th>
<th>Prix</th>
<th></th>

<th class="text-end">Action</th>
</tr>
</thead>
<tbody>
    
    <%//ArrayList<Cart> cart_list = (ArrayList<Cart>) session.getAttribute("cart-list");
//List<Cart> cartProduct = null;
//if (cart_list != null) {
	//ProductDao pDao = new ProductDao(DbCon.getConnection());
	//cartProduct = pDao.getCartProducts(cart_list);
	//double total = pDao.getTotalCartPrice(cart_list);
	//request.setAttribute("total", total);
	//request.setAttribute("cart_list", cart_list);
//}
%>
    
     <%! double total = 0;%>
                <%
                    HttpSession sessio = request.getSession();
                    ArrayList<Cart> paniers = (ArrayList<Cart>) sessio.getAttribute("listpr");
                    List<Cart> cartProduct = null;
                    if (paniers != null) {
                        ProductService pDao = new ProductService(Connexion.getInstance().getConnection());
                        cartProduct=pDao.getCartProducts(paniers);
                        request.setAttribute("listpr", paniers);
                        for (Cart p : cartProduct) {
                            total += p.getPrix();

                %> 
<tr>
   

<td><%= p.getQuantity()%></td>

<td><%= p.getNom()%></td>
<td><%= p.getPrix()%> DH</td>
<td><img src=<%="ressource\\images\\" + p.getImage()%>></td>

<td class="text-end">
    
<div class="actions">

<a href="RemoveFromCart?id=<%= p.getId()%>" class="btn btn-sm bg-danger-light">
    
<i class="fe fe-trash"></i>
 </a>
</div>
</td>

</tr>
<input type="hidden" name="id" value="<%= p.getId()%>" class="form-input">
<%    }
                    } %>
</tbody>
</table>

<table class="table table-hover table-center mb-0">
<thead>
<tr>
<th style="text-align: center;">Total: <%=total%> DH</th>

<th style="text-align: center;"><button type="submit" class="btn btn-primary btn-sm" />Valider la commande</button></th>



</tr>
</thead>
</table>
</form>
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
