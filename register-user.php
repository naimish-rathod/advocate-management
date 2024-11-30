<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<title>N.R Consultancy</title>
	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
    <link rel="stylesheet" href="css/login-style.css">
</head>
<body>
	<div class="mx-auto tab-body bg-purp">
			<div class="one">
	 			 <h1 class="col-wh">Registration form</h1>
			</div>
		<div class="mt-5">
			<form action="register-emp-user.php" method="get" enctype="multipart/form-data">
				<table class="tw">
						<tr>
							<td class="col-wh pb-2">Upload your profile&nbsp;<span id="err" class="errElem">Please upload only image file</span> </td>
						</tr>
						<tr>
							<td><input type="file" name="profile" class="form-control mb-4" required onchange="imgValidate(event)" id="img"></td>
						</tr>
						<tr>
							<td class="col-wh pb-2">Enter your name 
								<span id="err-1" class="errElem">Please enter text</span> 
							</td>
						</tr>
						<tr>
							<td>
								<input type="text" name="name" id="txt-1" class="form-control mb-4" placeholder="Name" required onchange="strValidate(event, 'err-1', 'txt-1')">
							</td>	
						</tr>
						<tr>
							<td class="col-wh pb-2">Enter your password</td>
						</tr>
						<tr>
							<td><input type="password" name="pwd" class="form-control mb-4" placeholder="Password" required ></td>	
						</tr>
						<tr>
							<td class="col-wh pb-2">Enter your education 
								<span id="err-2" class="errElem">Please enter text</span> 
							</td>
						</tr>
						<tr>
							<td>
								<input type="text" id="txt-2" name="edu" class="form-control mb-4" placeholder="Education" required onchange="strValidate(event, 'err-2', 'txt-2')">
							</td>	
						</tr>
						<tr>
							<td class="col-wh pb-2">Enter your experiance
								<span id="err-3" class="errElem">Please enter number</span> 
							</td>
						</tr>
						<tr>
							<td><input type="text" id="txt-3" name="exp" class="form-control mb-4" placeholder="Experiance" required onchange="intValidate(event)"></td>	
						</tr>
						<tr>
							<td class="col-wh pb-2">Enter your work type
								<span id="err-4" class="errElem">Please enter text</span>
							</td>
						</tr>
						<tr>
							<td>
								<input type="text" id="txt-4" name="work" class="form-control mb-4" placeholder="Work" required onchange="strValidate(event, 'err-4', 'txt-4')">
							</td>	
						</tr>
						<tr>
							<td class="col-wh pb-2">Enter your availity</td>
						</tr>
						<tr>
							<td colspan="3" class="time-par">
								<input type="time" name="available" class="form-control time mb-4" placeholder="Availity" required><span class="col-wh">To</span>
								<input type="time" name="available" class="form-control time mb-4" placeholder="Availity" required>
							</td>	
						</tr>
						<tr>
							<td><input type="submit" class="btn bg-l-purp float-end radius"></td>
						</tr>
					</table>
				</form>
		</div>
	</div>	
</body>
<script src="script/validation.js"></script>
</html>

