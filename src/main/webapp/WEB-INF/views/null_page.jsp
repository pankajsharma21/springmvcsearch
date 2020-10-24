<%@page isELIgnored="false"  %>>
<!doctype html>
<html lang="en">
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" integrity="sha384-JcKb8q3iqJ61gNV9KGb8thSsNjpSL0n8PARn9HuZOnIxN0hoP+VmmDGMN5t9UJ0Z" crossorigin="anonymous">

    <title>Error!!</title>
    <style>
    body{
       background-image:
       url(data:image/png;base64,iv)
    }
    .error-template{
      padding: 40px 15px;
      text-align:center;
    }
    
    .error-action{
     margin-top: 15px;
     margin-bottom:15px;
    }
    .error-action .btn{
       margin-right:10px;
    }
    
    </style>
  </head>
  <body>
	<div class="container">
		<div class="row">
			<div class="col-md-12">
				<div class="error-template">
					<h1>Oops! Sorry</h1>
					<h2>${msg }</h2>
					<div class="error-details">Sorry, an error has occured
						Requested page not found!</div>
					<div class="error-action">
						<a href="#!"></span>Take Me Home</a><a href="#!"
							class="btn btn-default btn-lg"><span
							class="glyphicon glyphicon-envelope"></span>Contact Support</a>
					</div>
				</div>
			</div>
		</div>
	</div>

	<!-- Optional JavaScript -->
    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js" integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js" integrity="sha384-B4gt1jrGC7Jh4AgTPSdUtOBvfO8shuf57BaghqFfPlYxofvL8/KUEfYiJOMMV+rV" crossorigin="anonymous"></script>
  </body>
</html>