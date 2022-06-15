
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
<section id="aa-contact">
    <div class="container">
        <div class="row">

            <div class="col-lg-12">
                <div class="card">
                    <div class="card-body">
                        <div class="aa-contact-top">
                            <h2>Danh sách các đơn hàng bạn đã đặt</h2>
                            <p>Nếu bạn nó bất cứ thắc mắc hay ý kiến gì cứ tìm đến chúng tôi.</p>
                        </div>
                        <div class="table-responsive">
                            <table class="table table-striped">
                                <thead>
                                    <tr>
                                        <th scope="col">#</th>
                                        <th scope="col">Người nhận</th>
                                        <th scope="col">Email</th>
                                        <th scope="col">SĐT</th>
                                        <th scope="col">Địa chỉ</th>
                                        <th scope="col">Ghi chú</th>
                                        <th scope="col">Tổng tiền</th>
                                        <th scope="col">Phương thức thanh toán</th>
                                        <th scope="col">Trạng thái</th>
                                        <th scope="col">Ngày tạo</th>

                                    </tr>
                                </thead>
                                <tbody>
                                    <c:forEach items="${orders}" var="order">
                                        <tr>
                                            <td scope="row">${order.id}</td>
                                            <td>${order.user_name}</td>
                                            <td>${order.user_mail}</td>
                                            <td>${order.user_phone}</td>
                                            <td>${order.address}</td>
                                            <td>${order.message}</td>
                                            <td>${order.amount} VNĐ</td>
                                            <td>  <c:choose>
                                                    <c:when test="${order.payment == 0}"> 
                                                        <c:out value="COD"/>
                                                    </c:when>
                                                    <c:otherwise>
                                                        <c:out value="Thẻ nội địa ATM"/>
                                                    </c:otherwise>
                                                </c:choose>

                                            </td>
                                            <td>
                                                <c:choose>
                                                    <c:when test="${order.status == NULL}"> 
                                                        <c:out value="Chưa thanh toán"/>
                                                    </c:when>
                                                    <c:otherwise>
                                                        <c:out value="Đã thanh toán"/>
                                                    </c:otherwise>
                                                </c:choose>
                                            </td>
                                            <td>${order.created}</td>
                                            <td>
                                                <button class="btn btn-success"><a href="${pageContext.request.contextPath}/view/client/orderdetail?id=${order.id}">Chi Tiết</a></button>
                                            </td>
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
</section>
<!--  end content-->

<!--  footer-->
<jsp:include page = "./footer/footer.jsp" flush = "true" />
<!-- end footer-->
