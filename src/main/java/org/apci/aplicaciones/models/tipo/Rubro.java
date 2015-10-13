package org.apci.aplicaciones.models.tipo;

import javax.xml.bind.annotation.XmlRootElement;

@XmlRootElement
public class Rubro {
	private int RubroId;
	private String Descripcion;
	public int getRubroId() {
		return RubroId;
	}
	public void setRubroId(int rubroId) {
		RubroId = rubroId;
	}
	public String getDescripcion() {
		return Descripcion;
	}
	public void setDescripcion(String descripcion) {
		Descripcion = descripcion;
	}
}
