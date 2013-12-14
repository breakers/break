
<%@page language="java" contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="es" class="fuelux">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Solicitud Nueva Contratacion</title>
        <!-- Bootstrap core CSS -->
    <link href="css/bootstrap.MIN.css" rel="stylesheet">
    <link href="Css/font-awesome.css" rel="stylesheet">
    
    <!-- Add custom CSS here -->
	<link href="//www.fuelcdn.com/fuelux/2.4.1/css/fuelux.min.css" rel="stylesheet" type="text/css">
<link href="//www.fuelcdn.com/fuelux/2.4.1/css/fuelux-responsive.css" rel="stylesheet" type="text/css">
</head>
<body>
<div id="MyWizard" class="wizard">
	<ul class="steps">
		<li data-target="#step1" class="active"><span class="badge badge-info">1</span>Step 1<span class="chevron"></span></li>
		<li data-target="#step2"><span class="badge">2</span>Step 2<span class="chevron"></span></li>
		<li data-target="#step3"><span class="badge">3</span>Step 3<span class="chevron"></span></li>
		<li data-target="#step4"><span class="badge">4</span>Step 4<span class="chevron"></span></li>
		<li data-target="#step5"><span class="badge">5</span>Step 5<span class="chevron"></span></li>
	</ul>
	<div class="actions">
		<button type="button" class="btn btn-mini btn-prev"> <i class="icon-arrow-left"></i>Prev</button>
		<button type="button" class="btn btn-mini btn-next" data-last="Finish">Next<i class="icon-arrow-right"></i></button>
	</div>
</div>
<div class="step-content">
	<div class="step-pane active" id="Bienvenido">
		<form class="form-horizontal">
		<fieldset>
		
		<!-- Form Name -->
		<legend>Registrar Solicitud de Nueva Contratación</legend>
		
		<!-- Text input-->
		<div class="control-group">
		  <label class="control-label" for="nombre">¿Cual es su nombre?</label>
		  <div class="controls">
		    <input id="nombre" name="nombre" type="text" placeholder="Nombre" class="input-medium" required="">
		    <p class="help-block">Ingrese su nombre, para tener un trato más cordial</p>
		  </div>
		</div>
		
		<!-- Multiple Radios -->
		<div class="control-group">
		  <label class="control-label" for="Persona">¿Que tipo de Persona eres?</label>
		  <div class="controls">
		    <label class="radio" for="Persona-0">
		      <input type="radio" name="Persona" id="Persona-0" value="Persona Natural" checked="checked" required="required">
		      Persona Natural
		    </label>
		    <label class="radio" for="Persona-1">
		      <input type="radio" name="Persona" id="Persona-1" value="Persona Juridica" required="required">
		      Persona Juridica
		    </label>
		  </div>
		</div>
		
		</fieldset>
		</form>

	</div>
	<div class="step-pane" id="step2">This is step 2</div>
	<div class="step-pane" id="step3">This is step 3</div>
	<div class="step-pane" id="step4">This is step 4</div>
	<div class="step-pane" id="step5">This is step 5</div>
</div>

    <!-- JavaScript -->
		<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.9.1/jquery.min.js" type="text/javascript"></script>
		<script src="http://www.fuelcdn.com/fuelux/2.4.1/loader.min.js" type="text/javascript"></script>
		<script  type="text/javascript">
		
		$(function () {
		    // code in this callback
		    // function guaranteed to
		    // run after dom is ready
		});
		</script>
</body>
</html>