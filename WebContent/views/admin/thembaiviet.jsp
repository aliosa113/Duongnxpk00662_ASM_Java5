<%@ page pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>

<script src="//cdn.ckeditor.com/4.6.2/full/ckeditor.js"></script>
<div class="widget_head">Thêm bài viết mới</div>
${message}
<div class="widget_5" style="margin-bottom: 16px;">
	<div class="col-md-12 widget_1_box2">
		<div class="widget-body">
			<form action="admin/thembaiviet.htm" method="post" enctype="multipart/form-data">
				<div class="form-group">
					<input name="iduser" value="${u.iduser}" style="display: none;">
					<input name="image" type="file" class="form-control1" >
				</div>
				<div class="form-group">
					<input name="title" type="text" class="form-control1 input-lg"
						placeholder="Nhập tiêu đề bài đăng">
				</div>
				<div class="form-group">
					<input name="subtitle" type="text" class="form-control1 input-lg"
						placeholder="Nhập tiêu đề phụ">
				</div>
				<div class="form-group">
					<input name="source" type="text" class="form-control1 input-lg"
						placeholder="Nhập nguồn bài viết">
				</div>
				<div class="form-group">
					<select name="idtype" class="form-control1">
						<option value="" disabled selected>Chọn loại bài viết</option>
						<c:forEach var="a" items="${articletypes}">
							<option value="${a.idtype}">${a.name}</option>
						</c:forEach>
					</select>
				</div>
				<textarea name="editor1" placeholder="Nhập nội dung..."></textarea>
				<script>
					CKEDITOR.replace('editor1');
				</script>
				<div class="panel-footer">
					<div class="row">
						<button class="btn-success btn" type="submit">Thêm loại</button>
					</div>
				</div>
			</form>
		</div>
	</div>
	<div class="clearfix"></div>
</div>