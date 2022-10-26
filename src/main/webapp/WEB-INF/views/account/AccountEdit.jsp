<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>List Product</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC"
	crossorigin="anonymous">
<script
	src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js"
	integrity="sha384-IQsoLXl5PILFhosVNubq5LC7Qb9DXgDA9i+tQ8Zj3iwWAwPtgFTxbJ8NT4GN1R8p"
	crossorigin="anonymous"></script>
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.min.js"
	integrity="sha384-cVKIPhGWiC2Al4u+LWgxfKTRIcfu0JTxR+EQDz/bgldoEyl4H0zUF0QKbrJ0EcQF"
	crossorigin="anonymous"></script>
</head>
<body>
	<div class="container">
		<div>
			<jsp:include page="../layout/Header.jsp" />

			<!------------menu------------------>
			<jsp:include page="../layout/Menu.jsp" />
			<br>
			<!----------nội dung---->
			<div class="panel panel-default center">
				<div class="panel-heading text-center">PRODUCT EDITION</div>
				<div class="text-danger">${sessionScope.errorEdit}</div>
				
				<div class="panel-body">
				<form:form action="/account/edit" method="post"
									modelAttribute="accountEdit">
					<div class="row">
						<div class="col-sm-12">
							<div class="row">
								
									<div class="row">
										<div class="form-group col-sm-6">
											<div>Uername</div>
											<form:input path="username" class="form-control" />
										</div>
										<div class="panel-footer text-center form-group col-sm-6">
												<div>Password</div>
											<form:input path="password" class="form-control" />
											</div>
									</div>
									<div class="row">
							
										<div class="form-group col-sm-6">
											<div>Fullname</div>
											<form:input  path="fullname" class="form-control" />
										</div>
										<div class="form-group col-sm-6">
											<div>Email</div>
											<form:input  path="email"   class="form-control" />
										</div>
									
									</div>
									<div class="row">

										<div class="form-group col-sm-6">
											<div>activated?</div>
											<div class="form-control">
												<label class="radio-inline"> <form:radiobutton
														value="true" path="activated" name="available" label="Yes" />
												</label> <label class="radio-inline"> <form:radiobutton
														value="false" path="activated" name="available" label="No" />
												</label>
											</div>
										</div>

										<div class="form-group col-sm-6">
											<div class="form-group col-sm-6">
											<div>Role</div>
												<div class="form-control">
												<label class="radio-inline"> <form:radiobutton
														value="true" path="role" name="role" label="Yes" />
												</label> <label class="radio-inline"> <form:radiobutton
														value="false" path="role" name="role" label="No" />
												</label>
											</div>
										</div>
										
											
										</div>
									</div>
									<div class="panel-footer text-center form-group col-sm-6">
												<button style="margin-top: 25px; width: 600px;"
													class="btn btn-primary">
													<b class="glyphicon glyphicon-plus"></b> Update
												</button>
											</div>
							</div>
						</div>
					</div>


					</form:form>
				</div>
			</div>
		</div>
	</div>





	<jsp:include page="../layout/Footer.jsp" />
</body>
</html>
html>
