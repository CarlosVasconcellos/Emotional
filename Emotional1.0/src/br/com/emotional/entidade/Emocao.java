package br.com.emotional.entidade;


/*
 * Classe respons�vel por criar inst�ncia de emocao
 */
public class Emocao {

	private int idEmocao; 
	private String nome;
	
	public int getId_emocao() {
		return idEmocao;
	}
	public void setId_emocao(int idEmocao) {
		this.idEmocao = idEmocao;
	}
	public String getNome() {
		return nome;
	}
	public void setNome(String nome) {
		this.nome = nome;
	} 
}
