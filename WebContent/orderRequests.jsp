<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
 <%@ page import="java.util.*" %>
 <%@ page import="model.Order" %>
 <%@ page import="model.User" %>
 <%@ page import="database.DBAccess" %>
 <%@ page import="utility.Helper" %>
 <%@ page import="model.Address" %>
 <%!List<Order> orders=new ArrayList<Order>();%>
 
                    <% 
                    User user = (User)session.getAttribute("user");
                    orders=DBAccess.JAK_SP_GetOrders(0, "PU");
                 
                    %>
<!DOCTYPE html>
<html>
<jsp:include page="WEB-INF/templates/chef-navbar.jsp" />
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Rent_A_Chef</title>
    <link rel="stylesheet" href="assets/bootstrap/css/bootstrap.min.css">
    <link rel="stylesheet" href="assets/fonts/font-awesome.min.css">
    <link rel="stylesheet" href="assets/fonts/ionicons.min.css">
    <link rel="stylesheet" href="assets/css/Features-Blue.css">
    <link rel="stylesheet" href="assets/css/Footer-Basic.css">
    <link rel="stylesheet" href="assets/css/Login-Form-Clean.css">
    <link rel="stylesheet" href="assets/css/Navigation-with-Button.css">
    <link rel="stylesheet" href="assets/css/Registration-Form-with-Photo.css">
    <link rel="stylesheet" href="assets/css/styles1.css">
</head>

<body>
    <nav class="navbar navbar-light navbar-expand-md navigation-clean-button">
        <div class="container"><a class="navbar-brand" href="chefLanding.html">Rent - A - Chef</a><button class="navbar-toggler" data-toggle="collapse" data-target="#navcol-1"><span class="sr-only">Toggle navigation</span><span class="navbar-toggler-icon"></span></button>
            <div
                class="collapse navbar-collapse" id="navcol-1">
                <ul class="nav navbar-nav mr-auto">
                    <li class="nav-item" role="presentation"><a class="nav-link" href="orderRequests.html">Order Requests</a></li>
                    <li class="nav-item" role="presentation"><a class="nav-link" href="mySchedule.html">My Schedule</a></li>
                    <li class="dropdown"><a class="dropdown-toggle nav-link dropdown-toggle" data-toggle="dropdown" aria-expanded="false" href="#">Account</a>
                        <div class="dropdown-menu" role="menu"><a class="dropdown-item" role="presentation" href="orderHistory.html">Order History</a><a class="dropdown-item" role="presentation" href="profile.html">Profile</a><a class="dropdown-item" role="presentation" href="paymentOptions.html">Payment Options</a></div>
                    </li>
                </ul><span class="navbar-text actions"> <a class="btn btn-light action-button" role="button" href="login.html">Logout</a></span></div>
        </div>
    </nav>
    <div class="table-responsive">
        <table class="table">
            <thead>
            <%for(Order order:orders) {
            	Address address=DBAccess.JAK_SP_GetAddress(order.scheduledAddressId);
            %>
                <tr>
                    <th><%=order.orderId %></th>
                    <th><%=order.orderStatusDescription %></th>
                    <th>Dish Requested</th>
                    <th>Action</th>
                </tr>
               <%} %>
            </thead>
            <tbody>
                <tr>
                    <td>This data should be pulled from db</td>
                    <td>This data should be pulled from db<br></td>
                    <td>This data should be pulled from db<br></td>
                    <td><button class="btn btn-primary" type="button">Accept</button><button class="btn btn-danger" type="button">Decline</button></td>
                </tr>
                <tr>
                    <td>pulled from db</td>
                    <td>08/24/2019</td>
                    <td>pulled from db</td>
                    <td><button class="btn btn-primary" type="button">Accept</button><button class="btn btn-danger" type="button">Decline</button></td>
                </tr>
            </tbody>
        </table>
    </div>
    <script src="assets/js/jquery.min.js"></script>
    <script src="assets/bootstrap/js/bootstrap.min.js"></script>
</body>

</html>