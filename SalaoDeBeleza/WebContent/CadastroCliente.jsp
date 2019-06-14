<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Cadastro cliente</title>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" />

</head>
<body>
	<form>
		<div class="form-row">
			<div class="col-md-4 mb-3">
				<label for="validationDefault01">Nome completo</label> <input
					type="text" class="form-control" id="nomeCompleto"
					placeholder="Nome completo" required>
			</div>
			<div class="col-md-4 mb-3">
				<label for="validationDefault02">Telefone para contato</label> <input
					type="text" class="form-control" id="telefoneContato"
					placeholder="Numero" required>
			</div>
			<div>
				<div>
					<label for="local">Horario marcado</label> <input type="time"
						class="form-control" id="horarioMarcado">
				</div>
			</div>
			<div class="col-md-3 mb-3">
				<label for="validationDefault04">Tipo de serviço</label> <input
					type="text" class="form-control" id="tipoServico"
					placeholder="Serviço" required>
			</div>
			<div class="col-md-3 mb-3">
				<label for="validationDefault05">Valor</label> <input type="number"
					class="form-control" id="valor" placeholder="Valor" required>
			</div>
			<div>
				<select id="situacao" class="form-control">
					<option selected>Em débito</option>
					<option>Pago</option>
				</select>
			</div>
		</div>
		<div class="form-group"></div>
		<button class="btn btn-primary" type="submit">Gravar</button>
	</form>
</body>
</html>