<%@ page language="java" contentType="text/html; UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>CadastroCliente</title>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" />

</head>
<body>
	<form>
		<div class="form-row">
			<div class="col-md-4 mb-3">
				<label for="validationDefault01">Nome completo</label> <input
					type="text" class="form-control" id="validationDefault01"
					placeholder="First name" value="Mark" required>
			</div>
			<div class="col-md-4 mb-3">
				<label for="validationDefault02">Telefone para contato</label> <input
					type="text" class="form-control" id="validationDefault02"
					placeholder="Last name" value="Otto" required>
			</div>
		</div>
		<div>
			<div class="form-group col-md-3">
				<label for="local">Horario marcado</label> <input type="time"
					class="form-control" id="iniPrev">
			</div>
			<div class="col-md-3 mb-3">
				<label for="validationDefault04">Tipo de serviço</label> <input type="text"
					class="form-control" id="validationDefault04" placeholder="State"
					required>
			</div>
			<div class="col-md-3 mb-3">
				<label for="validationDefault05">Valor</label> <input type="text"
					class="form-control" id="validationDefault05" placeholder="Zip"
					required>
			</div>
		</div>
		<div class="form-group"></div>
		<button class="btn btn-primary" type="submit">Submit form</button>
	</form>
</body>
</html>