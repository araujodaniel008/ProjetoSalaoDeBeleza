package SalaoDeBeleza.cliente;

public class Cliente {

	private int cod;
	private String nome_completo;
	private String telefone_para_contato;
	private String horario_marcado;
	private String tipo_de_serviço;
	private int valor;
	private String situacao;
	
	
	
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
	
	
}
