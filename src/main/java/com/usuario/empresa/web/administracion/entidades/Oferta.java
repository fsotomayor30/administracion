package com.usuario.empresa.web.administracion.entidades;

import java.util.Date;

public class Oferta {
	private int id;
	private String titulo;
	private String autor;
	private String direccion;
	private String descripcion;
	private String email;
	private String telefono;
	private Date fecha;
	
	public Oferta() {
		
	}

	
	public Oferta(int id, String titulo, String autor, String direccion, String descripcion, String email,
			String telefono, Date fecha) {
		this.id = id;
		this.titulo = titulo;
		this.autor = autor;
		this.direccion = direccion;
		this.descripcion = descripcion;
		this.email = email;
		this.telefono = telefono;
		this.fecha=fecha;
	}


	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getTitulo() {
		return titulo;
	}

	public void setTitulo(String titulo) {
		this.titulo = titulo;
	}

	public String getDescripcion() {
		return descripcion;
	}

	public void setDescripcion(String descripcion) {
		this.descripcion = descripcion;
	}

	public String getAutor() {
		return autor;
	}

	public void setAutor(String autor) {
		this.autor = autor;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getTelefono() {
		return telefono;
	}

	public void setTelefono(String telefono) {
		this.telefono = telefono;
	}

	public String getDireccion() {
		return direccion;
	}

	public void setDireccion(String direccion) {
		this.direccion = direccion;
	}


	public Date getFecha() {
		return fecha;
	}


	public void setFecha(Date fecha) {
		this.fecha = fecha;
	}
	
	
	
	
	
}

