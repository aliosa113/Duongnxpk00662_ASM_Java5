<%-- 
    Document   : registerform
    Created on : Apr 11, 2017, 11:18:39 PM
    Author     : DuongNguyen
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<div id="registerform" class="modal">
    <form class="modal-content animate" action="technews/register.htm" method="post" enctype="multipart/form-data">
        <div class="imgcontainer">
            <span onclick="document.getElementById('registerform').style.display = 'none'" class="close" title="Close Modal">&times;</span>
            <h1><span style="color: #ff4848;">Tech</span>News</h1>
        </div>
        <div class="container">
            <label><b>Họ và tên</b></label>
            <input type="text" placeholder="Enter Username" name="regfullname" required>
            <label><b>Email</b></label>
            <input type="email" placeholder="Enter Username" name="regemail" required>
            <label><b>Tên đăng nhập</b></label>
            <input type="text" placeholder="Enter Username" name="regusername" required>
            <label><b>Mật khẩu</b></label>
            <input type="password" placeholder="Enter Password" name="regpassword" required>
            <label><b>Nhập lại mật khẩu</b></label>
            <input type="password" placeholder="Enter Password" name="regrepassword" required>
            <label><b>Ảnh đại diện</b></label><br>
            <input type="file" name="regimg" style="padding-top: 5px;">
            <button type="submit">Đăng ký</button>
        </div>
        <div class="container" style="background-color:#f1f1f1">
            <button type="button" onclick="document.getElementById('registerform').style.display = 'none'" class="cancelbtn">Hủy</button>
            <span class="psw"><a onclick="document.getElementById('registerform').style.display = 'none',
                        document.getElementById('loginform').style.display='block'" style="width:auto; cursor: pointer">Đăng nhập</a></span>
        </div>
    </form>
</div>

<script>
// Get the modal
    var modal = document.getElementById('registerform');

// When the user clicks anywhere outside of the modal, close it
    window.onclick = function (event) {
        if (event.target == modal) {
            modal.style.display = "none";
        }
    }
</script>
