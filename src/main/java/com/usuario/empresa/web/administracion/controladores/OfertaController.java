package com.usuario.empresa.web.administracion.controladores;

import java.util.ArrayList;
import java.util.List;

import java.io.PrintWriter; 
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.multiaction.MultiActionController;


import com.usuario.empresa.web.administracion.entidades.Oferta;
import com.usuario.empresa.web.administracion.servicios.OfertaService;

public class OfertaController extends MultiActionController {
	private List<Oferta> ofertas = new ArrayList<Oferta>();
	private List<Oferta> buscador = new ArrayList<Oferta>();
	private List<Integer> ofertasMes = new ArrayList<Integer>();
	
	private OfertaService service = null;
	private ApplicationContext ctx = null;

	/**
	 * constructor
	 */
	public OfertaController() {

		ctx = new ClassPathXmlApplicationContext(
				"classpath:/spring/applicationContext.xml");
		service = (OfertaService) ctx.getBean("ofertasService");
	}

	public ModelAndView listar(HttpServletRequest request,
			HttpServletResponse response) throws Exception {
			ofertas = service.getOfertas();
		return new ModelAndView("ofertas/listar", "ofertas", ofertas);
	}
	
	public ModelAndView buscarId(HttpServletRequest request,
			HttpServletResponse response) throws Exception {
			Oferta oferta=service.getOferta(Integer.parseInt(request.getParameter("inputId")));
			buscador.clear();
			buscador.add(oferta);
			return new ModelAndView("ofertas/listar", "ofertas", buscador);
		}
	
	public ModelAndView buscarDireccion(HttpServletRequest request,
			HttpServletResponse response) throws Exception {
		buscador.clear();	
		buscador=service.getOfertasDireccion((request.getParameter("inputDireccion")));
			return new ModelAndView("ofertas/listar", "ofertas", buscador);
		
	}
	public ModelAndView buscarTitulo(HttpServletRequest request,
			HttpServletResponse response) throws Exception {
		buscador.clear();	
		buscador=service.getOfertasTitulo((request.getParameter("inputTitulo")));
			return new ModelAndView("ofertas/listar", "ofertas", buscador);
		
	}
	
	public ModelAndView buscarAutor(HttpServletRequest request,
			HttpServletResponse response) throws Exception {
		buscador.clear();
		buscador=service.getOfertasAutor((request.getParameter("inputAutor")));
			return new ModelAndView("ofertas/listar", "ofertas", buscador);
		
	}
	
	public ModelAndView buscarFecha(HttpServletRequest request,
			HttpServletResponse response) throws Exception {
		buscador.clear();
		List<Oferta>resultado=new ArrayList<Oferta>();
		List<Oferta> lista1=service.getOfertasFechaDesde(request.getParameter("inputDesde"));
		List<Oferta> lista2=service.getOfertasFechaHasta(request.getParameter("inputHasta"));
		
		
		for(Oferta oferta1: lista1){
			for(Oferta oferta2: lista2){
				if (oferta1.getId()==oferta2.getId()) {
					resultado.add(oferta1);
				}
			}
			}
		
			return new ModelAndView("ofertas/listar", "ofertas", resultado);
		
	}
	
	
	


	
}
