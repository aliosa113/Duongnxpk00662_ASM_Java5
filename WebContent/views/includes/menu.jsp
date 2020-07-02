<%@ page pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>

<div class="header_top_area">
	<div class="header_top center">
		<div class="header_left">
			<span class="site_date" id="clock" style="float: right;"></span> <span
				class="site_date" style="float: right;">Thời gian hiện tại: </span>
			<span class="site_date" style="padding-right: 20px;">Liên hệ: 01667852634 </span>
			<nav>
				<ul id="nav">
					<c:choose>
					    <c:when test="${u.userrole.idrole > 0}">
					    	<li><a class="down" style="cursor: pointer; color: bisque;">Xin chào: ${u.fullname}</a>
								<ul>
									<li><a href="technews/myaccount.htm">Thông tin tài khoản</a></li>
									<li><a href="admin/index.htm">Quản lý</a></li>
									<li><a href="technews/logout.htm">Đăng xuất</a></li>
								</ul>
							</li>
							
							<li><a href="">Thông tin</a></li>
							<li><a href="">Phản hồi</a></li>
					        <li><a class="down" style="cursor: pointer">Ngôn ngữ</a>
								<ul>
									<li><a href="quanlytintuc.jsp">Việt Nam</a></li>
									<li><a href="admin_index.jsp">English</a></li>
								</ul>
							</li>
					    </c:when>
					    <c:otherwise>
					    	<li>
								<a onclick="document.getElementById('loginform').style.display='block'"
									style="width: auto; cursor: pointer">Đăng nhập
								</a>
							</li>
							<li>
								<a onclick="document.getElementById('registerform').style.display='block'"
									style="width: auto; cursor: pointer">Đăng ký
								</a>
							</li>
					    	<li><a href="">Thông tin</a></li>
							<li><a href="">Phản hồi</a></li>
							<li><a class="down" style="cursor: pointer">Ngôn ngữ</a>
								<ul>
									<li><a href="quanlytintuc.jsp">Việt Nam</a></li>
									<li><a href="admin_index.jsp">English</a></li>
								</ul>
							</li>
					    </c:otherwise>
					</c:choose>
				</ul>
			</nav>
		</div>
	</div>
</div>