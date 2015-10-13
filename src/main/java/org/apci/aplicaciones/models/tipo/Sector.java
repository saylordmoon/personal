package org.apci.aplicaciones.models.tipo;

import javax.xml.bind.annotation.XmlRootElement;

@XmlRootElement
public class Sector {
	private int SectorId;
	private String Nombre;
	public int getSectorId() {
		return SectorId;
	}
	public void setSectorId(int sectorId) {
		SectorId = sectorId;
	}
	public String getNombre() {
		return Nombre;
	}
	public void setNombre(String nombre) {
		Nombre = nombre;
	}
}
