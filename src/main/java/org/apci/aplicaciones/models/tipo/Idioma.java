package org.apci.aplicaciones.models.tipo;

import javax.xml.bind.annotation.XmlRootElement;

@XmlRootElement
public class Idioma {
	private int IdiomaId;
	private String Nombre;
	
	public int getIdiomaId() {
		return IdiomaId;
	}
	public void setIdiomaId(int idiomaId) {
		IdiomaId = idiomaId;
	}
	public String getNombre() {
		return Nombre;
	}
	public void setNombre(String nombre) {
		Nombre = nombre;
	}
}
