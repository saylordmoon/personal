package org.apci.aplicaciones.models.tipo;

import javax.xml.bind.annotation.XmlRootElement;

@XmlRootElement
public class Cargo {
	private int CargiId;
	private int Descripcion;
	public int getCargiId() {
		return CargiId;
	}
	public void setCargiId(int cargiId) {
		CargiId = cargiId;
	}
	public int getDescripcion() {
		return Descripcion;
	}
	public void setDescripcion(int descripcion) {
		Descripcion = descripcion;
	}
}
