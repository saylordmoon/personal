package org.apci.aplicaciones.models;

import javax.xml.bind.annotation.XmlRootElement;

@XmlRootElement
public class Archivo {
	
	private String Nombre;

	public String getNombre() {
		return Nombre;
	}

	public void setNombre(String nombre) {
		Nombre = nombre;
	}

}
