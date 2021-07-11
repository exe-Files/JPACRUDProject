<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Pokemon Search</title>
</head>
<body>

<h1>Gotta Catch'em All!</h1>

<form action="getPokemon.do" method="GET">
  Pokemon ID#: <input type="text" name="pId" />
  <input type="submit" value="Show Pokemon" />
</form>

${pokemon} <!-- DEBUG -->

</body>
</html>