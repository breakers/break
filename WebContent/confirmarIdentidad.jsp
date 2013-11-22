<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page session="true" %>
<%@page import="bean.EmpleadoDTO" %>
<!DOCTYPE html>
<html lang="en">
  
<head>
<% 
String usuario="\"\"";

if(request.getAttribute("empleado") != null){
	EmpleadoDTO empleado = (EmpleadoDTO) request.getAttribute("empleado");
	usuario=(String) empleado.getUsu_emp();
}else{
	response.sendRedirect("olvidoClave.jsp");
}
 %>
 	
 
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Cambiar contraseña - SEDAPAR</title>


	<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no">
    <meta name="apple-mobile-web-app-capable" content="yes">     
<link href="css/bootstrap.min.css" rel="stylesheet" type="text/css" />
<link href="css/bootstrap-responsive.min.css" rel="stylesheet" type="text/css" />

<link href="css/font-awesome.css" rel="stylesheet">
    <link href="http://fonts.googleapis.com/css?family=Open+Sans:400italic,600italic,400,600" rel="stylesheet">
    
<link href="css/style.css" rel="stylesheet" type="text/css">
<link href="css/pages/signin.css" rel="stylesheet" type="text/css">

</head>

<body>
	<div class="page-wrap">
	<div class="navbar navbar-fixed-top">
	
	<div class="navbar-inner">
		
		<div class="container">
			
			<a class="btn btn-navbar" data-toggle="collapse" data-target=".nav-collapse">
				<span class="icon-bar"></span>
				<span class="icon-bar"></span>
				<span class="icon-bar"></span>
			</a>
			
			<div class="brand">
				SEDAPAR Administración		
			</div>		
			
			<div class="nav-collapse">
				<ul class="nav pull-right">
					
					<!-- <li class="">						
						<a href="signup.jsp" class="">
							Don't have an account?
						</a>
						
					</li> -->
					
					<li class="">						
						<a href="index.jsp" class="">
							<i class="icon-chevron-left"></i>
							Ir a la Página de Inicio
						</a>
						
					</li>
				</ul>
				
			</div><!--/.nav-collapse -->	
	
		</div> <!-- /container -->
		
	</div> <!-- /navbar-inner -->
	
</div> <!-- /navbar -->



<div class="account-container register" style="width:500px">
	
	<div class="content clearfix">
		
		<form name="formu" method="" action="#" >
		
			<h2>Confirmación de Identidad</h2>
			<br>
			<div class="login-fields">
				
				<!-- <p>Please provide your details</p> -->
				<table>	
					<tr>															
						<td align="right">Usuario:&emsp;</td>
						<td><input type="text" id="usuario" name="usuario" value=<%=usuario%> style="width: 100px;height: 6px" readonly="readonly"/></td>
						
					</tr> 
					
					<tr>
					<td>Fecha de Nacimiento:&emsp;</td>
						<td><select name="dia" style="width: 90px">
								<option value="-1">Día</option>
								<option value="1">1</option><option value="2">2</option><option value="3">3</option>
								<option value="4">4</option><option value="5">5</option><option value="6">6</option>
								<option value="7">7</option><option value="8">8</option><option value="9">9</option>
								<option value="10">10</option><option value="11">11</option><option value="12">12</option>
								<option value="13">13</option><option value="14">14</option><option value="15">15</option>
								<option value="16">16</option><option value="17">17</option><option value="18">18</option>
								<option value="19">19</option><option value="20">20</option><option value="21">21</option>
								<option value="22">22</option><option value="23">23</option><option value="24">24</option>
								<option value="25">25</option><option value="26">26</option><option value="27">27</option>
								<option value="28">28</option><option value="29">29</option><option value="30">30</option>
								<option value="31">31</option>				
							</select>
							<select name="mes" style="width: 90px">
								<option value="-1">Mes</option>
								<option value="1">Enero</option>
								<option value="2">Febrero</option>
								<option value="3">Marzo</option>
								<option value="4">Abril</option>
								<option value="5">Mayo</option>
								<option value="6">Junio</option>
								<option value="7">Julio</option>
								<option value="8">Agosto</option>
								<option value="9">Setiembre</option>
								<option value="10">Octubre</option>
								<option value="11">Noviembre</option>
								<option value="12">Diciembre</option>											
							</select>
						</td>
						<td valign="top"><input type="text" name="año" placeholder="Año" style="width: 80px;height: 5px"/></td>
					<tr>															
						<td align="right">D.N.I.:&emsp;</td>
						<td><input type="text" name="dni" style="width: 100px;height: 6px"/></td>
					</tr> 
					<tr>															
						<td align="right">Pregunta clave:&emsp;</td>
						<td><input type="text" name="pregunta" style="width: 100px;height: 6px" readonly="readonly"/></td>
					</tr>
					<tr>															
						<td align="right">Respuesta secreta:&emsp;</td>
						<td><input type="text" name="respuesta" style="width: 100px;height: 6px" readonly="readonly"/></td>
					</tr> 
				</table>
				<br>
				<p style="font-size:smaller;">Si olvidaste tu clave puedes crear una nueva, luego de haber ingresado la información.</p>
					
			</div> <!-- /login-fields -->
			
			<div class="login-actions">				
				<!--
				<span class="login-checkbox">
					<input id="Field" name="Field" type="checkbox" class="field login-checkbox" value="First Choice" tabindex="4" />
					<label class="choice" for="Field">Keep me signed in</label>
				</span>
				-->
				<table align="right">				
				<tr>
					<td><input type="submit" value="Aceptar" class="button btn btn-success btn-large"></td>
					<td><input type="button" value="Cancelar" class="button btn btn-success btn-large" onclick="cancelarOperacion()"></td>
				</tr>
				</table>	
			</div> <!-- .actions -->		
			
		</form>
		
	</div> <!-- /content -->
		
</div> <!-- /account-container -->




<script src="js/jquery-1.7.2.min.js"></script>
<script src="js/bootstrap.js"></script>
<script src="js/bootbox.js"></script>
<script src="js/signin.js"></script>



<script type="text/javascript">
function cancelarOperacion(){
	bootbox.confirm("Seguro que desea cancelar la operación?","No","Si",function(confirmed){
		if(confirmed){
			location.href="login.jsp";
		}
	});
}
</script>


 
    </div>
    <div class="footer-inner" style="font-size:12px;">&emsp;&emsp;BREAKERS ©. 2013. Todos los Derechos reservados
			</div>


</body>

</html>
