<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet"
	href="//netdna.bootstrapcdn.com/bootstrap/3.0.0/css/bootstrap.min.css">
<link rel="stylesheet"
	href="//code.jquery.com/ui/1.11.4/themes/smoothness/jquery-ui.css">
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
	<section>
		<div class="row">
			<div class="col-4-sm"></div>
			<div class="col-4-sm"></div>
			<div class="col-4-sm">
				<div class="btn-group btn-group-lg">
					<button type="button" class="btn btn-primary">Add</button>
					<button type="button" class="btn btn-primary">Delete</button>
				</div>
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
							<button id=${function.function_name}_edit type="button" class="btn btn-primary btn-md">Edit Cases</button>
						</div>
					</div>
				</div>
			</c:forEach>
		</div>
	</section>

</body>
</html>