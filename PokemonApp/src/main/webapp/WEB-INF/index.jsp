<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="css/homeStyle.css">
<title>Pokemon Search</title>
</head>
<body>
	<div class="home-image">
		<div class="home-text">

			<h3>Pokedex Search</h3>
			<form action="userChoice.do" method="GET">
				<label for="userOption"> <select name="userOption"
					class="form-select form-select-lg">
						<option value="pkmnID">Find By ID#</option>
						<option value="pkmnName">Find By Name</option>
						<option value="addPkmn">Add New Pokemon</option>
						<option value="showAll">Show All</option>
				</select>
				</label> <input type="submit" class="btn btn-outline-dark mt-1"
					value="Begin" />
			</form>
		</div>

	</div>
</body>
</html>