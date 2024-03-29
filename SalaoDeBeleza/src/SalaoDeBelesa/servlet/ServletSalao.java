package SalaoDeBelesa.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.rmi.ServerException;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import SalaoDeBeleza.cliente.Cliente;

@WebServlet(name = "ServletSalao", urlPatterns = "/ServletSalao")
public class ServletSalao extends HttpServlet {
	public void service(HttpServletRequest request, HttpServletResponse response) throws ServerException, IOException {
		String Nome_completo = request.getParameter("nome");
		String Telefone_para_contato = request.getParameter("telefone");
		System.out.println("Nome digitado " + Nome_completo + " Status " + Telefone_para_contato);

		
		
		Cliente obj = new Cliente();
		obj.setNome_completo(Nome_completo);
		obj.setTelefone_para_contato(Telefone_para_contato);

		PrintWriter saida = response.getWriter();
		int cod = Integer.parseInt(request.getParameter("cod"));
		
		boolean sucesso = false;
		if (cod > 0) {
			obj.setCod(cod);
		//	if (request.getParameter("apagar") == null) {
			//	sucesso = obj.atualizar();
		//	} else {
			//	sucesso = obj.apagar();
		//	}
		} else {
			sucesso = obj.inserir();
		}

		if (sucesso) {
			saida.print("Gravado com sucesso");
		} else {
			saida.print("Erro ao gravar");
		}
	}

}
