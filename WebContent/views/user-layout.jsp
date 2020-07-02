<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
    	<base href="${pageContext.servletContext.contextPath}/">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Technews</title>
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
		<link rel="stylesheet" href="css/font-awesome.min.css">
		<link rel="stylesheet" href="fonts/HelveticaNeue/font.css">
		<link href="css/style.css" rel="stylesheet" media="screen">
		<link href="css/responsive.css" rel="stylesheet" media="screen">
		<!-- Icon -->
		<link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
		<script type="text/javascript" src="js/jsclock.js"></script>
    </head>
    <body id="scroll_top" onload="startTime()"> 
    	<jsp:include page="includes/loginform.jsp" />
    	<jsp:include page="includes/registerform.jsp" />
    	
    	<!-- Begin header -->
        <section id="header_area">
			<!-- Begin menu top -->
			<jsp:include page="includes/menu.jsp"/>
			<!-- End menu top -->
			<div class="fix header_bottom_area">
				<div class="header_bottom center">
					<div class="fix logo floatleft">
						<a href="technews/index.htm">
							<h1>
								<span style="color: #ff4848;">Tech</span>News
							</h1>
						</a>
						<p>Tin tức công nghệ</p>
					</div>
				</div>
			</div>
		</section>
        <!-- End header -->
        
        <section id="header_bottom_area"></section>
        <section id="content_area">
            <div class="content center">
            
            	<!-- Begin menu -->
                <div class="main_menu">
				    <nav>
				        <ul id="nav2">
				            <li>
				                <a href="show.jsp">MOBILE <span>Tin tức mobile</span></a>
				                <ul>
				                    <li><a href="show.jsp">Điện thoại</a></li>
				                    <li><a href="show.jsp">Máy tính bảng</a></li>
				                </ul>
				            </li>
				            <li>
				                <a href="show.jsp">TIN ICT <span>Tin tức ICT</span></a>
				            </li>
				            <li>
				                <a href="show.jsp">INTERNET <span>Tin tức mạng</span></a>
				                <ul>
				                    <li><a href="show.jsp">Digital marketing</a></li>
				                    <li><a href="show.jsp">Media</a></li>
				                </ul>
				            </li>
				            <li>
				                <a href="show.jsp">TRÀ ĐÁ CÔNG NGHỆ <span>Tin công nghệ</span></a>
				                <ul>
				                    <li><a href="show.jsp">Tản mạn</a></li>
				                    <li><a href="show.jsp">Ý tưởng sáng tạo</a></li>
				                </ul>
				            </li>
				            <li>
				                <a href="show.jsp">THỦ THUẬT <span>Thủ thuật công nghệ</span></a>
				            </li>
				            <li>
				                <a href="show.jsp">SỐNG <span>Sống với công nghệ</span></a>
				            </li>
				            <li>
				                <a href="show.jsp">VIDEO <span>Video công nghệ</span></a>
				            </li>
				            <li>
				                <a href="show.jsp">KHÁM PHÁ <span>Khám phá tin tức</span></a>
				                <ul>
				                    <li><a href="show.jsp">Apps - Game</a></li>
				                    <li><a href="show.jsp">Đồ chơi số</a></li>
				                    <li><a href="show.jsp">Lịch sử</a></li>
				                    <li><a href="show.jsp">Tri thức</a></li>
				                </ul>
				            </li>
				        </ul>
				    </nav>
				</div>
                <!-- End menu -->
                
                <div class="fix main_content_area">
                
                	<!-- include Slider -->
                    
                    <div class="fix home_main_content">
                        <div class="main_content floatleft">
                            <div class="fix main_content_container">
                                
                                <!-- include param view -->
                                <jsp:include page="${param.view}"/>
                                
                            </div>
                        </div>
                        
                        <!-- Begin sidebar -->
                        <div class="sidebar floatright">
						    <div class="fix single_sidebar">
						        <h2>
						            <span>Tìm kiếm</span>
						        </h2>
						        <input type="text" placeholder="Nhập nội dung tìm kiếm..." />
						    </div>
						    <div class="fix single_sidebar">
						        <h2>
						            <span>Quảng cáo</span>
						        </h2>
						        <a href=""><img src="images/300x250.png" alt="" /></a>
						    </div>
						    <div class="fix single_sidebar">
						        <h2>
						            <span>Bài đăng gần đây</span>
						        </h2>
						        <ul>
						            <li><a href="">FPT Shop vượt xa Thế Giới Di Động về lượng đặt hàng Galaxy S8 mặc dù có quy mô chỉ bằng 1/3 đối thủ</a></li>
						            <li><a href="">Cùng gặp gỡ chú Robot có khả năng xây tường gạch nhanh gấp 6 lần thợ nề lành nghề nhất</a></li>
						            <li><a href="">Không đủ tiền sắm Canon 85mm F/1.2L, hãy chờ phiên bản rẻ hơn vào mùa hè này</a></li>
						            <li><a href="">Đây là lí do vì sao logo của các hãng thường nhìn rất “đơn điệu”</a></li>
						            <li><a href="">Chính thức thông qua Đề án thí điểm của Uber tại Việt Nam</a></li>
						        </ul>
						    </div>
						    <div class="fix single_sidebar">
						        <h2>
						            <span>Thể loại</span>
						        </h2>
						        <ul>
						            <li><a href="">Tin tức Mobile</a>(15)</li>
						            <li><a href="">Tin tức ICT</a>(15)</li>
						            <li><a href="">Tin tức Internet</a>(15)</li>
						            <li><a href="">Trà đá công nghệ</a>(15)</li>
						            <li><a href="">Thủ thuật công nghệ</a>(15)</li>
						            <li><a href="">Cuộc sống công nghệ</a>(15)</li>
						            <li><a href="">Video công nghệ</a>(15)</li>
						            <li><a href="">Khám phá công nghệ</a>(15)</li>
						        </ul>
						    </div>
						
						    <div class="fix single_sidebar tags">
						        <h2>
						            <span>Nhãn</span>
						        </h2>
						        <a href="">tags</a> <a href="">tags cloud</a> <a href="">fashion</a>
						        <a href="">Design</a> <a href="">IOS</a> <a href="">Android</a> <a
						            href="">tags</a> <a href="">tags cloud</a> <a href="">fashion</a>
						        <a href="">Design</a> <a href="">IOS</a> <a href="">Android</a> <a
						            href="">tags</a> <a href="">tags cloud</a> <a href="">fashion</a>
						        <a href="">Design</a> <a href="">IOS</a> <a href="">Android</a>
						    </div>
						</div>
                        <!-- End sidebar -->
                        
                    </div>
                    <div class="fix scroll_to_top">
                        <a href="#scroll_top" class="floatright">Trở lại đầu trang </a>
                    </div>
                </div>
            </div>
        </section>
        
        <!-- Begin footer -->
        <section id="footer_top_area">
		    <div class="fix footer_top center">
		        <div class="fix footer_top_container">
		            <div class="fix single_footer_top floatleft">
		                <h2>
		                    <span>Bài đăng gần đây</span>
		                </h2>
		                <ul>
		                    <li><a href="">Smartphone Pixel tiếp theo của Google sẽ có màn hình cong giống như Galaxy S8</a> Lượt xem (148)</li>
		                    <li><a href="">Giảm sốc 29% - Samsung A9 Pro màn hình to, pin khủng giá chỉ còn 7,890,000đ – Phân phối chính hãng Samsung</a> Lượt xem (140)</li>
		                    <li><a href="">Nếu Galaxy Note7 tân trang bán ở Việt Nam, bạn nghĩ nó có giá bao nhiêu?</a> Lượt xem (10)</li>
		                </ul>
		            </div>
		            <div class="fix single_footer_top floatleft">
		                <h2>
		                    <span>Về TechNews</span>
		                </h2>
		                <p>Trang tin tức về công nghệ, truyền thông, điện thoại, mạng internet.</p>
		                <p>TeckNews chia tin tức ra thành nhiều loại tin để người đọc dễ tìm kiếm:</p>
		                <p><a href="#">- Tin Mobile</a></p>
		                <p><a href="#">- Tin Truyền thông</a></p>
		                <p><a href="#">- Tin Mạng</a></p>
		                <p><a href="#">- Tin Công nghệ</a></p>
		                <p><a href="#">- Khám phá</a></p>
		                <p>Cập nhật các thông tin, tin tức công nghệ nhằm giúp người đọc cập nhật thông tin nhanh nhất</p>
		            </div>
		            <div class="fix single_footer_top floatleft">
		                <h2>
		                    <span>Liên hệ Admin</span>
		                </h2>
		                <ul>
		                    <li>Facebook : <a href=""> Dương Nguyễn</a></li>
		                    <li>Google+ : <a href=""> Dương Ali</a></li>
		                    <li>SĐT : <a>01667852634</a></li>
		                    <li>Student Code : <a>PK00662</a></li>
		                </ul>
		            </div>
		            <div class="fix single_footer_top footer_logo floatright">
		                <h1><span style="color: #ff4848;">Tech</span>News</h1>
		                <p>Trang tin tức về công nghệ, truyền thông, điện thoại, mạng internet.
		                    TeckNews chia tin tức ra thành nhiều loại tin để người đọc dễ tìm kiếm,
		                    luôn luôn cập nhật các thông tin, tin tức công nghệ nhằm giúp người đọc cập nhật thông tin nhanh nhất</p>
		            </div>
		        </div>
		    </div>
		</section>
		<section id="footer_bottom_area">
		    <div class="fix footer_bottom center">
		        <div class="fix copyright floatleft">
		            <p>All Rights Reserved</p>
		        </div>
		        <div class="fix footer_bottom_text floatright">
		            <p>
		                TechNews by <a href="#">duongnxpk00662</a>
		            </p>
		        </div>
		    </div>
		</section>
        <!-- End footer -->
        
        <!-- Script -->
        <script src="js/jquery.js"></script>
		<script type="text/javascript" src="js/jssor.core.js"></script>
		<script type="text/javascript" src="js/jssor.utils.js"></script>
		<script type="text/javascript" src="js/jssor.slider.js"></script>
		
		<!-- Compact text -->
		<script type="text/javascript" src="js/jquery-latest.js"></script>
		<script type="text/javascript" src="js/jquery.shorten.1.0.js"></script>
		
		<script>
		    jQuery(document).ready(function ($) {
		        var options = {
		            $AutoPlay: true,
		            $AutoPlayInterval: 4000,
		            $SlideDuration: 500,
		            $DragOrientation: 3,
		
		            $ThumbnailNavigatorOptions: {
		                $Class: $JssorThumbnailNavigator$,
		                $ChanceToShow: 2,
		
		                $Loop: 2,
		                $SpacingX: 3,
		                $SpacingY: 3,
		                $DisplayPieces: 6,
		                $ParkingPosition: 204,
		
		                $ArrowNavigatorOptions: {
		                    $Class: $JssorArrowNavigator$,
		                    $ChanceToShow: 2,
		                    $AutoCenter: 2,
		                    $Steps: 6
		                }
		            }
		        };
		        var jssor_slider1 = new $JssorSlider$("slider1_container", options);
		        function ScaleSlider() {
		            var parentWidth = jssor_slider1.$Elmt.parentNode.clientWidth;
		            if (parentWidth)
		                jssor_slider1.$SetScaleWidth(Math.min(parentWidth, 980));
		            else
		                window.setTimeout(ScaleSlider, 30);
		        }
		        ScaleSlider();
		
		        if (!navigator.userAgent.match(/(iPhone|iPod|iPad|BlackBerry|IEMobile)/)) {
		            $(window).bind('resize', ScaleSlider);
		        }
		    });
		</script>
		<script type="text/javascript" src="js/selectnav.min.js"></script>
		<script type="text/javascript">
		    selectnav('nav', {
		        label: '-Navigation-',
		        nested: true,
		        indent: '-'
		    });
		    selectnav('nav2', {
		        label: '-Navigation-',
		        nested: true,
		        indent: '-'
		    });
		
		
		</script>	
		<script type="text/javascript">
		
		    $(function () {
		        $('a[href*=#]:not([href=#])').click(function () {
		            if (location.pathname.replace(/^\//, '') == this.pathname.replace(/^\//, '') && location.hostname == this.hostname) {
		                var target = $(this.hash);
		                target = target.length ? target : $('[name=' + this.hash.slice(1) + ']');
		                if (target.length) {
		                    $('html,body').animate({
		                        scrollTop: target.offset().top
		                    }, 1000);
		                    return false;
		                }
		            }
		        });
		    });
		</script>
		<script type="text/javascript">
		    $(".comment").shorten({
		        "showChars": 150,
		        "moreText": "...",
		        "lessText": "Rút gọn",
		    });
		</script>
    </body>
</html>
