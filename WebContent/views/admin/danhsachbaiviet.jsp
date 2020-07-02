<%@ page pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>

<c:if test="${u.userrole.idrole == 1}">
	<div class="xs">
		<h3>Danh sách bài viết</h3>
		<div class="bs-example4" data-example-id="contextual-table">
			<table class="table table-striped"
				style="margin-bottom: 0px !important;">
				<thead>
					<tr class="warning">
						<th>Id</th>
						<th>Tiêu đề</th>
						<th>Người đăng</th>
						<th>Thời gian</th>
						<th>Nguồn</th>
						<th>Loại bài viết</th>
						<th>Lượt xem</th>
						<th style="width: 110px; text-align: right;">
							<a href="themtintuc.jsp"><i class="material-icons button add"
								title="Thêm tin mới">library_add</i></a>
						</th>
					</tr>
				</thead>
				<tbody>
					<c:forEach var="article" items="${articles}">
						<tr>
							<td>${article.idarticle}</td>
							<td>${article.title}</td>
							<td>${article.userarticle.fullname}</td>
							<td>${article.date}</td>
							<td>${article.source}</td>
							<td>${article.articletype.name}</td>
							<td>${article.views}</td>
							<td>
								<a target="_blank" href="detail.jsp">
									<i class="material-icons button delete" title="Xem chi tiết">visibility</i>
								</a>
								<a href="">
									<i class="material-icons button edit" title="Sửa bài viết">edit</i>
								</a>
								<a href="">
									<i class="material-icons button delete" title="Xóa bài viết">delete</i>
								</a>
							</td>
						</tr>
					</c:forEach>
				</tbody>
			</table>
			<nav>
				<ul class="pagination pagination-sm">
					<li><a href="#" aria-label="Previous"><span
							aria-hidden="true">«</span></a></li>
					<li><a href="#">1</a></li>
					<li><a href="#">2</a></li>
					<li><a href="#">3</a></li>
					<li><a href="#">4</a></li>
					<li><a href="#">5</a></li>
					<li><a href="#" aria-label="Next"><span aria-hidden="true">»</span></a></li>
				</ul>
			</nav>
		</div>
	</div>
</c:if>