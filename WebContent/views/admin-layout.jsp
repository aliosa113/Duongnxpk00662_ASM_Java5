<%@ page pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
    	<base href="${pageContext.servletContext.contextPath}/">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Trang điều khiển</title>
        <script type="application/x-javascript"> 
        	addEventListener("load", 
        		function() { setTimeout(hideURLbar, 0); }, false);
        		function hideURLbar(){ window.scrollTo(0,1); } 
        </script>
		<!-- Bootstrap Core CSS -->
		<link href="assets/css/bootstrap.min.css" rel='stylesheet' type='text/css' />
		<!-- Custom CSS -->
		<link href="assets/css/style.css" rel='stylesheet' type='text/css' />
		<link href="assets/css/font-awesome.css" rel="stylesheet"> 
		<!-- jQuery -->
		<script src="assets/js/jquery.min.js"></script>
		<!-- Webfonts -->
		<link href='http://fonts.googleapis.com/css?family=Roboto:400,100,300,500,700,900' rel='stylesheet' type='text/css'>
		<!-- Bootstrap Core JavaScript -->
		<script src="assets/js/bootstrap.min.js"></script>
		<!-- Icon -->
		<link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
		<!-- Nav CSS -->
		<link href="assets/css/custom.css" rel="stylesheet">
    </head>
    <body>
        <div id="wrapper">
        
            <!-- Begin navigation -->
            <nav class="top1 navbar navbar-default navbar-static-top" role="navigation" style="margin-bottom: 0">
			    <div class="navbar-header">
			        <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
			            <span class="sr-only">Toggle navigation</span>
			            <span class="icon-bar"></span>
			            <span class="icon-bar"></span>
			            <span class="icon-bar"></span>
			        </button>
			        <a class="navbar-brand" target="_blank" href="technews/index.htm"><span style="color: #ff4848;">Tech</span>News</a>
			    </div>
			    <!-- /.navbar-header -->
			    <ul class="nav navbar-nav navbar-right">
			        <li class="dropdown">
			            <a href="#" class="dropdown-toggle" data-toggle="dropdown" aria-expanded="false">
			                <i class="fa fa-comments-o" style="border-radius: inherit;"></i>
			                <span class="badge">4</span>
			            </a>
			            <ul class="dropdown-menu">
			                <li class="dropdown-menu-header">
			                    <strong>Tin nhắn</strong>
			                    <div class="progress thin">
			                        <div class="progress-bar progress-bar-success" role="progressbar" aria-valuenow="40" 
			                             aria-valuemin="0" aria-valuemax="100" style="width: 80%">
			                            <span class="sr-only">80% Complete (success)</span>
			                        </div>
			                    </div>
			                </li>
			                <li class="dropdown-menu-footer text-center">
			                    <a href="#">Xem tất cả tin nhắn</a>
			                </li>	
			            </ul>
			        </li>
			        <li class="dropdown">
			            <a href="#" class="dropdown-toggle avatar" data-toggle="dropdown"><img src="files/${u.avatar}" alt="" style="border: none;"/></a>
			            <ul class="dropdown-menu">
			                <li class="dropdown-menu-header text-center">
			                    <strong>Tài khoản</strong>
			                </li>
			                <li class="m_2"><a href=""><i class="fa fa-user"></i> Thông tin tài khoản</a></li>
			                <li class="m_2"><a href=""><i class="fa fa-envelope-o"></i> Tin nhắn <span class="label label-success">4</span></a></li>
			                <li class="dropdown-menu-header text-center">
			                    <strong>Hệ thống</strong>
			                </li>
			                <li class="m_2"><a href="technews/logout.htm"><i class="fa fa-lock"></i> Đăng xuất</a></li>	
			            </ul>
			        </li>
			    </ul>
			    <form class="navbar-form navbar-right">
			        <input type="text" class="form-control" value="Tìm kiếm..." onfocus="this.value = '';" onblur="if (this.value == '') {
			                    this.value = 'Tìm kiếm...';
			                }" style="border-radius: inherit !important;">
			    </form>
			    <div class="navbar-default sidebar" role="navigation">
			        <div class="sidebar-nav navbar-collapse">
			            <ul class="nav" id="side-menu">
			                <li>
			                    <a href="admin/index.htm"><i class="fa fa-dashboard fa-fw nav_icon"></i>Bảng điều khiển</a>
			                </li>
			                <li>
			                    <a target="_blank" href="technews/index.htm"><i class="fa fa-laptop fa-fw nav_icon"></i>Trang chủ</a>
			                </li>
			                <li>
			                    <a href="#"><i class="fa fa-pencil nav_icon"></i>Quản lý bài viết<span class="fa arrow"></span></a>
			                    <ul class="nav nav-second-level">
			                        <li>
			                            <a href="admin/danhsachbaiviet.htm"><i class="fa fa-bars nav_icon"></i>Danh sách bài viết</a>
			                        </li>
			                        <li>
			                            <a href="admin/thembaiviet.htm"><i class="fa fa-plus nav_icon"></i>Thêm bài viết mới</a>
			                        </li>
			                    </ul>
			                </li>
			                <li>
			                    <a href="#"><i class="fa fa-edit nav_icon"></i>Quản lý loại bài viết<span class="fa arrow"></span></a>
			                    <ul class="nav nav-second-level">
			                        <li>
			                            <a href="admin/danhsachloaibaiviet.htm"><i class="fa fa-bars nav_icon"></i>Danh sách loại bài viết</a>
			                        </li>
			                        <li>
			                            <a href="admin/themloaibaiviet.htm"><i class="fa fa-plus nav_icon"></i>Thêm loại bài viết mới</a>
			                        </li>
			                    </ul>
			                </li>
			                <li>
			                    <a href="#"><i class="fa fa-user nav_icon"></i>Quản lý tài khoản<span class="fa arrow"></span></a>
			                    <ul class="nav nav-second-level">
			                        <li>
			                            <a href="admin/danhsachtaikhoan.htm"><i class="fa fa-bars nav_icon"></i>Danh sách tài khoản</a>
			                        </li>
			                        <li>
			                            <a href="admin/themtaikhoan.htm"><i class="fa fa-plus nav_icon"></i>Thêm tài khoản mới</a>
			                        </li>
			                    </ul>
			                </li>
			                <li>
			                    <a href="#"><i class="fa fa-shield nav_icon"></i>Quản lý quyền tài khoản<span class="fa arrow"></span></a>
			                    <ul class="nav nav-second-level">
			                        <li>
			                            <a href="admin/danhsachquyen.htm"><i class="fa fa-bars nav_icon"></i>Danh sách quyền</a>
			                        </li>
			                        <li>
			                            <a href="admin/themquyen.htm"><i class="fa fa-plus nav_icon"></i>Thêm quyền mới</a>
			                        </li>
			                    </ul>
			                </li>
			                <li>
			                    <a href="#"><i class="fa fa-envelope nav_icon"></i>Liên hệ và phản hồi<span class="fa arrow"></span></a>
			                    <ul class="nav nav-second-level">
			                        <li>
			                            <a href="admin/phanhoi.htm"><i class="fa fa-envelope-o nav_icon"></i>Gửi mail phản hồi</a>
			                        </li>
			                        <li>
			                            <a><i class="fa fa-phone nav_icon"></i> 0123 456 789</a>
			                        </li>
			                    </ul>
			                </li>
			                <li>
			                    <a href="#"><i class="fa fa-info-circle nav_icon"></i>Thông tin Website</a>
			                </li>
			            </ul>
			        </div>
			    </div>
			</nav>
            <!-- End navigation -->
            
            <div id="page-wrapper">
                <div class="graphs">
                    
                    <!-- include param view -->
                    <jsp:include page="${param.view}"/>
                    
                    <!-- Begin footer -->
                    <div class="copy">
					    <p>Copyright &copy; 2017. All Rights Reserved | 
					        <span style="color: #ff4848;">Tech</span>News 
					        by <a href="https://web.facebook.com/ali.nguyen.100" target="_blank">Duongnxpk00662</a>
					    </p>
					</div>
                    <!-- End footer -->
                </div>
            </div>
        </div>
		<!-- Metis Menu Plugin JavaScript -->
		<script src="assets/js/metisMenu.min.js"></script>
		<script src="assets/js/custom.js"></script>
    </body>
</html>