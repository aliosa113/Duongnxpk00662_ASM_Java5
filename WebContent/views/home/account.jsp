<%@ page pageEncoding="UTF-8"%>

<div class="fix single_content_latest_post floatleft" style="width: 93%">
	<div class="related_post fix">
		<h2>
			<span>Thông tin ...</span>
		</h2>
		<div class="fix single_related_post" style="background-color: white;">
			<img src="files/${u.avatar}" style="float: right; margin: 0; width: 160px; 
			height: 160px; max-width: 160px; max-height: 160px;" />
			<p style="font-weight: bold;">Họ và tên:</p>
			<p style="padding-bottom: 6px;">${u.fullname}</p>
			<p style="font-weight: bold;">Email:</p>
			<p style="padding-bottom: 6px;">${u.email}</p>
			<p style="font-weight: bold;">Tên đăng nhập:</p>
			<p style="padding-bottom: 6px;">${u.username}</p>
			<p style="padding-bottom: 6px;">Mật khẩu: **********</p>
			<p>Quyền: ${u.userrole.role} (Liên hệ với Admin để được cấp quyền mới!)</p>
		</div>
	</div>
	<div class="related_post fix">
		<h2>
			<span>Thay đổi ...</span>
		</h2>
		<div class="fix single_related_post" style="background-color: white;">
			<form action="">
				<p style="font-weight: bold;">Họ và tên:</p>
				<input type="text" placeholder="Nhập họ và tên" value="${u.fullname}">
				<p style="font-weight: bold;">Email:</p>
				<input type="email" placeholder="Nhập địa chỉ Email" value="${u.email}">
				<p style="font-weight: bold;">Tên đăng nhập:</p>
				<input type="text" placeholder="Nhập tên đăng nhập" value="${u.username}">
				<p style="font-weight: bold;">Mật khẩu</p>
				<input type="password" placeholder="Nhập mật khẩu" value="${u.password}">
				<p style="font-weight: bold;">Nhập lại mật khẩu</p>
				<input type="password" placeholder="Nhập lại mật khẩu" value="${u.password}">
				<p style="font-weight: bold;">Ảnh đại diện</p>
				<input type="file">
				<button type="submit" style="margin-top: 15px;">Chỉnh sửa tài khoản</button>
			</form>
		</div>
	</div>
</div>