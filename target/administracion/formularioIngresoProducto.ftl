<!DOCTYPE html>
<html>
<head>
<title>Formulario de Ingreso</title>
</head>
<body>
	<h1>FORMULARIO INGRESO DE PRODUCTO</h1>
	
	<form method="POST" action="agregarOferta">
		<table class="redTable" align="center">
			<tr>
				<td>TITULO:</td>
				<td colspan="2"><input type="text" name="titulo"
					required></td>
			</tr>
			<tr>
				<td>AUTOR:</td>
				<td colspan="2"><input type="text" name="autor"
					required></td>
			</tr>
			<tr>
				<td>DIRECCION:</td>
				<td colspan="2"><input type="text" name="direccion" required></td>
			</tr>
			<tr>
				<td>REGION:<select name="Region">
						<option value="">metropolitana</option>
						<option value="">biobio</option>
				</select></td>
				<td>PROVINCIA: <select name="provincia">
						<option value="">ñuble</option>
						<option value="">biobio</option>
						<option value="">tarapaca</option>
				</select>
				</td>
				<td>COMUNA: <select name="comunas">
						<option value="">CHILLAN</option>
						<option value="">SANTIAGO</option>
				</select></td>
			</tr>

			<tr>
				<td>DESCRIPCION:</td>
				<td colspan="2"><textarea rows="4" cols="50" name="descripcion"
						required>
INGRESE LA DESCRIPCIÓN DE LA OFERTA 
</textarea></td>
			</tr>

			<tr>
				<td>DATOS DE CONTACTO</td>
				<td colspan="2">
					<table>
						<tr>
							<td>Correo: <input type="text" name="email" required></td>
						</tr>
						<tr>
							<td>Telefono: <input type="tel" name="telefono" required
								placeholder="+56-45-xxxxxxxx	"></td>
						</tr>
					</table>
				</td>
			</tr>
			<tr>
				<td colspan="3" align="center"><input type="submit"
					value="ingresar"></td>
			</tr>
		</table>
	</form>

</body>
</html>
