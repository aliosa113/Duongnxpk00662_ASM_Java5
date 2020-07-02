<%@ page pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>

<div class="xs">
	<h3>Thêm quyền</h3>
	<div class="tab-content">
		<div class="tab-pane active" id="horizontal-form">
			<form:form class="form-horizontal" action="admin/themquyen.htm" modelAttribute="role">
				<div class="form-group">
					<label for="focusedinput" class="col-sm-2 control-label">Tên quyền</label>
					<div class="col-sm-8">
						<form:input path="role" class="form-control1" placeholder="Nhập tên quyền"/>
						<p class="help-block">
						</p>
					</div>
				</div>
				<div class="form-group">
					<label for="focusedinput" class="col-sm-2 control-label">Mô tả quyền</label>
					<div class="col-sm-8">
						<form:input path="notes" class="form-control1" placeholder="Nhập mô tả"/>
						<p class="help-block">
						</p>
					</div>
				</div>
				<div class="panel-footer">
					<div class="row">
						<div class="col-sm-8 col-sm-offset-2">
							<form:button class="btn-success btn" type="submit">Thêm quyền</form:button>
						</div>
					</div>
				</div>
			</form:form>
		</div>
	</div>
</div>