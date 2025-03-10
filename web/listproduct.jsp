
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.2/css/all.min.css" />
        <style>
            /* Sidebar and Link Styles */
            .sidebar {
                background-color: #FFC1C1; /* Light pink */
                min-height: 100vh;
                padding: 20px;
            }
            .nav-link {
                color: white;
                font-weight: bold;
                transition: 0.3s;
            }
            .nav-link:hover {
                background-color: #ff9191;
                color: #fff;
                border-radius: 6px;
            }

            /* Page Title and Table Styles */
            h1 {
                color: #D2691E;
                margin-top: 20px;
            }
            .table-hover tbody tr:hover {
                background-color: #FFF5F5; /* Light pink for hover effect */
            }
            .table thead th {
                background-color: #FFC1C1;
                color: #4B4B4B;
            }

            /* Pagination Styles */
            .pagination .page-item.active .page-link {
                background-color: #D2691E;
                border-color: #D2691E;
                color: white;
            }
            .pagination .page-link {
                color: #D2691E;
            }
            .pagination .page-link:hover {
                background-color: #ff9191;
                color: #fff;
            }

            /* Container Padding */
            .content-container {
                padding: 20px;
            }
        </style>
        <script type="text/javascript">
            function doDelete(id) {
                if (confirm("are you sure to delete product id = " + id)) {
                    window.location = "delete-product?id=" + id;
                }
            }
        </script>
    </head>
    <body>
        <div class="d-flex">
            <div>
                <%@include file="sidebaradmin.jsp" %>
            </div>
            <div class="container">
                <div>
                    <div class="container">
                        <a href="list-category" class="btn btn-warning p-3" style="margin-bottom: 45px;margin-top: 30px; background:#58abff ">List Category</a>
                        <a href="add-product" class="btn btn-success p-3" style="margin-bottom: 45px;margin-top: 30px;">Add New Product</a>
                    </div>
                </div>
                <div class="container" style="margin-top: -30px">
                    <a href="list-product" style="text-decoration: none; "><h1 style="color: #58abff">List Product</h1></a>
                    <table class="table table-hover table-bordered">
                        <thead>
                            <tr>
                                <th scope="col">Product ID</th>
                                <th scope="col">Name</th>
                                <th scope="col">Category</th>
                                <th scope="col">Price</th>
                                <th scope="col">Quantity</th>
                                <th scope="col">Sold Quantity</th>
                                <th scope="col">Action</th>
                            </tr>
                        </thead>
                        <tbody>                     
                            <c:if test="${requestScope.list == null}">
                            <h2>No product was found</h2>
                        </c:if>
                        <c:if test="${requestScope.list != null}">
                            <c:forEach items = "${requestScope.list}" var="c">
                                <c:set var="id" value="${c.productId}"/> 
                                <tr>
                                    <td>${id}</td>
                                    <td>${c.productName}</td>
                                    <c:forEach var="a" items="${requestScope.catelist}">
                                        <c:if test="${a.categoryId == c.categoryId}">
                                            <td>${a.categoryName}</td>
                                        </c:if>
                                    </c:forEach>
                                            <td>${c.price}</td>
                                            <td>${c.quantity}</td>
                                            <td>${c.sold_quantity}</td>
                                    <td>
                                        <a href="update-product?id=${id}" class="btn btn-warning mr-2">Update</a>
                                        <a href="#" onclick="doDelete('${id}')" class="btn btn-danger">Delete</a>
                                    </td>
                                </tr>
                            </c:forEach>
                        </c:if>   
                        </tbody>
                    </table>
                    <c:if test="${requestScope.list != null}">
                        <nav aria-label="Page navigation example">
                            <ul class="pagination  justify-content-end">
                                <li class="page-item ${requestScope.page == 1 ? "disabled" :""}"><a class="page-link" href="list-product?page=${requestScope.page-1}">Previous</a></li>
                                    <c:forEach begin="1" end="${requestScope.endPage}" var="i">

                                    <li class="page-item ${requestScope.page ==i ?"active" :""}" ><a href="list-product?page=${i}" class="page-link" >${i}</a></li>
                                    </c:forEach>
                                <li class="page-item ${requestScope.page == requestScope.endPage || requestScope.endPage == 0 ? "disabled" :""}"><a class="page-link" href="list-product?page=${requestScope.page+1}">Next</a></li>
                            </ul>
                        </nav>
                    </c:if>
                </div>
            </div>
        </div>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js" integrity="sha384-IQsoLXl5PILFhosVNubq5LC7Qb9DXgDA9i+tQ8Zj3iwWAwPtgFTxbJ8NT4GN1R8p" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.min.js" integrity="sha384-cVKIPhGWiC2Al4u+LWgxfKTRIcfu0JTxR+EQDz/bgldoEyl4H0zUF0QKbrJ0EcQF" crossorigin="anonymous"></script>
    </body>
</html>
