<%@ page pageEncoding="UTF-8"%>

<div class="xs">
	<h3>Sửa tài khoản</h3>
	<div class="tab-content">
		<div class="tab-pane active" id="horizontal-form">
			<form class="form-horizontal" action="admin/update.htm" method="post">
				<div class="form-group">
					<label for="focusedinput" class="col-sm-2 control-label">Họ và tên</label>
					<div class="col-sm-8">
						<input style="display: none;" name="id" value="${user.iduser}" required>
						<input class="form-control1" type="text" placeholder="Nhập họ và tên" name="fullname" value="${user.fullname}" required>
						<p class="help-block">
						</p>
					</div>
				</div>
				<div class="form-group">
					<label for="focusedinput" class="col-sm-2 control-label">Tên đăng nhập</label>
					<div class="col-sm-8">
						<input class="form-control1" type="text" placeholder="Nhập tên đăng nhập" name="username" value="${user.username}" required>
						<p class="help-block">
						</p>
					</div>
				</div>
				<div class="form-group">
					<label for="focusedinput" class="col-sm-2 control-label">Địa chỉ Email</label>
					<div class="col-sm-8">
						<input class="form-control1" type="email" placeholder="Nhập email" name="email" value="${user.email}"required>
						<p class="help-block">
						</p>
					</div>
				</div>
				<div class="form-group">
					<label for="inputPassword" class="col-sm-2 control-label">Mật khẩu</label>
					<div class="col-sm-8">
						<input class="form-control1" type="password" placeholder="Nhập mật khẩu" name="password" value="${user.password}" required>
						<p class="help-block">
						</p>
						<h5>${message}</h5>
					</div>
				</div>
				<div class="panel-footer">
					<div class="row">
						<div class="col-sm-8 col-sm-offset-2">
							<button class="btn-success btn" type="submit">Sửa tài khoản</button>
						</div>
					</div>
				</div>
			</form>
		</div>
	</div>
</div>