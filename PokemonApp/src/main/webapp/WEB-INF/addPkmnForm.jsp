<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>


<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<!-- Bootstrap CSS -->
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC"
	crossorigin="anonymous">
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.3.0/font/bootstrap-icons.css">
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.3.0/font/bootstrap-icons.css">
<link href="css/homeStyles.css" rel="stylesheet">
<title>Add a Pokemon</title>
</head>

<body>
	<div>
	<a href="home.do"><button class="btn btn-dark mt-1 fixed-top">Go
			Home</button></a>
	</div>
	<div>
		<div
			class="container vh-100 d-flex flex-column justify-content-center">
			<div class="border p-3 form-border border-dark">
				<h1 class="text-center">Add a Pokemon</h1>
				<form action="addPkmn.do" method="POST">
					<div class="row">
						<div class="mb-3">
							<div>
								<label for="name">Pokemon Name: </label><input name="name"
									class="form-control input-sm" placeholder="Enter Pokemon Name"
									required>
							</div>
							<div>
								<label for="type1">Pokemon Type 1: </label><input name="type1"
									class="form-control input-sm" placeholder="Enter Pokemon Type 1"
									>
							</div>
							<div>
								<label for="type2">Pokemon Type 2: </label><input name="type2"
									class="form-control input-sm" placeholder="Enter Pokemon Type 2"
									>
							</div>
							<div>
								<label for="description">Pokemon Description: </label>
								<textarea name="description" class="form-control w-100"
									placeholder="Enter Pokemon Description"></textarea>
							</div>
						</div>
						<div class="mt-3 mb-2 d-flex justify-content-between">
							<div>
								<label for="hp">HP: </label><input
									name="hp" type="number" placeholder="Enter HP" min="0" max="200"
									step="1" value="50" />
							</div>
							<div>
								<label for="attack">Attack: </label><input
									name="attack" placeholder="Enter Attack" type="number" min="0" max="200"
									step="1" value="50" />
							</div>
							<div>
								<label for="defense">Defense: </label><input
									name="defense" placeholder="Enter Defense" type="number" min="0" max="200"
									step="1" value="50" />
							</div>
							<div>
								<label for="spAttack">Special Attack: </label><input
									name="spAttack" placeholder="Enter Special Attack" value="50"
									type="number" min="0" max="200" step="1">
							</div>
							<div>
								<label for="spDefense">Special Defense: </label><input
									name="spDefense" placeholder="Enter Special Defense Stat" value="50"
									type="number" min="0" max="200" step="1">
							</div>
							<div>
								<label for="speed">Speed: </label><input
									name="speed" placeholder="Enter Speed Stat" value="50"
									type="number" min="0" max="200" step=1>
							</div>
							<div>
								<label for="total">Base Stat Total: </label><input
									name="total" type="number" min="0" max="800"
									placeholder="Enter the base stat total" value="300">
							</div>
						</div>
						<div class="d-flex justify-content-between">
							<div class="w-50">
								<label for="generation">Generation </label> <select
									class="form-control w-75" name="generation"
									class="form-control" id="generation">
									<option value=1>I </option>
									<option value=2>II </option>
								</select>
							</div>
							<div class="col">
								<label for="releaseYear">Release Year: <input
									name="releaseYear" class="form-control" type="number"
									placeholder="Enter the year introduced" min="1950" max="2099"
									value="1990"></label>
							</div>
						</div>
					</div>
					<div class="text-center">
						<button class="btn btn-outline-dark w-75 mt-3" type="submit"
							value="Add Pokemon">Submit</button>
					</div>
				</form>
			</div>
		</div>
	</div>

	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM"
		crossorigin="anonymous"></script>
</body>
</body>

</html>
