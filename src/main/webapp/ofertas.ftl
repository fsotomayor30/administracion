<!DOCTYPE html>
<html>
<head>
<title>Ofertas</title>
</head>
<body>

	<h1> OFERTAS
		
	</h1>
		<form action="OfertaController" method="POST">
		
        
        
        <table class="redTable" align="center">
			 <tr>
				<td>OFERTA:
				<td colspan="2"><input type="text" name="oferta"
					required></td>
			
            <td colspan="3" align="center"><input type="submit"
					value="Buscar"></td>
            
            </tr>
            </table>
            </form>
			<table class="redTable" align="center">
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
				<td>DATOS DE CONTACTO</td>
				<td colspan="2">
					<table align="center">
						<tr>
							<td>Correo: <input type="text" name="email" required></td>
						</tr>
						<tr>
							<td>Telefono: <input type="tel" name="telefono" required
							</td>
						</tr>
					
				</td>
				
			</tr>
</table>
		</table>
</body>
</html>
