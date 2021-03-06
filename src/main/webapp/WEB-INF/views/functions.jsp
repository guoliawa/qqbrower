<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet"
	href="//netdna.bootstrapcdn.com/bootstrap/3.0.0/css/bootstrap.min.css">
<title>Functions</title>
</head>
<body>
	<section>
		<div class="jumbotron">
			<div class="container">
				<h1>Functions</h1>
				<p>All the available Functions in our teststore</p>
			</div>
		</div>
	</section>
	<section class="container">
		<div class="row">
			<c:forEach items="${functions}" var="function">
				<div class="col-sm-6 col-md-3" style="padding-bottom: 15px">
					<div class="thumbnail">
						<div class="caption">
							<h3>${function.function_name}</h3>
							<p>
								<a
									href=" <spring:url value=  "/functions/function?name=${function.function_name}" /> "
									class="btn btn-primary"> <span
									class="glyphicon-info-sign glyphicon" /></span> Details
								</a>
							</p>
						</div>
					</div>
				</div>
			</c:forEach>
		</div>
	</section>

</body>
</html>