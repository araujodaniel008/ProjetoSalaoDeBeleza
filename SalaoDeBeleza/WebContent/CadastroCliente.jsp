<%@page import="SalaoDeBelesa.servlet.ServletSalao"%>
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

	<script type="text/javascript">
		function dadosForm() {
			var dados = "";
			dados += "nomeCompleto="+ document.getElementById("nomeCompleto").value;
			dados += "&telefoneContato="+ document.getElementById("telefoneContato").value;
			dados += "&horarioMarcado="+ document.getElementById("horarioMarcado").value;
			dados += "&tipoServico="+ document.getElementById("tipoServico").value;
			dados += "&Valor="+ document.getElementById("Valor").value;
			dados += "&situacao="+ document.getElementById("situacao").value;
	//		dados += "&cod="+ document.getElementById("cod").value;
			return dados;
		}

		function gravar() {
			
			var xhttp = new XMLHttpRequest();
			xhttp.onreadystatechange = function() {
				if (this.readyState == 4 && this.status == 200) {
					// Typical action to be performed when the document is ready:
					var msg = xhttp.responseText;
					document.getElementById("msg").innerHTML = msg;
					if (msg == "Gravado com sucesso.") {
						document.getElementById("msg").className = "alert alert-info";
					} else {
						document.getElementById("msg").className = "alert alert-danger";
					}
				}
			};

			xhttp.open("GET", "servletPainel?" + dadosForm(), true);
			xhttp.send();
		}  
		
		
	/*		function apagar() {
				
				if (confirm("Realmente deseja apagar esse registro?")) {
					

				var xhttp = new XMLHttpRequest();
				xhttp.onreadystatechange = function() {
					if (this.readyState == 4 && this.status == 200) {
						// Typical action to be performed when the document is ready:
						var msg = xhttp.responseText;
					
						if (msg == "Gravado com sucesso.") {
							document.getElementById("msg").className = "alert alert-info";
							document.getElementById("msg").innerHTML = "informação apagada";
							document.getElementById("formulario").reset();
						} else {
							document.getElementById("msg").className = "alert alert-danger";
							document.getElementById("msg").innerHTML = "Erro ao pagar";
						}
					}
				};

				xhttp.open("GET", "servletPainel?" + dadosForm()+"&apagar", true);
				xhttp.send();
				}
		} */
			
			function novo() {
				window.location.replace('CadastroCliente.jsp');
			}
	</script>

	
	
<h1>Cadastro cliente</h1>
	<form>
		<div class="aaaaform-row">
			<div class="col-md-4 mb-3">
				<label for="validationDefault01">Nome completo</label> <input
					type="text" class="form-control" id="nomeCompleto"  value="<% out.print(ServletSalao.getNome_Completo()); %>"
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
		    <label>Situação</label>
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