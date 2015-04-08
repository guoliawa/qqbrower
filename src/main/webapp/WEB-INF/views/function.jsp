<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet"
	href="//netdna.bootstrapcdn.com/bootstrap/3.0.0/css/bootstrap.min.css">

<script
	src="https://ajax.googleapis.com/ajax/libs/angularjs/1.0.1/angular.min.js"></script>
<script src="/webstore/resource/js/controllers.js"></script>

<title>Functions</title>
</head>
<body>
	<section>
		<div class="jumbotron">
			<div class="container">
				<h1>${function.function_name}</h1>
			</div>
		</div>
	</section>
	<section class="container">
		<div class="row">
			<div class="col-md-5">
				<h3>${function.function_name}</h3>

				<c:forTokens items="${function.test_cases}" delims="," var="name">
					<div class="thumbnail">
						<div class="caption">
							<h3>${name}</h3>
						</div>
					</div>
				</c:forTokens>
			</div>
		</div>
	</section>
</body>
</html>