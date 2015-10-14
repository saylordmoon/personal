package org.apci.aplicaciones.models;

public class Pais {

	private int PaisId;
	private String Nombre;
	private String Nacionalidad;
	private String Codigo;
	private int ContinenteId;
	private String Codigo3;
	private String Codigo2;
	
	public int getPaisId() {
		return PaisId;
	}
	public void setPaisId(int paisId) {
		PaisId = paisId;
	}
	public String getNombre() {
		return Nombre;
	}
	public void setNombre(String nombre) {
		Nombre = nombre;
	}
	public String getNacionalidad() {
		return Nacionalidad;
	}
	public void setNacionalidad(String nacionalidad) {
		Nacionalidad = nacionalidad;
	}
	public String getCodigo() {
		return Codigo;
	}
	public void setCodigo(String codigo) {
		Codigo = codigo;
	}

	public int getContinenteId() {
		return ContinenteId;
	}
	public void setContinenteId(int continenteId) {
		ContinenteId = continenteId;
	}
	public String getCodigo3() {
		return Codigo3;
	}
	public void setCodigo3(String codigo3) {
		Codigo3 = codigo3;
	}
	public String getCodigo2() {
		return Codigo2;
	}
	public void setCodigo2(String codigo2) {
		Codigo2 = codigo2;
	}
}
