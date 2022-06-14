<%-- 
    Document   : list-orders
    Created on : Jun 14, 2022, 8:13:29 PM
    Author     : Vostro 5568
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<c:url value = "/view/client/assets" var="url"/>

<!-- Start header section -->
<jsp:include page = "./header/mainHeader.jsp" flush = "true" />
<!-- / header section -->


<!--  content -->
<!-- catg header banner section -->
<section id="aa-catg-head-banner">
    <img src="${pageContext.request.contextPath}/view/client/assets/images/banner-product.png" alt="banner đơn hàng">
    <div class="aa-catg-head-banner-area">
        <div class="container">
            <div class="aa-catg-head-banner-content">
                <h2>Đơn hàng</h2>
                <ol class="breadcrumb">
                    <li><a href="${pageContext.request.contextPath}/">Trang chủ</a></li>         
                    <li style="color:#fff">Đơn hàng</li>
                </ol>
            </div>
        </div>
    </div>
</section>           
<!-- / catg header banner section -->
<!-- start contact section -->
    <div class="content-wrapper">
      <div class="container-fluid">
        <!--End Row-->


        <div class="row">
 
          <div class="col-lg-12">
            <div class="card">
              <div class="card-body">
                <h5 class="card-title">Chi tiết đơn hàng</h5>
                <div class="table-responsive">
                  <table class="table table-striped">
                    <thead>
                      <tr>
                        <th scope="col">#</th>
                       <th scope="col">ID Đơn Hàng</th>
                        <th scope="col">ID Sản Phẩm</th>
                        <th scope="col">Tên Sản Phẩm</th>
                        <th scope="col">Giá</th>
                         <th scope="col">Số lượng</th>
                      </tr>
                    </thead>
                    <tbody>
                  <c:forEach items="${orderedlist}" var="orderedlist">
                      <tr>
                        <td scope="row">${orderedlist.id}</td>
                         <td>${orderedlist.transaction_id}</td>
                        <td>${orderedlist.product_id}</td>
                        <c:forEach items="${products}" var="products">
                        <c:if test="${products.id == orderedlist.product_id}">
	                        <td>${products.name}</td>
	                        <td>${products.price} VNĐ</td>
                        </c:if>
                        </c:forEach>
                         <td>${orderedlist.qty}</td>
                          
                     </tr>
                    </c:forEach>
                    </tbody>
                  </table>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
<!--  end content-->

<!--  footer-->
<jsp:include page = "./footer/footer.jsp" flush = "true" />
<!-- end footer-->