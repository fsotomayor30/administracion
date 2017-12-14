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
				
        var x=document.getElementsByName("posicion");
		var i;
				
		for(i=0;i<x.length;i++){
            var marker = new google.maps.Marker({
            position: direccion(x,i),
            map: map,
			
		});
        
		}
      }
    </script>
    <script async defer
    src="https://maps.googleapis.com/maps/api/js?key=AIzaSyAI9Qf0N8SjrMi3be8vtrJgz2uzFJePv4A&callback=initMap">
    </script>

  <script type="text/javascript" src="https://www.gstatic.com/charts/loader.js"></script>
  <script type="text/javascript">
    google.charts.load("current", {packages:['corechart']});
    google.charts.setOnLoadCallback(drawChart);
    
    function Mes(variable,vari){
		
		var variable1=variable[vari];
		var variable2=variable1.value;
		
		return parseInt(variable2);
		}
		
		
        var x=document.getElementsByName("meses");
    
    function drawChart() {
      var data = google.visualization.arrayToDataTable([
        ["Mes", "Cantidad", { role: "style" } ],
         ["Enero", Mes(x,0), "#b87333"],
        ["Febrero", Mes(x,1), "#b4C118"],
        ["Marzo", Mes(x,2), "silver"],
        ["Abril", Mes(x,3), "gold"],
        ["Mayo", Mes(x,4), "color: #D21DA6"],
        ["Junio", Mes(x,5), "color: #189AC1"],
        ["Julio", Mes(x,6), "color: #5A9058"],
        ["Agosto", Mes(x,7), "color: #FF0000"],
        ["Septiembre", Mes(x,8), "color: #D7E716"],
        ["Octubre", Mes(x,9), "color: #000000"],
        ["Noviembre", Mes(x,10), "color: #6CA76A"],
        ["Diciembre", Mes(x,11), "color: #5018C1"]
      ]);

      var view = new google.visualization.DataView(data);
      view.setColumns([0, 1,
                       { calc: "stringify",
                         sourceColumn: 1,
                         type: "string",
                         role: "annotation" },
                       2]);

      var options = {
        title: "Ofertas Por Mes",
        width: 1000,
        height: 600,
        bar: {groupWidth: "95%"},
        legend: { position: "none" },
      };
      var chart = new google.visualization.ColumnChart(document.getElementById("columnchart_values"));
      chart.draw(view, options);
  }
  </script>

	 

	 <hr  noshade="noshade" size="19" width="80%" />
	 <div  style="margin-left: 8%; width: 80%; background-color:white;border.radius: 15px 15px 15px 15px;	
-moz-border-radius:15px 15px 15px 15px;
-webkit-border-radius:15px 15px 15px 15px;
behavior:url(border-radius.htc);" >
	 <h2 align="center">Ubicaci&oacute;n de solicitudes</h2>
	 </div>
	 <hr  noshade="noshade" size="19" width="80%" />
	 <div style="margin-left: 8%; width: 80%; background-color:white;border.radius: 15px 15px 15px 15px;	
-moz-border-radius:15px 15px 15px 15px;
-webkit-border-radius:15px 15px 15px 15px;
behavior:url(border-radius.htc);" id="map" ></div>

<hr  noshade="noshade" size="19" width="80%" />
	 <div align="center" id="columnchart_values" style="margin-left: 10%; width: 80%;"></div>
	 

<hr  noshade="noshade" size="19" width="80%" />
	 	 


<center>
<a class="boton_personalizado" href="../login.html">Volver</a>
</center>
[#list matriz.posiciones as posicion]
<td><input type="hidden" name="posicion" value="${posicion.posicion}"></td>
[/#list]
<hr  noshade="noshade" size="19" width="80%" />
[#list matriz.ofertasMes as ofertaMes]
<td><input type="hidden" name="meses" value="${ofertaMes}"></td>
[/#list]

</body>
</html>