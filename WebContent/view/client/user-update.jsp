<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>

<!-- Start header section -->
<jsp:include page = "./header/mainHeader.jsp" flush = "true" />
<!-- / header section -->
<!--  content -->
<!-- catg header banner section -->
<section id="aa-catg-head-banner">
    <img src="${pageContext.request.contextPath}/view/client/assets/images/archive-banner.png" alt="banner blog">
    <div class="aa-catg-head-banner-area">
        <div class="container">
            <div class="aa-catg-head-banner-content">
                <h2>Cài đặt tài khoản</h2>
                <ol class="breadcrumb">
                    <li><a href="${pageContext.request.contextPath}/">Trang chủ</a></li>                   
                    <li style="color:#fff">Cập nhật thông </li>
                </ol>
            </div>
        </div>
    </div>
</section>
<!-- / catg header banner section -->

<!-- Cart view section -->
<section id="aa-myaccount">
    <div class="container">
        <div class="row">
            <div class="col-md-12">
                <div class="aa-myaccount-area">         
                    <div class="row">

                        <div class="col-md-8 col-md-push-2">
                            <div class="aa-myaccount-register">                 
                                <h4>Cập nhật thông tin</h4>
                                <form name="formRegister" class="aa-login-form" method="post" action="${pageContext.request.contextPath}/view/client/userupdate" >
                                    <div class="form-group">
                                        <label for="input-1">ID</label>
                                        <input type="text" class="form-control" id="input-1" readonly="readonly" placeholder="ID" value="${user.id}" name="user-id">
                                    </div>
                                    <div class="form-group">
                                        <label for="input-1">Họ tên</label>
                                        <input type="text" class="form-control" id="input-2" placeholder="Họ tên" value="${user.name}" name="user-name">
                                    </div>
                                    <div class="form-group">
                                        <label for="input-2">Email</label>
                                        <input type="text" class="form-control" id="input-3" placeholder="Địa chỉ Email" value="${user.email}" name="user-email">
                                    </div>
                                    <div class="form-group">
                                        <label for="input-3">Số điện thoại</label>
                                        <input type="text" class="form-control" id="input-4" placeholder="Số điện thoại" value="${user.phone}" name="user-phone">
                                    </div>
                                    <div class="form-group">
                                        <label for="input-3">UserName</label>
                                        <input type="text" class="form-control" id="input-5" placeholder="Username" value="${user.username}" name="user-userName">
                                    </div>
                                    <div class="form-group">
                                        <label for="input-4">Mật khẩu</label>
                                        <input type="password" class="form-control" id="myinput" placeholder="Mật khẩu" value="${user.password}" name="user-password">
                                        <input type="checkbox" onclick="myFunction1()">Hiển thị mật khẩu
                                        <script>function myFunction1() {
                                                var x = document.getElementById("myinput");
                                                if (x.type === "password") {
                                                    x.type = "text";
                                                } else {
                                                    x.type = "password";
                                                }
                                            }
                                        </script>                   
                                    </div>
                                    <div class="form-group">
                                        <label for="input-5">Date</label>
                                        <input type="date" class="form-control" id="input-6" placeholder="Ngày tạo" value="${user.created}" name="user-created">
                                    </div>

                                    <div class="form-group">
                                        <button class="btn btn-danger"><a href="${pageContext.request.contextPath}/">Hủy</a></button>

                                        <button type="submit" class="btn btn-success">Cập nhật</button>
                                    </div>                 
                                </form>
                            </div>
                        </div>
                    </div>          
                </div>
            </div>
        </div>
    </div>
</section>
<!-- / Cart view section -->

<!--  end content-->
<script>
    var date = new Date();

    var day = date.getDate();
    var month = date.getMonth() + 1;
    var year = date.getFullYear();

    if (month < 10)
        month = "0" + month;
    if (day < 10)
        day = "0" + day;

    var today = year + "-" + month + "-" + day;


    document.getElementById('the-date').value = today;
</script>
<!--  footer-->
<jsp:include page = "./footer/footer.jsp" flush = "true" />
<!-- end footer-->


