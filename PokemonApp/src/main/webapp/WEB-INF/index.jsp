<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Pokemon Search</title>
</head>
<body>

<h1>Gotta Catch'em All!</h1>

<div class="home-image">
<div class="home-text">
<form action="getPokemonId.do" method="GET">
  Search Pokemon by ID# <input type="text" name="pId">: 
  <input type="submit" value="Show Pokemon" />
</form>

<form action="getPokemonName.do" method="GET">
  Search Pokemon by Name: <input type="text" name="pName">
  <input type="submit" value="Show Pokemon" />
</form>

<form action="userChoice.do" >
				<label for="userOption"> <select name="userOption"
					class="form-select form-select-lg">
						<option value="pkmnID">Find By ID# </option>
						<option value="pkmnName">Find By Name </option>
						<option value="addPkmn">Add New Pokemon </option>
						<option value="showAll">Show All </option>
				</select>
				</label> <input type="submit" class="btn btn-outline-dark mt-1" value="Begin" />
			</form>

</div>
</div>
${pokemon} <!-- DEBUG -->

</body>
</html>