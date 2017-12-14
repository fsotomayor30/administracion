package com.usuario.empresa.web.administracion.servicios;

import java.util.List;

import com.usuario.empresa.web.administracion.entidades.Solicitud;

public class SolicitudService extends ServiceImpl {
	/**
	 * Retorna la lista de usuarios
	 * 
	 * @return lista de usuarios
	 * @throws Exception
	 */
	@SuppressWarnings("unchecked")
	public List<Solicitud> getSolicitudes() throws Exception {
		return (List<Solicitud>) sqlMap.queryForList("getSolicitudes");
	}

	/**
	 * Retorna un usuario dado su correspondiente id
	 * 
	 * @param idUsuario
	 *            - id del usuario
	 * @return usuario
	 * @throws Exception
	 */
	public Solicitud getSolicitud(int idSolicitud) throws Exception {
		return (Solicitud) sqlMap.queryForObject("getSolicitud", idSolicitud);
	}

	/**
	 * Retorna la cantidad total de usuarios
	 * 
	 * @return cantidad de usuarios
	 * @throws Exception
	 */
	public int getTotalSolicitudes() throws Exception {
		return (Integer) sqlMap.queryForObject("getTotalSolicitudes");
	}

	/**
	 * Inserta un usuario
	 * 
	 * @param usuario
	 *            - datos del usuario
	 * @return id del nuevo usuario
	 * @throws Exception
	 */
	public void insertSolicitud(Solicitud solicitud) throws Exception {
		sqlMap.insert("insertSolicitud", solicitud);
	}
	
	public void deleteSolicitud(int idSolicitud) throws Exception {
		sqlMap.delete("deleteSolicitud", idSolicitud);
	}


	
}