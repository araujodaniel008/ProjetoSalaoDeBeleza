package SalaoDeBeleza.cliente;

import java.sql.Connection;
import java.sql.DriverManager;

public class ConectarCliente {

	public Connection getConectar() {

		try {
			Class.forName("com.mysql.jdbc.Driver");
			return DriverManager.getConnection("jdbc:mysql://localhost/centro_cirurgico", "root", "");

		} catch (Exception e) {
			System.out.println("erro de conexão");
			return null;
		}

	}
}
