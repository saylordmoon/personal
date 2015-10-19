package org.apci.aplicaciones.models;

public class Usuario {
	
	private int UsuarioId;
	private String ruc;
	private String numeroDocumento;
	
	public int getUsuarioId() {
		return UsuarioId;
	}
	public void setUsuarioId(int usuarioId) {
		UsuarioId = usuarioId;
	}
	public String getRuc() {
		return ruc;
	}
	public void setRuc(String ruc) {
		this.ruc = ruc;
	}
	public String getNumeroDocumento() {
		return numeroDocumento;
	}
	public void setNumeroDocumento(String numeroDocumento) {
		this.numeroDocumento = numeroDocumento;
	}
	
}
