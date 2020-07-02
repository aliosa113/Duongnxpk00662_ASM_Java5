<%-- 
    Document   : loginform
    Created on : Apr 11, 2017, 10:49:15 PM
    Author     : DuongNguyen
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<div id="loginform" class="modal">
    <form class="modal-content animate" action="technews/login.htm" method="post">
        <div class="imgcontainer">
            <span onclick="document.getElementById('loginform').style.display = 'none'" class="close" title="Close Modal">&times;</span>
            <h1><span style="color: #ff4848;">Tech</span>News</h1>
        </div>
        <div class="container">
            <label><b>Tên đăng nhập</b></label>
            <input type="text" placeholder="Enter Username" name="loginusername" required>
            <label><b>Mật khẩu</b></label>
            <input type="password" placeholder="Enter Password" name="loginpassword" required>
            <button type="submit">Đăng nhập</button>
            <input type="checkbox" checked="checked"><span>Ghi nhớ đăng nhập</span>
        </div>
        <div class="container" style="background-color:#f1f1f1">
            <button type="button" onclick="document.getElementById('loginform').style.display = 'none'" class="cancelbtn">Hủy</button>
            <span class="psw"><a href="#">Quên mật khẩu</a> / <a onclick="document.getElementById('loginform').style.display = 'none',
            document.getElementById('registerform').style.display = 'block'" style="width:auto; cursor: pointer">Đăng ký mới</a></span>
        </div>
    </form>
</div>

<script>
// Get the modal
    var modal = document.getElementById('loginform');

// When the user clicks anywhere outside of the modal, close it
    window.onclick = function (event) {
        if (event.target == modal) {
            modal.style.display = "none";
        }
    }
</script>
