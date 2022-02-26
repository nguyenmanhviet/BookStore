<%@page import="bean.User"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<!doctype html>
<html class="no-js" lang="">

<head>
<meta charset="utf-8">
<meta http-equiv="x-ua-compatible" content="ie=edge">
<title>Home One || Witter Multipage Responsive Template</title>
<meta name="description" content="">
<meta name="viewport" content="width=device-width, initial-scale=1">
 <link rel="stylesheet" href="css/chosen2.css">
        
    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="css/bootstrap.min2.css">
    
    <!-- Style -->
    <link rel="stylesheet" href="css/style2.css">


<!-- Style -->
<link rel="stylesheet" href="css/style.css">
<!-- favicon -->
<link rel="shortcut icon" type="image/x-icon" href="img/favicon.ico">
<!-- Place favicon.ico in the root directory -->
<!-- Google Fonts -->
<link
	href='https://fonts.googleapis.com/css?family=Poppins:400,700,600,500,300'
	rel='stylesheet' type='text/css'>

<!-- all css here -->
<!-- bootstrap v3.3.6 css -->

<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
	integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
	crossorigin="anonymous">
<link rel="stylesheet" href="css/bootstrap.min.css">
<!-- animate css -->
<link rel="stylesheet" href="css/animate.css">
<!-- jquery-ui.min css -->
<link rel="stylesheet" href="css/jquery-ui.min.css">
<!-- meanmenu css -->
<link rel="stylesheet" href="css/meanmenu.min.css">
<!-- Font-Awesome css -->
<link rel="stylesheet" href="css/font-awesome.min.css">
<!-- pe-icon-7-stroke css -->
<link rel="stylesheet" href="css/pe-icon-7-stroke.css">
<!-- Flaticon css -->
<link rel="stylesheet" href="css/flaticon.css">
<!-- venobox css -->
<link rel="stylesheet" href="venobox/venobox.css" type="text/css"
	media="screen" />
<!-- nivo slider css -->
<link rel="stylesheet" href="lib/css/nivo-slider.css" type="text/css" />
<link rel="stylesheet" href="lib/css/preview.css" type="text/css"
	media="screen" />
<!-- owl.carousel css -->
<link rel="stylesheet" href="css/owl.carousel.css">
<!-- style css -->
<link rel="stylesheet" href="style.css">
<!-- responsive css -->
<link rel="stylesheet" href="css/responsive.css">
<!-- modernizr css -->
<script src="js/vendor/modernizr-2.8.3.min.js"></script>
<script>
	var i = 1;
	function add() {
		i++;
		var new_chq_no = i;
		console.log(i);
		var new_input = "<select name='author"+new_chq_no+"'" +  "id=new_"+ new_chq_no+">"
				+ "<c:forEach items='${authors}' var='author'>"
				+ "<option value='${author.name}'>${author.name}</option>"
				+ "</c:forEach>" + "</select>";
		console.log('new_' + new_chq_no);
		$('#new_chq').append(new_input);
	}
	function remove() {
		var last_chq_no = i;
		if (last_chq_no > 1) {
			console.log('#new_' + last_chq_no);
			$('#new_' + last_chq_no).remove();
			$('#total_chq').val(last_chq_no - 1);
			i--;
		} else
			i = 1;
	}
</script>
</head>

<body>
	<!--[if lt IE 8]>
            <p class="browserupgrade">You are using an <strong>outdated</strong> browser. Please <a href="http://browsehappy.com/">upgrade your browser</a> to improve your experience.</p>
        <![endif]-->

	<!-- Add your site or application content here -->
	<jsp:include page="Header.jsp"></jsp:include>
	<!--Header Area End-->

	<div class="shopping-cart-area section-padding">

		<div class="container">
			<div class="section-title2">
				<h2 class="header-title">CREATE A NEW AUTHOR</h2>

			</div>

			<div class="row">
				<div class="col-md-12">
					<form action="CreateNewAuthor">
						<div class="shop-select">
							<label>Email <span class="required">*</span></label>
							<p class="form-row">
								<input type="text" placeholder="Email" name="email"
									value="${email}">
							</p>
						</div>
						<div class="shop-select">
							<label>Password <span class="required">*</span></label>
							<p class="form-row">
								<input type="text" placeholder="Password" name="password"
									value="${password}">
							</p>
						</div>
						<div class="shop-select">
							<label>Name <span class="required">*</span></label>
							<p class="form-row">
								<input type="text" placeholder="Name" name="name"
									value="${name}">
							</p>
						</div>
						<div class="shop-select">
							<label>Address <span class="required">*</span></label>
							<p class="form-row">
								<input type="text" placeholder="Address" name="address"
									value="${address}">
							</p>
						</div>
						<div class="shop-select">
							<label>Phone <span class="required">*</span></label>
							<p class="form-row">
								<input type="text" placeholder="Phone Number" name="phoneNumber"
									value="${phoneNumber}">
							</p>
						</div>
						
						<div class="shop-select">
							<label>Account Number <span class="required">*</span></label>
							<p class="form-row">
								<input type="text" placeholder="AccountNumber" name="accountNumber"
									value="${accountNumber}">
							</p>
						</div>

						<div class="shopingcart-bottom-area">
							<button type="submit" class="btn btn-default">Save</button>
							<a class="left-shoping-cart" href="javascript:history.back()">GO BACK</a>
						</div>
				</div>
			</div>
		</div>
		</form>

	</div>
	</div>
	</div>
	</div>




	<!-- Footer Area Start -->
	<jsp:include page="Footer.jsp"></jsp:include>
	<!--End of Quickview Product-->
	<!-- all js here -->
	<!-- jquery latest version -->
	<script src="js/vendor/jquery-1.12.0.min.js"></script>
	<!-- bootstrap js -->
	<script src="js/bootstrap.min.js"></script>
	<!-- owl.carousel js -->
	<script src="js/owl.carousel.min.js"></script>
	<!-- jquery-ui js -->
	<script src="js/jquery-ui.min.js"></script>
	<!-- jquery Counterup js -->
	<script src="js/jquery.counterup.min.js"></script>
	<script src="js/waypoints.min.js"></script>
	<!-- jquery countdown js -->
	<script src="js/jquery.countdown.min.js"></script>
	<!-- jquery countdown js -->
	<script type="text/javascript" src="venobox/venobox.min.js"></script>
	<!-- jquery Meanmenu js -->
	<script src="js/jquery.meanmenu.js"></script>
	<!-- wow js -->
	<script src="js/wow.min.js"></script>
	<script>
		new WOW().init();
	</script>
	<!-- scrollUp JS -->
	<script src="js/jquery.scrollUp.min.js"></script>
	<!-- plugins js -->
	<script src="js/plugins.js"></script>
	<!-- Nivo slider js -->
	<script src="lib/js/jquery.nivo.slider.js" type="text/javascript"></script>
	<script src="lib/home.js" type="text/javascript"></script>
	<!-- main js -->
	<script src="js/main.js"></script>
	<script src="js/jquery-3.3.1.min.js"></script>
	<script src="js/popper.min.js"></script>
	<script src="js/bootstrap.min.js"></script>
	<script src="js/chosen.jquery.min.js"></script>
	<script src="js/main2.js"></script>
</body>

</html>