<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<title>Publicacion</title>
	<meta name="viewport" content="width=device-width, user-scalable=no, initial-scalable=1.0, maximum-scale=1.0, minimum-scale=1.0">
	 <!-- Latest compiled and minified CSS -->
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">
<style>
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
       var contador=0;
       
        function initMap() {
        var map = new google.maps.Map(document.getElementById('map'), {
          zoom: 8,
          center: {lat: -36.606654, lng: -72.102983 }
        });
		
            
        map.addListener('click', function(e) {
          if(contador==0){
              placeMarkerAndPanTo(e.latLng, map);
              mandarInfo(e.latLng);
          }
        });
      }

        function mandarInfo(latLng){
		
        var posicion=latLng;
        document.getElementById("direccion").value = posicion;  
        obtenerUbicacion(); 
            
        }
        
        function obtenerUbicacion(){
        if (navigator.geolocation) {
          navigator.geolocation.getCurrentPosition(function(position) {
            var pos = {
              lat: position.coords.latitude,
              lng: position.coords.longitude
            };
			var posicion="("+pos.lat+","+pos.lng+")";
			document.getElementById("posicion").value = posicion;  
            			
          });
        } 
        
        }
        
        
      function placeMarkerAndPanTo(latLng, map) {
        
		var marker = new google.maps.Marker({
          position: latLng,
		  map: map
        });
        
        
        map.panTo(latLng);
        contador=contador+1;
      
      }
    </script>
        </tr>
    <script async defer
    src="https://maps.googleapis.com/maps/api/js?key=AIzaSyAI9Qf0N8SjrMi3be8vtrJgz2uzFJePv4A&callback=initMap">
    </script>
<div  style="margin-left: 8%; width: 80%; background-color:white;border.radius: 15px 15px 15px 15px;	
-moz-border-radius:15px 15px 15px 15px;
-webkit-border-radius:15px 15px 15px 15px;
behavior:url(border-radius.htc);" >
<hr  noshade="noshade" size="19" width="80%" />
	<h2 align="center">Ingrese la solicitud</h2>
<table>
<form action="ingresar.xml" method="POST" >
	<h4 align="center"><br/>Complete el siguiente formulario para solicitar la publicaci&oacute;n de su producto o servicio <br/><br/></h4>
<table align="center" >
<tr>
	
	<td><h5>T&iacute;tulo: </h5></td>
	<td><input title="Se necesita un t&iacute;tulo" type="text" name="titulo" class="form-control" placeholder="Titulo" aria-describedby="sizing-addon2" required></td>
</tr>
   

<tr>
	
	<td><h5>Usuario solicitante: </h5></td>
	<td><input title="Se necesita un id de solicitante" type="text" name="ids" class="form-control" placeholder="ID solicitante" aria-describedby="sizing-addon2" required></td>
</tr>
<tr>
	<td><h5> Autor:</h5></td>
	<td><input title="Se necesita un nombre de autor" type="text" name="autor" class="form-control" placeholder="Nombre Completo" aria-describedby="sizing-addon2" required></td>
</tr>

<tr>
	

<tr>
	<td><h5>Descripci&oacute;n:</h5></td>
	<td><textarea class="form-control" rows="5" cols="70" name="descripcion" placeholder="Descripcion de la/s oferta/s" aria-describedby="sizing-addon2" required></textarea></td>
</tr>
<tr>
	<td><h5>Datos de contacto:</h5></td>
	<td WIDTH="600" HEIGHT="10">
	<div class="input-group">
 			 <span class="input-group-addon" id="sizing-addon2" required>E-mail :</span>
  			<input title="Se necesita un email" type="email" name="email" class="form-control" placeholder="ejemplo@mail.com" aria-describedby="sizing-addon2" pattern="[a-zA-Z0-9_]+([.][a-zA-Z0-9_]+)*@[a-zA-Z0-9_]+([.][a-zA-Z0-9_]+)*[.][a-zA-Z]{1,5}" required>
			</div>
			<div class="input-group">
  			<span class="input-group-addon" id="sizing-addon2" required>Telefono:</span>
  			<input title="Se necesita un tel&eacute;fono" type="tel" pattern="[0-9]{9}" name="telefono" class="form-control" placeholder="Telefono de 9 digitos" aria-describedby="sizing-addon2" required>
	</td>
</tr>
<tr>
	<td><h5>Direcci&oacute;n actual:</h5></td>
	<td>
	<table >
		<tr>
		<td WIDTH="600" HEIGHT="10">
			<input title="Se necesita direcci&oacute;n" type="text" id="posicion" name="posicion" class="form-control" placeholder="Calle Número" aria-describedby="sizing-addon2" size="35" required readonly>
		</td>
		</tr>
	</table>
</td>
<tr>
	<td><h5>Direcci&oacute;n:</h5></td>
	<td>
	<table >
		<tr>
		<td WIDTH="600" HEIGHT="10">
			<input title="Se necesita direcci&oacute;n" type="text" id="direccion" name="direccion" class="form-control" placeholder="Calle Número" aria-describedby="sizing-addon2" size="35" required readonly>
		</td>
		</tr>
	</table>
</td>

</tr>
</table>
<hr  noshade="noshade" size="19" width="80%" />
</div>
<table>

<div style="margin-left: 8%; width: 80%; background-color:white;border.radius: 15px 15px 15px 15px;	
-moz-border-radius:15px 15px 15px 15px;
-webkit-border-radius:15px 15px 15px 15px;
behavior:url(border-radius.htc);" id="map" ></div>

</table>

<table align="center">
<tr>
<td colspan="3" align="center"	><input type="submit" class="boton_personalizado" value="Enviar"></td>
</tr>
</table>
</form>




<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js" integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa" crossorigin="anonymous"></script>	
</body>
<tr>
<hr  noshade="noshade" size="19" width="80%" />
<table align="center" width="80%" >
<tr>
<td align="center">
<a href="../login.html" class="boton_personalizado" title="Ir la pÃ¡gina anterior" align="center"> Volver</a>
</td>
</tr>
</table>
<hr  noshade="noshade" size="19" width="80%" />
</tr>
</table>
</tr>

</html>