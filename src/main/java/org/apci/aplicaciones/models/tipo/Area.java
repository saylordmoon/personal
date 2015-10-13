package org.apci.aplicaciones.models.tipo;

import javax.xml.bind.annotation.XmlRootElement;

@XmlRootElement
public class Area {
	private int AreaId;
	private String Nombre;
	public int getAreaId() {
		return AreaId;
	}
	public void setAreaId(int areaId) {
		AreaId = areaId;
	}
	public String getNombre() {
		return Nombre;
	}
	public void setNombre(String nombre) {
		Nombre = nombre;
	}
}
