package br.com.emotional.entidade;

/*
 * Classe respons�vel por criar inst�ncia de artista
 */

public class Artista extends Usuario {

	private int cod_artista; 
	private int estilo_musical;
	
	public int getCod_artista() {
		return cod_artista;
	}
	public void setCod_artista(int cod_artista) {
		this.cod_artista = cod_artista;
	}
	public int getEstilo_musical() {
		return estilo_musical;
	}
	public void setEstilo_musical(int estilo_musical) {
		this.estilo_musical = estilo_musical;
	} 
}
