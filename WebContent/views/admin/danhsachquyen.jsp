<%@ page pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>

<c:if test="${u.userrole.idrole == 1}">
	<div class="xs">
		<h3>Danh sách quyền</h3>
		<div class="bs-example4" data-example-id="contextual-table">
			<table class="table table-striped"
				style="margin-bottom: 0px !important;">
				<thead>
					<tr class="warning">
						<th>Id</th>
						<th>Tên quyền</th>
						<th>Mô tả quyền</th>
						<th style="width: 90px; text-align: right;">
						<a href="themtintuc.jsp"><i class="material-icons button add"
							title="Thêm quyền mới">library_add</i></a>
						</th>
					</tr>
				</thead>
				<tbody>
					<c:forEach var="role" items="${userroles}">
						<tr>
							<td>${role.idrole}</td>
							<td>${role.role}</td>
							<td>${role.notes}</td>
							<td>
								<a href="admin/editaccount/${role.idrole}.htm"><i class="material-icons button edit" title="Sửa thông tin quyền">edit</i></a>
								<a href=""><i class="material-icons button delete" title="Xóa thông tin quyền">delete</i></a>
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