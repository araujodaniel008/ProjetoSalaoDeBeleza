package SalaoDeBeleza.cliente;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;




public class Cliente {

	private int cod;
	private String nome_completo;
	private String telefone_para_contato;
	private String horario_marcado;
	private String tipo_de_serviço;
	private int valor;
	private String situacao;

	public Cliente() {
		setNome_completo("");
		setTelefone_para_contato("");
		setHorario_marcado("");
		setTipo_de_serviço("");
		setSituacao("");
	}

	public int getCod() {
		return cod;
	}

	public void setCod(int cod) {
		this.cod = cod;
	}

	public String getNome_completo() {
		return nome_completo;
	}

	public void setNome_completo(String nome_completo) {
		this.nome_completo = nome_completo;
	}

	public String getTelefone_para_contato() {
		return telefone_para_contato;
	}

	public void setTelefone_para_contato(String telefone_para_contato) {
		this.telefone_para_contato = telefone_para_contato;
	}

	public String getHorario_marcado() {
		return horario_marcado;
	}

	public void setHorario_marcado(String horario_marcado) {
		this.horario_marcado = horario_marcado;
	}

	public String getTipo_de_serviço() {
		return tipo_de_serviço;
	}

	public void setTipo_de_serviço(String tipo_de_serviço) {
		this.tipo_de_serviço = tipo_de_serviço;
	}

	public int getValor() {
		return valor;
	}

	public void setValor(int valor) {
		this.valor = valor;
	}

	public String getSituacao() {
		return situacao;
	}

	public void setSituacao(String situacao) {
		this.situacao = situacao;
	}

	public boolean inserir() {

		Connection conexao = new ConectarCliente().getConectar();

		if (conexao != null) {
			String sql = "insert into painel(" + "	nome_completo  ," + "	telefone_para_contato         ,"
					+ "	horario_marcado          ," + "	tipo_de_serviço   ," + "	valor   ," + "	situacao   "
					+ "values (?," + "		?," + "		?," + "		?," + "		?," + "		?," + "	)";
			try {
				PreparedStatement prepararSQL = conexao.prepareStatement(sql);
				prepararSQL.setString(1, nome_completo);
				prepararSQL.setString(2, telefone_para_contato);
				prepararSQL.setString(3, horario_marcado);
				prepararSQL.setString(4, tipo_de_serviço);
				prepararSQL.setInt(5, valor);
				prepararSQL.setString(6, situacao);

				prepararSQL.execute();
				prepararSQL.close();
				return true;
			} catch (SQLException e) {
				e.printStackTrace();
			}
			return false;
		}
		return false;
	}
	public List<Cliente> getLista() {

		try {
			Connection conexao = new ConectarCliente().getConectar();
			PreparedStatement ps = conexao.prepareStatement("select * from painel");
			ResultSet rs = ps.executeQuery();

			List<Cliente> lsPainel = new ArrayList<Cliente>();

			while (rs.next()) {
				Cliente p = new Cliente();
				p.setCod(rs.getInt("cod"));
				p.setNome_completo(rs.getString("Nome_completo"));
				p.setTelefone_para_contato(rs.getString("Telefone_para_contato"));
				lsPainel.add(p);
			}
			ps.close();
			conexao.close();
			return lsPainel;
		} catch (Exception e) {

		}
		return getLista();
}
}
