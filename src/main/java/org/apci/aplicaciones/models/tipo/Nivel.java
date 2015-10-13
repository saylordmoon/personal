package org.apci.aplicaciones.models.tipo;

import javax.xml.bind.annotation.XmlRootElement;

@XmlRootElement
public class Nivel {
	private int NivelId;
	private int Descripcion;
	public int getNivelId() {
		return NivelId;
	}
	public void setNivelId(int nivelId) {
		NivelId = nivelId;
	}
	public int getDescripcion() {
		return Descripcion;
	}
	public void setDescripcion(int descripcion) {
		Descripcion = descripcion;
	}
}
