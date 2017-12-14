<!DOCTYPE html>
<html>

<head>
	<meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <title>Administrador</title>
  <meta name="viewport" content="width=device-width, user-scalable=no, initial-scalable=1.0, maximum-scale=1.0, minimum-scale=1.0">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">
  <style>
    
#rcorners {
    border-radius: 25px;
    border: 2px solid #900C3F;
    padding: 20px; 
    width: 600px;
    height: 150px;    
}


      /* Always set the map height explicitly to define the size of the div
       * element that contains the map. */
      #map {
        height: 70%;
        width: 70%;
		margin-left: 15%;
		
        }
      /* Optional: Makes the sample page fill the window. */
      html, body {
        height: 100%;
        width: 100%;
        
      }
	  
	  #combo{
	color: #707070;
	background-color: #FFFFFF;
	border-width:0;
}


   
  </style>
  <style type="text/css">
  .boton_personalizado{
    text-decoration: none;
    padding: 10px;
    color: #ffffff;
    background-color: #900C3F;
    border-radius: 6px;
    border: 1px solid #ffffff;
  }
  .boton_personalizado:hover{
    color: #1883ba;
    background-color: #ffffff;
  }
  .input_personalizado{
    text-decoration: none;
    padding: 10px;
    color: #ffffff;
    background-color: #900C3F;
    border-radius: 6px;
    border: 1px solid #ffffff;
  }
</style>
 
 
 
 
</head>


<body background="https://images5.alphacoders.com/412/412820.jpg">


	
    <script>
      var map;
      function initMap() {
        map = new google.maps.Map(document.getElementById('map'), {
          zoom: 8,
          center: new google.maps.LatLng(-36.606654, -72.102983),
          mapTypeId: 'roadmap'
        });
		
		

        var iconBase = 'https://maps.google.com/mapfiles/kml/shapes/';
		
		function getLatLngFromString(location) { 
		
			var latlang = location.toString().replace(/[()]/g,''); 
			var latlng = latlang.split(","); 
			locate = new google.maps.LatLng(parseFloat(latlng[0]) , parseFloat(latlng[1])); 
			
			return locate; 
		}
		function direccion(variable,vari){
		
		var variable1=variable[vari];
		var variable2=variable1.value;
		
		return getLatLngFromString(variable2);
		}
		
		function titulo(variable,vari){
		
		var variable1=variable[vari];
		var variable2=variable1.value;
		
		return variable2;
		}
		
		function descripcion(variable,vari){
		
		var variable1=variable[vari];
		var variable2=variable1.value;
		
		return variable2;
		}
		
		
        var x=document.getElementsByName("direccion");
		var i;
		var y=document.getElementsByName("titulo");
		var z=document.getElementsByName("descripcion");
		
		
		
		
		for(i=0;i<x.length;i++){
        
          var marker = new google.maps.Marker({
            position: direccion(x,i),
            map: map,
			title: "Titulo: "+titulo(y,i)+"\n Descripcion: "+descripcion(z,i),
			
		});
        
		}
      }
    </script>
    <script async defer
    src="https://maps.googleapis.com/maps/api/js?key=AIzaSyAI9Qf0N8SjrMi3be8vtrJgz2uzFJePv4A&callback=initMap">
    </script>

	<div  style="margin-left: 8%; width: 80%; background-color:white;border.radius: 15px 15px 15px 15px;	
-moz-border-radius:15px 15px 15px 15px;
-webkit-border-radius:15px 15px 15px 15px;
behavior:url(border-radius.htc);" >
<hr  noshade="noshade" size="19" width="80%" />
	 <h2 align="center">Buscador de Ofertas</h2>
	 <table align="center" width="80%" class="egt" >
	 <tr>
	 <form action="buscarTitulo.xml" method="POST" >
	 <th><h5><b>Titulo:</b></h5></th>
	 <td><input type="text" class="input_personalizado" name="inputTitulo" size="120"  aria-describedby="sizing-addon2" required></td>
	 <td colspan="3" align="center"	><input type="submit" class="boton_personalizado" value="Buscar"></td>
	</form>
	</tr>
	<tr>
	<form action="buscarAutor.xml" method="POST" >
	 <th><h5><b>Autor:</b></h5></th>
	 <td><input type="text" class="input_personalizado" name="inputAutor" size="120" aria-describedby="sizing-addon2" required></td>
	 <td colspan="3" align="center"	><input type="submit" class="boton_personalizado" value="Buscar"></td>
	</form>
	</tr>
	<table align="center" width="50%" class="egt">
	<tr>
	<form action="buscarFecha.xml" method="POST" >
	 <th><h5><b>Desde:</b></h5></th>
	 <td><input type="date" class="input_personalizado" name="inputDesde" step="1" min="2013-01-01" max="2030-12-31" value="2017-11-01" aria-describedby="sizing-addon2" required></td>
	 <th><h5><b>Hasta:</b></h5></th>
	 <td><input type="date" class="input_personalizado" name="inputHasta" step="1" min="2013-01-01" max="2030-12-31" value="2017-11-01" aria-describedby="sizing-addon2" required></td>
	 <td colspan="3" align="center"	><input type="submit" class="boton_personalizado" value="Buscar"></td>
	</form>
	
	</tr>
	
	</table>
	<table align="center">
	<tr>
	 <form action="listar.xml" method="POST" >
	 <td colspan="3" align="center"><input type="submit" class="boton_personalizado" value="Reestablecer"></td>
	</form>
	</tr>
	</table>
</table>
</div>


	 <hr  noshade="noshade" size="19" width="80%" />
	 <div  style="margin-left: 8%; width: 80%; background-color:white;border.radius: 15px 15px 15px 15px;	
-moz-border-radius:15px 15px 15px 15px;
-webkit-border-radius:15px 15px 15px 15px;
behavior:url(border-radius.htc);" >
	 <h2 align="center">Ubicaci&oacute;n de ofertas</h2>
	 </div>
	 <hr  noshade="noshade" size="19" width="80%" />
	 <div style="margin-left: 8%; width: 80%; background-color:white;border.radius: 15px 15px 15px 15px;	
-moz-border-radius:15px 15px 15px 15px;
-webkit-border-radius:15px 15px 15px 15px;
behavior:url(border-radius.htc);" id="map" ></div>
	 
	 
	 
  <div  style="margin-left: 8%; width: 80%; background-color:white;border.radius: 15px 15px 15px 15px;	
-moz-border-radius:15px 15px 15px 15px;
-webkit-border-radius:15px 15px 15px 15px;
behavior:url(border-radius.htc);" >
<hr  noshade="noshade" size="19" width="80%" />
<h2 align="center">Listado de Ofertas</h2>
  [#list ofertas as oferta]
  
  <table align="center" width="80%"  >
	
    <tr >
      <th><h5><b>T&iacute;tulo: </b></h5></th><td><input type="text" class="outlinenone" id="combo" style="background-color:transparent; " name="titulo" class="form-control" value=${oferta.titulo} aria-describedby="sizing-addon2" readonly></td>
	  
    </tr>

    <tr width="200" HEIGHT="10">
      <td rowspan="5"><div class="row">
          <div class="col-xs-6 col-md-3">
            </div>
        </div>
      </td>

      <th><h5><b>Descripci&oacute;n</b></h5></th>
      <th colspan="2"><h5><b>Contacto</b></h5></th>
    </tr>

    <tr>
      <th rowspan="4"><div >
        <p id="rcorners"><input type="text" class="outlinenone" id="combo" style="background-color:transparent;" name="descripcion" class="form-control" value=${oferta.descripcion} aria-describedby="sizing-addon2"  readonly></p>
      </div></th>
          <td><h6>Autor: </h6></td><td><input type="text" class="outlinenone" name="autor" id="combo" style="background-color:transparent;" class="form-control" value="${oferta.autor}" aria-describedby="sizing-addon2" readonly></td>

    </tr>

    <tr>
      <td><h6>E-mail:</h6></td>
          <td><input type="text" class="outlinenone"  name="email" id="combo" style="background-color:transparent;" class="form-control" value=${oferta.email} aria-describedby="sizing-addon2" readonly></td>
     
    </tr>
	
	<tr>
      <td><h6>Direcci&oacute;n:</h6></td>
           <td><input type="text" class="outlinenone" id="combo" style="background-color:transparent;" name="direccion" class="form-control" value="${oferta.direccion}" aria-describedby="sizing-addon2" size="40"readonly></td>
      
    </tr>

    <tr>
      <td><h6>Tel&eacute;fono:</h6></td>
        <td  ><input type="text" class="outlinenone" id="combo" style="background-color:transparent;" name="telefono" class="form-control" value=${oferta.telefono} aria-describedby="sizing-addon2" readonly></td>
      

	</tr>
	
	



[/#list]
</div>
</table>

<hr  noshade="noshade" size="19" width="80%" />
<table align="center" width="80%" >
<tr>
<td align="center">
<a class="boton_personalizado" href="../login.html">Volver</a>

</td>
</tr>
</table>
<hr  noshade="noshade" size="19" width="80%" />

</body>
</html>