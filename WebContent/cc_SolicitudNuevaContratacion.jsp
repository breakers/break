
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
		<li data-target="#step1" class="active"><span class="badge badge-info">1</span>Bienvenido<span class="chevron"></span></li>
		<li data-target="#step2"><span class="badge">2</span>Informacion Predio<span class="chevron"></span></li>
		<li data-target="#step3"><span class="badge">3</span>Informacion Cliente<span class="chevron"></span></li>
		<li data-target="#step4"><span class="badge">4</span>Cierre<span class="chevron"></span></li>
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
	<div class="step-pane" id="step2">
		
		<form class="form-horizontal">
		
		
		<fieldset>
		
		<!-- Form Name -->
		<legend>Datos del Predio</legend>

		  <div class="control-group">
		  <label class="control-label" for="provincia">Provincia:(*)</label>
		  <div class="controls">
		    <input id="provincia" name="provincia" type="text" placeholder="Provincia" class="input-xlarge">
		     
		  </div>
		</div>
		
		<!-- Text input-->
		<div class="control-group">
		  <label class="control-label" for="distrito">Distrito:(*)</label>
		  <div class="controls">
		    <input id="distrito" name="distrito" type="text" placeholder="Distrito" class="input-xlarge" required="">
		     
		  </div>
		</div>
		
		<!-- Text input-->
		<div class="control-group">
		  <label class="control-label" for="Localidad">Localidad:(*)</label>
		  <div class="controls">
		    <input id="Localidad" name="Localidad" type="text" placeholder="Localidad" class="input-xlarge">

		  </div>
		</div>
		
		<!-- Text input-->
		<div class="control-group">
		  <label class="control-label" for="calle">Calle:(*)</label>
		  <div class="controls">
		    <input id="calle" name="calle" type="text" placeholder="Calle" class="input-xlarge">
		     
		  </div>
		</div>
		
		<!-- Button -->
		<div class="control-group">
		  <label class="control-label" for="buscarDireccion"></label>
		  <div class="controls">
		    <button id="buscarDireccion" name="buscarDireccion" class="btn btn-info">Buscar Dirección</button>
		  </div>
		</div>
<!-- Text input-->
		<div class="control-group">
		  <label class="control-label" for="nomunicipal">Nro. Municipal:(**)</label>
		  <div class="controls">
		    <input id="nomunicipal" name="nomunicipal" type="text" placeholder="Número Municipal" class="input-xlarge">
		     
		  </div>
		</div>
		
		<!-- Text input-->
		<div class="control-group">
		  <label class="control-label" for="manzana">Manzana:(**)</label>
		  <div class="controls">
		    <input id="manzana" name="manzana" type="text" placeholder="Manzana" class="input-xlarge">
		     
		  </div>
		</div>
		
		<!-- Text input-->
		<div class="control-group">
		  <label class="control-label" for="lote">Lote(**)</label>
		  <div class="controls">
		    <input id="lote" name="lote" type="text" placeholder="Lote" class="input-xlarge">
		     
		  </div>
		</div>
		
		<!-- Text input-->
		<div class="control-group">
		  <label class="control-label" for="dpt/int/pis">Dept / Int / Piso</label>
		  <div class="controls">
		    <input id="dpt/int/pis" name="dpt/int/pis" type="text" placeholder="Departamente / Int / Piso" class="input-xlarge">
		     
		  </div>
		</div>
		
		<!-- Textarea -->
		<div class="control-group">
		  <label class="control-label" for="referencia">Referencias(*)</label>
		  <div class="controls">                     
		    <textarea id="referencia" name="referencia">Ingrese Referencias como calles aledañas, etc</textarea>
		  </div>
		</div>

		<!-- Text input-->
		
		
		
		
		<legend>Información Adicional del Predio</legend>
				<!-- Select Basic -->
				<div class="control-group">
				  <label class="control-label" for="estadoPredio">Estado:(*)</label>
				  <div class="controls">
				    <select id="estadoPredio" name="estadoPredio" class="input-xlarge">
				      <option>Seleccione Estado de Predio</option>
				    </select>
				  </div>
				</div>
				
				<!-- Select Basic -->
				<div class="control-group">
				  <label class="control-label" for="tipoPredio">Tipo:(*)</label>
				  <div class="controls">
				    <select id="tipoPredio" name="tipoPredio" class="input-xlarge">
				      <option>Seleccione Tipo...</option>
				    </select>
				  </div>
				</div>
				
				<!-- Text input-->
				<div class="control-group">
				  <label class="control-label" for="arePredio">Área del Predio:(*)</label>
				  <div class="controls">
				    <input id="arePredio" name="arePredio" type="text" placeholder="Área en Metros Cuadrados" class="input-xlarge">
				    <p class="help-block">eliminar</p>
				  </div>
				</div>
				
				<!-- Select Basic -->
				<div class="control-group">
				  <label class="control-label" for="diametroConexion">Diametro de la Conexión de Agua(en mm):(*)</label>
				  <div class="controls">
				    <select id="diametroConexion" name="diametroConexion" class="input-xlarge">
				      <option>15</option>
				      <option>20</option>
				      <option>30</option>
				    </select>
				  </div>
				</div>
				
				<!-- Button -->
				<div class="control-group">
				  <label class="control-label" for="continuar"></label>
				  <div class="controls">
				    <button id="continuar" name="continuar" class="btn btn-info">Continuar</button>
				  </div>
				</div>
		
		</fieldset>
				
		</form>
		<form class="form-horizontal">
			<fieldset>
			
			<!-- Form Name -->
			<legend>Documentos a Adjuntar</legend>
			
			<!-- File Button --> 
			<div class="control-group">
			  <label class="control-label" for="partida">Partido Registral de inscripción o Certificado de Busqueda Catastral y Copia Simple de Escritura pública de compra-venta o constancia de Posesión Emitida por la Municipalidad:(*)</label>
			  <div class="controls">
			    <input id="partida" name="partida" class="input-file" type="file" title="Selecciona Documento .pdf">
			  </div>
			</div>
			
			<!-- File Button --> 
			<div class="control-group">
			  <label class="control-label" for="memoria">Memoria Descriptiva Firmada por un Ing. Sanitario:(*)</label>
			  <div class="controls">
			    <input id="memoria" name="memoria" class="input-file" type="file" title="Selecciona Documento .pdf">
			  </div>
			</div>
			
			<!-- File Button --> 
			<div class="control-group">
			  <label class="control-label" for="recibo">Recibo Suministro Vecino:(*)</label>
			  <div class="controls">
			    <input id="recibo" name="recibo" class="input-file" type="file" title="Selecciona Documento .pdf">
			  </div>
			</div>
			
			<!-- File Button --> 
			<div class="control-group">
			  <label class="control-label" for="croquis">Plano de Ubicación o Croquis del Predio:(*)</label>
			  <div class="controls">
			    <input id="croquis" name="croquis" class="input-file" type="file" title="Selecciona Documento .pdf">
			  </div>
			</div>
			
			<!-- File Button --> 
			<div class="control-group">
			  <label class="control-label" for="plano">Plano de Instalaciones Sanitarias, Firmadas por un Ing. Sanitario</label>
			  <div class="controls">
			    <input id="plano" name="plano" class="input-file" type="file" title="Selecciona Documento .pdf">
			  </div>
			</div>
			
			<!-- Button -->
			<div class="control-group">
			  <label class="control-label" for="continuar"></label>
			  <div class="controls">
			    <button id="continuar" name="continuar" class="btn btn-info">Continua con Información de Cliente</button>
			  </div>
			</div>
			
			</fieldset>
			</form>
		

	</div>
	<div class="step-pane" id="step3">This is step 3</div>
	<div class="step-pane" id="step4">This is step 4</div>
</div>

    <!-- JavaScript -->
		<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.9.1/jquery.min.js" type="text/javascript"></script>
		<script src="http://www.fuelcdn.com/fuelux/2.4.1/loader.min.js" type="text/javascript"></script>
		<script src="js/bootstrap.file-input.js" type="text/javascript"></script>
		<script  type="text/javascript">
		
		$(function () {
		    // code in this callback
		    // function guaranteed to
		    // run after dom is ready
			$('input[type=file]').bootstrapFileInput();
			$('.file-inputs').bootstrapFileInput();
		});
		</script>
</body>
</html>