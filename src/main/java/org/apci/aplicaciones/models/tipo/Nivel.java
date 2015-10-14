package org.apci.aplicaciones.models.tipo;

import javax.xml.bind.annotation.XmlRootElement;

@XmlRootElement
public class Nivel {
	private int NivelId;
	private String Descripcion;
	public int getNivelId() {
		return NivelId;
	}
	public void setNivelId(int nivelId) {
		NivelId = nivelId;
	}
	public String getDescripcion() {
		return Descripcion;
	}
	public void setDescripcion(String descripcion) {
		Descripcion = descripcion;
	}
	
}
