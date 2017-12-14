$(document).ready(function(){
    
	 $("#publicacion").click(function(event) {
                    $("#content").load('formularioIngresoProducto.ftl');
					event.preventDefault();
         
                });
     $("#ofertas").click(function(event) {
                    $("#content").load('ofertas.ftl');
					event.preventDefault();
         
                });
    
      $("#administrador").click(function(event) {
                    $("#content").load('administrador.html');
					event.preventDefault();
         
                });
    
});