<%@ page pageEncoding="UTF-8"%>

<div class="xs">
	<h3>Thêm tài khoản</h3>
	<div class="tab-content">
		<div class="tab-pane active" id="horizontal-form">
			<form class="form-horizontal" action="admin/themtaikhoan.htm" method="post">
				<div class="form-group">
					<label for="focusedinput" class="col-sm-2 control-label">Họ và tên</label>
					<div class="col-sm-8">
						<input class="form-control1" type="text" placeholder="Nhập họ và tên" name="fullname" required>
						<p class="help-block">
						</p>
					</div>
				</div>
				<div class="form-group">
					<label for="focusedinput" class="col-sm-2 control-label">Tên đăng nhập</label>
					<div class="col-sm-8">
						<input class="form-control1" type="text" placeholder="Nhập tên đăng nhập" name="username" required>
						<p class="help-block">
						</p>
					</div>
				</div>
				<div class="form-group">
					<label for="focusedinput" class="col-sm-2 control-label">Địa chỉ Email</label>
					<div class="col-sm-8">
						<input class="form-control1" type="email" placeholder="Nhập email" name="email" required>
						<p class="help-block">
						</p>
					</div>
				</div>
				<div class="form-group">
					<label for="inputPassword" class="col-sm-2 control-label">Mật khẩu</label>
					<div class="col-sm-8">
						<input class="form-control1" type="password" placeholder="Nhập mật khẩu" name="password" required>
						<p class="help-block">
						</p>
					</div>
				</div>
				<div class="form-group">
					<label for="inputPassword" class="col-sm-2 control-label">Quyền</label>
					<div class="col-sm-8">
						<select name="role" class="form-control1">
							<option value="1">Administrator</option>
							<option value="2">Publisher</option>
							<option value="3">Member</option>
						</select>
						<p class="help-block">
						</p>
						<h5>${message}</h5>
					</div>
				</div>
				<div class="panel-footer">
					<div class="row">
						<div class="col-sm-8 col-sm-offset-2">
							<button class="btn-success btn" type="submit">Thêm tài khoản</button>
						</div>
					</div>
				</div>
			</form>
		</div>
	</div>
</div>