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
  </style>
</head>

<body>
  
  <table align="center" width="80%" class="egt" >
	
    <tr >
      <th colspan="4" align="center"><h3><b>&Eacute;xito al ingresar una solicitud, el administrador la revisar&aacute;</b></h3></th>
      
    </tr>
	<tr>
	<th colspan="4"><h3><b>${solicitud.titulo}</b></h3></th>
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
        <p id="rcorners">${solicitud.descripcion}</p>
      </div></th>
          <td><h6>Autor: </h6></td><td>${solicitud.autor}</td>
    </tr>

    <tr>
      <td><h6>Id Solicitante:</h6></td>
          <td>${solicitud.id_solicitante}</td>
    </tr>
	
	<tr>
      <td><h6>E-mail:</h6></td>
          <td>${solicitud.email}</td>
    </tr>
	
	<tr>
      <td><h6>Tel&eacute;fono:</h6></td>
        <td>${solicitud.telefono}</td>

	</tr>
	<tr>
      <td><h6>Direcci&oacute;n:</h6></td>
        <td>${solicitud.direccion}</td>

	</tr>
	<hr  noshade="noshade" size="19" width="80%" />

</table>

<table align="center" width="80%" >
<tr>
<td align="center">
<a href="../login.html" title="Ir la página anterior" align="center"> Volver</a>
</td>
</tr>
</table>
<hr  noshade="noshade" size="19" width="80%" />
</body>
</html>