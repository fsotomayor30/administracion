package com.usuario.empresa.web.administracion.entidades;


public class Posicion {
	
	private int id;
	private String posicion;
	
	public Posicion() {
		
	}

	public Posicion(int id, String posicion) {
		this.id = id;
		this.posicion = posicion;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getPosicion() {
		return posicion;
	}

	public void setPosicion(String posicion) {
		this.posicion = posicion;
	}
	
	
	
}
