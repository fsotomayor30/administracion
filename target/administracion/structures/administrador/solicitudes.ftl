<!DOCTYPE html>
<html>

<head>
	<meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <title>Administrador</title>
  <meta name="viewport" content="width=device-width, user-scalable=no, initial-scalable=1.0, maximum-scale=1.0, minimum-scale=1.0">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">
  <link rel="stylesheet" href="estilo.css">
  <style>
    #rcorners {
    border-radius: 25px;
    border: 2px solid #900C3F;
    padding: 20px; 
    width: 600px;
    height: 150px;    
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
  
  <SCRIPT LANGUAGE="JavaScript">
function mi_alerta () {
alert ("Se agrego la solicitud a oferta");
}
</SCRIPT>

</head>


<body background="https://images5.alphacoders.com/412/412820.jpg">
	<div  style="margin-left: 8%; width: 80%; background-color:white;border.radius: 15px 15px 15px 15px;	
-moz-border-radius:15px 15px 15px 15px;
-webkit-border-radius:15px 15px 15px 15px;
behavior:url(border-radius.htc);" >
<hr  noshade="noshade" size="19" width="80%" />
	<h2 align="center">Listado de Solicitudes</h2>
  [#list solicitudes as solicitud]
  <form action="aceptar.xml" method="POST" >
  <table align="center" width="80%" class="egt" >
    <tr >
      
	  
	  <th><h5><b>T&iacute;itulo: </b></h5></th><td><input type="text" class="outlinenone" id="combo" style="background-color:transparent; " name="titulo" class="form-control" value=${solicitud.titulo} aria-describedby="sizing-addon2" readonly></td>
	  
    </tr>
	<tr>
	<th><h5><b>id: </b></h5></th><td><input type="text" class="outlinenone" id="combo" style="background-color:transparent;" name="id" class="form-control" value=${solicitud.id} aria-describedby="sizing-addon2" readonly></td>
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
        <p id="rcorners"><input type="text" class="outlinenone" id="combo" style="background-color:transparent;" name="descripcion" class="form-control" value=${solicitud.descripcion} aria-describedby="sizing-addon2" readonly></p>
      </div></th>
          <td><h6>Autor: </h6></td>
		  <td  ><input type="text" class="outlinenone" name="autor" id="combo" style="background-color:transparent;" class="form-control" value=${solicitud.autor} aria-describedby="sizing-addon2" readonly></td>
    </tr>
	
	<tr>
      <td><h6>Id Solicitante:</h6></td>
          <td  ><input type="text" class="outlinenone" name="id_solicitante" id="combo" style="background-color:transparent;" class="form-control" value=${solicitud.id_solicitante} aria-describedby="sizing-addon2" readonly></td>
		  
    </tr>

    <tr>
      <td><h6>E-mail:</h6></td>
	  <td  ><input type="text" class="outlinenone"  name="email" id="combo" style="background-color:transparent;" class="form-control" value=${solicitud.email} aria-describedby="sizing-addon2" readonly></td>
          
    </tr>
	
    <tr>
      <td><h6>Tel&eacute;fono:</h6></td>
	  <td  ><input type="text" class="outlinenone" id="combo" style="background-color:transparent;" name="telefono" class="form-control" value=${solicitud.telefono} aria-describedby="sizing-addon2" readonly></td>
       

	</tr>
	<tr>
      <td><h6>Direcci&oacute;n:</h6></td>
	  <td><input type="text" class="outlinenone" id="combo" style="background-color:transparent;" name="direccion" class="form-control" value="${solicitud.direccion}" aria-describedby="sizing-addon2" size=80 readonly></td>

	</tr>
	<hr  noshade="noshade" size="19" width="80%" />
	<td colspan="3" align="center">
	<input type="submit" class="boton_personalizado" value="Aceptar Solicitud" onClick="mi_alerta()"></td>
</tr>
</form>
[/#list]
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