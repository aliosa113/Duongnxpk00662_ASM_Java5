<%@ page pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>

<c:if test="${u.userrole.idrole == 1}">
	<div class="xs">
		<h3>Danh sách tài khoản</h3>
		<div class="bs-example4" data-example-id="contextual-table">
			<table class="table table-striped"
				style="margin-bottom: 0px !important;">
				<thead>
					<tr class="warning">
						<th>Id</th>
						<th>Họ và tên</th>
						<th>Email</th>
						<th>Tên đăng nhập</th>
						<th>Mật khẩu</th>
						<th>Hình ảnh</th>
						<th>Quyền</th>
						<th style="width: 90px; text-align: right;"><a
							href="themtintuc.jsp"><i class="material-icons button add"
								title="Thêm tài khoản mới">library_add</i></a></th>
					</tr>
				</thead>
				<tbody>
					<c:forEach var="u" items="${users}">
						<tr>
							<td>${u.iduser}</td>
							<td>${u.fullname}</td>
							<td>${u.email}</td>
							<td>${u.username}</td>
							<td>${u.password}</td>
							<td>${u.avatar}</td>
							<td>${u.userrole.role}</td>
							<td>
								<a href="admin/user/${u.iduser}.htm"><i class="material-icons button edit" title="Sửa tài khoản">edit</i></a>
								<c:if test="${u.iduser > 0}">
								<a href="admin/xoaus/${u.iduser}.htm"><i class="material-icons button delete" title="Xóa tài khoản">delete</i></a>
								</c:if>
							</td>
						</tr>
					</c:forEach>
				</tbody>
			</table>
			<nav>
				<ul class="pagination pagination-sm">
					<li>
						<a href="#" aria-label="Previous">
							<span aria-hidden="true">«</span>
						</a>
					</li>
					<li><a href="#">1</a></li>
					<li><a href="#">2</a></li>
					<li><a href="#">3</a></li>
					<li><a href="#">4</a></li>
					<li><a href="#">5</a></li>
					<li>
						<a href="#" aria-label="Next">
							<span aria-hidden="true">»</span>
						</a>
					</li>
				</ul>
			</nav>
		</div>
	</div>
</c:if>