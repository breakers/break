<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page session="true" %>
<!DOCTYPE html>
<html lang="es">
  
<head>
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
						<a href="login.jsp" class="">
							<i class="icon-chevron-left"></i>
							Ir a la Página de Inicio
						</a>
						
					</li>
				</ul>
				
			</div><!--/.nav-collapse -->	
	
		</div> <!-- /container -->
		
	</div> <!-- /navbar-inner -->
	
</div> <!-- /navbar -->



<div class="account-container">
	
	<div class="content clearfix">
		
		<form name="formu" method="get" action="logueo" >
		
			<h2>¿Olvidó su Clave?</h2>
			<br>
			<div class="login-fields">
				
				<!-- <p>Please provide your details</p> -->
				
				<div class="field">
					<label for="username">Username</label>
					<input type="text" name="usuario" placeholder="Usuario" class="login username-field" />
				</div> <!-- /field -->
				
				<p style="font-size:smaller;">Si olvidaste tu clave digita tu usuario y pulsa continuar.</p>
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
					<td><input type="submit" value="Continuar" class="button btn btn-success btn-large"></td>
					<td><input type="button" value="Cancelar" class="button btn btn-success btn-large" onclick="cancelarCambioClave()"></td>
					</tr></table>	
					
			</div> <!-- .actions -->		
			
		</form>
		
	</div> <!-- /content -->
		
</div> <!-- /account-container -->




<script src="js/jquery-1.7.2.min.js"></script>
<script src="js/bootstrap.js"></script>
<script src="js/bootbox.js"></script>
<script src="js/signin.js"></script>


<script type="text/javascript">
function cancelarCambioClave(){
	bootbox.confirm("Seguro que desea cancelar la operación?","No","Si",function(confirmed){
		if(confirmed){
			location.href="login.jsp";
		}
	});
}
</script>


<script type="text/javascript">
<%
String usu= (String)request.getAttribute("UsuarioInvalido");
if(usu!=null){%>
	bootbox.alert("Usuario incorrecto. Intente nuevamente por favor.",function(){
		location.href="olvidoClave.jsp";
	});
	
		
<%	
}
%>
</script>

 <%
 String sesioncerrada =(String)request.getAttribute("sesioncerrada");
 if(sesioncerrada!=null){
	 response.sendRedirect("login.jsp");
 }	 
 %>  
    
    </div>
    <div class="footer-inner" style="font-size:12px;">&emsp;&emsp;BREAKERS ©. 2013. Todos los Derechos reservados
			</div>
</body>

</html>
