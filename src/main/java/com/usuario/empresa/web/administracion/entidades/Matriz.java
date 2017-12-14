package com.usuario.empresa.web.administracion.entidades;

import java.util.List;

public class Matriz {
	List<Posicion> posiciones;
	List<Integer> ofertasMes;
	
	public List<Posicion> getPosiciones() {
		return posiciones;
	}
	public void setPosiciones(List<Posicion> posiciones) {
		this.posiciones = posiciones;
	}
	public List<Integer> getOfertasMes() {
		return ofertasMes;
	}
	public void setOfertasMes(List<Integer> ofertasMes) {
		this.ofertasMes = ofertasMes;
	}
	public Matriz(List<Posicion> posiciones, List<Integer> ofertasMes) {
		
		this.posiciones = posiciones;
		this.ofertasMes = ofertasMes;
	}
	public Matriz() {
		
	}

	
}


