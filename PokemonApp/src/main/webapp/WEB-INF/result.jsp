<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC"
	crossorigin="anonymous">
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.3.0/font/bootstrap-icons.css">
<link href="css/homeStyles.css" rel="stylesheet">
<title>Search Results</title>
</head>
<body>
	<a href="home.do"><button class="btn btn-dark mt-1 fixed-top">Go
			Home</button></a>
	<div
		class="container vh-100 d-flex flex-column justify-content-center ">
		<div>
			<h1 class="text-center">Pokemon Results</h1>
		</div>
		<div class="w-100 border p-4 form-border">
			<table class="table table-hover">
				<tbody>
				<thead class="thead-dark">
					<h2>ID# ${pokemon.id} ${pokemon.name}</h2>
					<div>
						Edit: <a aria-label="Edit"
							href="updatePkmn.do?pkmnId=${pokemon.id}"
							class="button bi bi-journal"></a>
					</div>
					
					<div>
					<div>
					Delete: <a aria-label="Delete"
							href="deletePkmn.do?pkmnId=${pokemon.id}"
							class="button bi bi-trash"></a>
					</div>
						
						<button type="button" class="btn bi bi-trash"
							data-bs-toggle="modal" data-bs-target="#m${pokemon.id}">
						</button>
						<!-- Modal -->
						<div class="modal fade" id="m${pokemon.id}" tabindex="-1"
							aria-labelledby="exampleModalLabel" aria-hidden="true">
							<div class="modal-dialog">
								<div class="modal-content">
									<div class="modal-header">
										<h5 class="modal-title" id="exampleModalLabel">Do you
											wish to continue?</h5>
										<button type="button" class="btn-close"
											data-bs-dismiss="modal" aria-label="Close"></button>
									</div>
									<div class="modal-body">
										Are you sure you want to delete <strong>${pokemon.name}</strong>
									</div>
									<div class="modal-footer d-flex justify-content-between">

										<button type="button" class="btn btn-secondary"
											data-bs-dismiss="modal">Close</button>
										<a href="deletePkmn.do?pkmnId=${pokemon.id}"
											class="btn btn-danger">Delete Pokemon</a>
									</div>
								</div>
							</div>
						</div>
					</div>
					<div>
						<c:if test="${pokemon.id le 252}">
							<img
								src="https://pokeres.bastionbot.org/images/pokemon/${pokemon.id}.png"
								height=300px width=300px alt="An image of ${pokemon.name}">
							<tr scope="row">
						</c:if>
					</div>
					<div>
						Name
						<td>${pokemon.name}</td>
						</tr>
						<tr scope="row">Type 1
						</tr>
						${pokemon.type1}
						<tr scope="row">Type 2
						</tr>
						${pokemon.type2}
						<tr scope="row">Description
						</tr>
						${pokemon.description}
						<tr scope="row">Total
						</tr>
						${pokemon.total}
						<tr scope="row">HP
						</tr>
						${pokemon.hp}
						<tr scope="row">Attack
						</tr>
						${pokemon.attack}
						<tr scope="row">Defense
						</tr>
						${pokemon.defense}
						<tr scope="row">Special Attack
						</tr>
						${pokemon.spAttack}
						<tr scope="row">Special Defense
						</tr>
						${pokemon.spDefense}
						<tr scope="row">Speed
						</tr>
						${pokemon.speed}
						<tr scope="row">Generation
						</tr>
						${pokemon.generation}
						<tr scope="row">Height
						</tr>
						${pokemon.height}
						<tr scope="row">Weight
						</tr>
						${pokemon.weight}
						<tr scope="row">Catch Rate
						</tr>
						${pokemon.catchRate}
						<tr scope="row">Release Year
						</tr>
						${pokemon.releaseYear}
					</div>
				</thead>
			</table>
		</div>
	</div>
	${pokemon}
</body>
</html>