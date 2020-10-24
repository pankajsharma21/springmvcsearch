<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!doctype html>
<html lang="en">
<head>
<!-- Required meta tags -->
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">

<!-- Bootstrap CSS -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"
	integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm"
	crossorigin="anonymous">

<title>Hello, world!</title>
</head>
<!-- if we want to add calendar in dob column we take type="date" then automatically calendar in entry bar   -->
<!--the form field name and java class fields name must match for auto binding like for address we want to write 
address.street in street input bar name and address.city in city input bar name
 -->
<body class="" style="background: #e2e2e2;">
	<div class="container mt-4">
		
		<div class="row">
			<div class="col-md-8 offset-md-2">
				<div class="card">
					<div class="card-body">
						<h3 class="text-center">Complex Form</h3>
						<div class="alert alert-warning" role="alert">
							<form:errors path="student.*" />
						</div>
						<form action="handleform">
							<!--For name  -->
							<div class="form-group">
								<label for="exampleInputEmail1">Your name</label> <input
									name="name" type="text" class="form-control"
									id="exampleInputEmail1" aria-describedby="emailHelp"
									placeholder="Enter Name"> <small id="emailHelp"
									class="form-text text-muted">we'll never share your
									name with anyone else</small>
							</div>
							<!--for Id  -->
							<div class="form-group">
								<label for="exampleInputEmail1">Your id</label> <input name="id"
									type="text" class="form-control" id="exampleInputEmail1"
									aria-describedby="emailHelp" placeholder="Enter ID">
							</div>
							<!--For Date of Birth we use type="date" so there is calender in field to take input if use text there is no calender -->
							<div class="form-group">
								<label for="exampleInputEmail1">Your DOB</label> <input
									name="date" type="date" class="form-control"
									id="exampleInputEmail1" aria-describedby="emailHelp"
									placeholder="dd/mm/yyyy">
							</div>
							<!--for courses  -->
							<div class="form-group">
								<label for="exampleInputEmail1">Courses</label> <select
									name="courses" class="form-control" id="exampleInputEmail1"
									multiple>
									<option>java</option>
									<option>Python</option>
									<option>C++</option>
									<option>Django</option>
									<option>Spring Framwork</option>
								</select>
							</div>

							<!-- Select Gender -->
							<div class="form-group">
								<span class="mr-3">Select Gender</span>
								<div class="form-check form-check-inline">
									<input class="form-check-input" type="radio" name="gender"
										id="inlineRadio1" value="male"> <label
										class="form-check-label" for="inlineRadio1">Male</label>
								</div>
								<div class="form-check form-check-inline">
									<input class="form-check-input" type="radio" name="gender"
										id="inlineRadio2" value="female"> <label
										class="form-check-label" for="inlineRadio2">Female</label>
								</div>
							</div>

							<!--Describe student type  -->
							<div class="form-group">
								<label for="">Select Type</label> <select class="form-control"
									name="type">
									<option value="oldstudent">Old Student</option>
									<option value="normalstudent">Normal Student</option>
								</select>
							</div>

							<!--Address field  -->
							<div class="card">
								<div class="card-body">
									<p>Your address</p>
									<div class="form-group">
										<input name="address.street" type="text" class="form-control"
											placeholder="Enter street">
									</div>
									<div class="form-group">
										<input name="address.city" type="text" class="form-control"
											placeholder="Enter City">
									</div>
								</div>
							</div>

							<!--Button field  -->
							<div class="container text-center">
								<button type="Submit" class="btn btn-primary">Submit</button>
							</div>
						</form>
					</div>
				</div>
			</div>
		</div>
	</div>




	<!-- Optional JavaScript -->
	<!-- jQuery first, then Popper.js, then Bootstrap JS -->
	<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"
		integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN"
		crossorigin="anonymous"></script>
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"
		integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q"
		crossorigin="anonymous"></script>
	<script
		src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"
		integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl"
		crossorigin="anonymous"></script>
</body>
</html>