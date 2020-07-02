<%@ page pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>

<div class="xs">
	<h3>Thêm loại bài viết</h3>
	<div class="tab-content">
		<div class="tab-pane active" id="horizontal-form">
			<form:form class="form-horizontal" action="admin/themloaibaiviet.htm" modelAttribute="articletypes">
				<div class="form-group">
					<label for="focusedinput" class="col-sm-2 control-label">Tên loại bài viết</label>
					<div class="col-sm-8">
						<form:input path="name" class="form-control1" placeholder="Nhập tên loại"/>
						<p class="help-block">
						</p>
					</div>
				</div>
				<div class="form-group">
					<label for="focusedinput" class="col-sm-2 control-label">Mô tả loại</label>
					<div class="col-sm-8">
						<form:input path="notes" class="form-control1" placeholder="Nhập mô tả"/>
						<p class="help-block">
						</p>
					</div>
				</div>
				<div class="panel-footer">
					<div class="row">
						<div class="col-sm-8 col-sm-offset-2">
							<form:button class="btn-success btn" type="submit">Thêm loại</form:button>
						</div>
					</div>
				</div>
			</form:form>
		</div>
	</div>
</div>