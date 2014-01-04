
<%@page language="java" contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="es" class="fuelux">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Solicitud Nueva Contratacion</title>
<!-- Bootstrap core CSS -->
<link href="css/bootstrap.min.css" rel="stylesheet">
<link href="css/font-awesome.min.css" rel="stylesheet">

<!-- Add custom CSS here -->
<link href="//www.fuelcdn.com/fuelux/2.4.1/css/fuelux.min.css"
	rel="stylesheet" type="text/css">
<link href="//www.fuelcdn.com/fuelux/2.4.1/css/fuelux-responsive.css"
	rel="stylesheet" type="text/css">
</head>
<body>

	<div id="MyWizard" class="wizard">
		<ul class="steps">
			<li data-target="#step1" class="active"><span
				class="badge badge-info">1</span>Bienvenido<span class="chevron"></span></li>
			<li data-target="#step2"><span class="badge">2</span>Información
				Predio<span class="chevron"></span></li>
			<li data-target="#step3"><span class="badge">3</span>Informacón
				Cliente<span class="chevron"></span></li>
			<li data-target="#step4"><span class="badge">4</span>Cierre<span
				class="chevron"></span></li>
		</ul>
		<div class="actions">
			<button type="button" class="btn btn-mini btn-prev">
				<i class="icon-arrow-left"></i>Prev
			</button>
			<button type="button" class="btn btn-mini btn-next"
				data-last="Finish">
				Next<i class="icon-arrow-right"></i>
			</button>
		</div>
	</div>
	<div class="step-content">
		<div class="step-pane active" id="step1">
			<form class="form-horizontal">
				<fieldset>

					<!-- Form Name -->
					<legend>Registrar Solicitud de Nueva Contratación</legend>

					<!-- Multiple Radios -->
					<div class="control-group">
						<label class="control-label" for="Persona">¿Que tipo de
							Persona eres?</label>
						<div class="controls">
							<label class="radio" for="Persona-0"> <input type="radio"
								name="Persona" id="Persona-0" value="Persona Natural"
								checked="checked" required="required"> Persona Natural
							</label> <label class="radio" for="Persona-1"> <input
								type="radio" name="Persona" id="Persona-1"
								value="Persona Juridica" required="required"> Persona
								Juridica
							</label>
						</div>
					</div>

					<div class="control-group">
						<label class="control-label" for="continuar"></label>
						<div class="controls">
							<button id="continuar" name="continuar" class="btn btn-info">Continua
								con Información de Predio</button>
						</div>
					</div>

				</fieldset>
			</form>

		</div>
		<div class="step-pane" id="step2">
			<div class="row">
				<legend>Datos del Predio</legend>
				<div class="col-sm-6">
					<div class="widget-box">
						<div class="widget-main no-padding">
							<form>
								<div class="control-group">
									<label class="control-label" for="provincia">Provincia:(*)</label>
									<div class="controls">
										<input id="provincia" name="provincia" type="text"
											placeholder="Provincia" class="input-xlarge">

									</div>
								</div>

								<div class="control-group">
									<label class="control-label" for="distrito">Distrito:(*)</label>
									<div class="controls">
										<input id="distrito" name="distrito" type="text"
											placeholder="Distrito" class="input-xlarge">

									</div>
								</div>

								<div class="control-group">
									<label class="control-label" for="Localidad">Localidad:(*)</label>
									<div class="controls">
										<input id="Localidad" name="Localidad" type="text"
											placeholder="Localidad" class="input-xlarge">

									</div>
								</div>

								<div class="control-group">
									<label class="control-label" for="calle">Calle:(*)</label>
									<div class="controls">
										<input id="calle" name="calle" type="text" placeholder="Calle"
											class="input-xlarge">

									</div>
								</div>

								<div class="control-group">
									<label class="control-label" for="buscarDireccion"></label>
									<div class="controls">
										<buttonid ="buscarDireccion" name="buscarDireccion"
											class="btn btn-info" data-toggle="modal"
											data-target="#myModal"> <i
											class="icon-location-arrow"></i> Buscar Dirección
										</button>
									</div>
								</div>

								<!-- Modal -->
								<div class="modal fade" id="myModal" tabindex="-1" role="dialog"
									aria-labelledby="myModalLabel" aria-hidden="true">
									<div class="modal-dialog">
										<div class="modal-content">
											<div class="modal-header">
												<button type="button" class="close" data-dismiss="modal"
													aria-hidden="true">&times;</button>
												<h5 class="modal-title" id="myModalLabel">Buscar
													Dirección</h5>
											</div>
											<div class="modal-body">
												<div class="control-group">
													<label class="control-label" for="Provincia">Provincia:</label>
													<div class="controls">
														<select id="Provincia" name="provincia"
															class="input-xlarge">
															<option>Arequipa</option>
															<option>Canamá</option>
															<option>Caravelí</option>
															<option>Catilla</option>
															<option>Caylloma</option>
															<option>Condesuyos</option>
															<option>Islay</option>
															<option>La Unión</option>
														</select>
													</div>
												</div>

												<div class="control-group">
													<label class="control-label" for="Distrito">Distrito:</label>
													<div class="controls">
														<select id="Distrito" name="distrito" class="input-xlarge">
															<option>****</option>
														</select>
													</div>
												</div>

												<div class="control-group">
													<label class="control-label" for="Localidad">Localidad:</label>
													<div class="controls">
														<select id="Localidad" name="localidad"
															class="input-xlarge">
															<option>****</option>
														</select>
													</div>
												</div>

												<div class="control-group">
													<label class="control-label" for="Calle">Calle:</label>
													<div class="controls">
														<select id="Calle" name="Calle" class="input-xlarge">
															<option>****</option>
														</select>
													</div>
												</div>
											</div>
											<div class="modal-footer">
												<button type="button" class="btn btn-info">Aceptar</button>
												<br> Nota: En caso no ubique la dirección del predio,
												le agradecemos contactarnos a la brevedad.
											</div>

										</div>
										<!-- /.modal-content -->
									</div>
									<!-- /.modal-dialog -->
								</div>
								<!-- /.modal -->


								<div class="control-group">
									<label class="control-label" for="nomunicipal">Nro.
										Municipal:(**)</label>
									<div class="controls">
										<input id="nomunicipal" name="nomunicipal" type="text"
											placeholder="Número Municipal" class="input-xlarge">

									</div>
								</div>

								<div class="control-group">
									<label class="control-label" for="manzana">Manzana:(**)</label>
									<div class="controls">
										<input id="manzana" name="manzana" type="text"
											placeholder="Manzana" class="input-xlarge">

									</div>
								</div>

								<div class="control-group">
									<label class="control-label" for="lote">Lote(**)</label>
									<div class="controls">
										<input id="lote" name="lote" type="text" placeholder="Lote"
											class="input-xlarge">

									</div>
								</div>

								<div class="control-group">
									<label class="control-label" for="dpt/int/pis">Dept /
										Int / Piso</label>
									<div class="controls">
										<input id="dpt/int/pis" name="dpt/int/pis" type="text"
											placeholder="Departamente / Int / Piso" class="input-xlarge">

									</div>
								</div>

								<div class="control-group">
									<label class="control-label" for="referencia">Referencias(*)</label>
									<div class="controls">
										<textarea id="referencia" name="referencia">Ingrese Referencias como calles aledañas, etc</textarea>
									</div>
								</div>
							</form>
						</div>
					</div>

				</div>
				<div class="col-sm-6">
					<div class="widget-box">
						<div class="widget-header">
							<p>Indique la posición de su Predio en el mapa a continuación</p>
						</div>

						<div class="widget-main no-padding">
							<form>

								<img class="img-responsive" src="http://placehold.it/500x400"
									alt="">
								<div class="space-6"></div>
								<fieldset>
									<label class="col-sm-3 control-label no-padding-right">Coordenadas</label>
									<input class="col-xs-10 col-sm-5" type="text"
										placeholder="Coordenadas" readonly="true" />

								</fieldset>


								</fieldset>
							</form>
						</div>
					</div>


				</div>

			</div>
			<div class="row">
				<legend>Información Adicional del Predio</legend>
				<div class="col-sm-12">
					<div class="widget-box">
						<div class="widget-main no-padding">
							<form>
								<div class="control-group">
									<label class="control-label" for="estadoPredio">Estado:(*)</label>
									<div class="controls">
										<select id="estadoPredio" name="estadoPredio"
											class="input-xlarge">
											<option>Seleccione Estado de Predio</option>
										</select>
									</div>
								</div>

								<div class="control-group">
									<label class="control-label" for="tipoPredio">Tipo:(*)</label>
									<div class="controls">
										<select id="tipoPredio" name="tipoPredio" class="input-xlarge">
											<option>Seleccione Tipo...</option>
										</select>
									</div>
								</div>

								<div class="control-group">
									<label class="control-label" for="arePredio">Área del
										Predio:(*)</label>
									<div class="controls">
										<input id="arePredio" name="arePredio" type="text"
											placeholder="Área en Metros Cuadrados" class="input-xlarge">
										<p class="help-block">eliminar</p>
									</div>
								</div>

								<div class="control-group">
									<label class="control-label" for="diametroConexion">Diametro
										de la Conexión de Agua(en mm):(*)</label>
									<div class="controls">
										<select id="diametroConexion" name="diametroConexion"
											class="input-xlarge">
											<option>15</option>
											<option>20</option>
											<option>30</option>
										</select>
									</div>
								</div>

								<div class="control-group">
									<label class="control-label" for="continuar"></label>
									<div class="controls">
										<button id="continuar" name="continuar" class="btn btn-info">Continuar</button>
									</div>
								</div>




							</form>
						</div>
					</div>




				</div>


			</div>
			<div class="row">
				<legend>Documentos a Adjuntar</legend>
				<div class="col-sm-12">
					<div class="widget-box">
						<div class="widget-main no-padding">
							<form>
								<div class="control-group">
									<label class="control-label" for="partida">Partido
										Registral de inscripción o Certificado de Busqueda Catastral y
										Copia Simple de Escritura pública de compra-venta o constancia
										de Posesión Emitida por la Municipalidad:(*)</label>
									<div class="controls">
										<input id="partida" name="partida" class="input-file"
											type="file" title="Selecciona Documento .pdf">
									</div>
								</div>

								<div class="control-group">
									<label class="control-label" for="memoria">Memoria
										Descriptiva Firmada por un Ing. Sanitario:(*)</label>
									<div class="controls">
										<input id="memoria" name="memoria" class="input-file"
											type="file" title="Selecciona Documento .pdf">
									</div>
								</div>

								<div class="control-group">
									<label class="control-label" for="recibo">Recibo
										Suministro Vecino:(*)</label>
									<div class="controls">
										<input id="recibo" name="recibo" class="input-file"
											type="file" title="Selecciona Documento .pdf">
									</div>
								</div>

								<div class="control-group">
									<label class="control-label" for="croquis">Plano de
										Ubicación o Croquis del Predio:(*)</label>
									<div class="controls">
										<input id="croquis" name="croquis" class="input-file"
											type="file" title="Selecciona Documento .pdf">
									</div>
								</div>

								<div class="control-group">
									<label class="control-label" for="plano">Plano de
										Instalaciones Sanitarias, Firmadas por un Ing. Sanitario</label>
									<div class="controls">
										<input id="plano" name="plano" class="input-file" type="file"
											title="Selecciona Documento .pdf">
									</div>
								</div>

								<div class="control-group">
									<label class="control-label" for="continuar"></label>
									<div class="controls">
										<button id="continuar" name="continuar" class="btn btn-info">
											<i class="icon-hand-right"></i>Continua con Información de
											Cliente
										</button>
									</div>
								</div>
							</form>
						</div>
					</div>
				</div>
			</div>
		</div>
		<div class="step-pane" id="step3">
			<form class="form-horizontal" id="pnatural">
				<fieldset>

					<!-- Form Name -->
					<legend>Propietario - Persona Natural</legend>

					<h5>Datos Generales</h5>
					<div class="control-group">
						<label class="control-label" for="nombre">Nombre(s):(*)</label>
						<div class="controls">
							<input id="nombre" name="nombre" type="text"
								placeholder="Provincia" class="input-xlarge">

						</div>
					</div>

					<div class="control-group">
						<label class="control-label" for="apepat">Apellido
							Paterno:(*)</label>
						<div class="controls">
							<input id="nombre" name="apepat" type="text" placeholder="apepat"
								class="input-xlarge">

						</div>
					</div>

					<div class="control-group">
						<label class="control-label" for="apemat">Apellido
							Materno:(*)</label>
						<div class="controls">
							<input id="nombre" name="apemat" type="text" placeholder="apemat"
								class="input-xlarge">

						</div>
					</div>

					<h5>Documento de Identidad</h5>

					<div class="control-group">
						<label class="control-label" for="diametroConexion">Tipo:(*)</label>
						<div class="controls">
							<select id="diametroConexion" name="diametroConexion"
								class="input-xlarge">
							</select>
						</div>
					</div>

					<div class="control-group">
						<label class="control-label" for="numero">Número:(*)</label>
						<div class="controls">
							<input id="numero" name="numero" type="text" placeholder="numero"
								class="input-xlarge">

						</div>
					</div>

					<div class="control-group">
						<label class="control-label" for="plano">Adjutar DNI: (*)</label>
						<div class="controls">
							<input id="plano" name="plano" class="input-file" type="file"
								title="Selecciona Documento .pdf">
						</div>
					</div>


				</fieldset>
			</form>

			<form class="form-horizontal" id="pjuridica">
				<fieldset>

					<!-- Form Name -->
					<legend>Propietario - Persona Juridica</legend>

					<h5>Datos Generales - Propitario</h5>
					<div class="control-group">
						<label class="control-label" for="razsoc">Razón Social:(*)</label>
						<div class="controls">
							<input id="razsoc" name="razsoc" type="text" placeholder="razsoc"
								class="input-xlarge">

						</div>
					</div>

					<div class="control-group">
						<label class="control-label" for="ruc">RUC:(*)</label>
						<div class="controls">
							<input id="ruc" name="ruc" type="text" placeholder="ruc"
								class="input-xlarge">

						</div>
					</div>


					<h5>Datos Generales - Representante</h5>
					<div class="control-group">
						<label class="control-label" for="nombre">Nombre(s):(*)</label>
						<div class="controls">
							<input id="nombre" name="nombre" type="text"
								placeholder="Provincia" class="input-xlarge">

						</div>
					</div>

					<div class="control-group">
						<label class="control-label" for="apepat">Apellido
							Paterno:(*)</label>
						<div class="controls">
							<input id="nombre" name="apepat" type="text" placeholder="apepat"
								class="input-xlarge">

						</div>
					</div>

					<div class="control-group">
						<label class="control-label" for="apemat">Apellido
							Materno:(*)</label>
						<div class="controls">
							<input id="nombre" name="apemat" type="text" placeholder="apemat"
								class="input-xlarge">

						</div>
					</div>

					<h5>Documento de Identidad - Representante</h5>

					<div class="control-group">
						<label class="control-label" for="diametroConexion">Tipo:(*)</label>
						<div class="controls">
							<select id="diametroConexion" name="diametroConexion"
								class="input-xlarge">
							</select>
						</div>
					</div>
					<div class="control-group">
						<label class="control-label" for="numero">Número:(*)</label>
						<div class="controls">
							<input id="numero" name="numero" type="text" placeholder="numero"
								class="input-xlarge">

						</div>
					</div>
					<div class="control-group">
						<label class="control-label" for="plano">Adjutar DNI: (*)</label>
						<div class="controls">
							<input id="plano" name="plano" class="input-file" type="file"
								title="Selecciona Documento .pdf">
						</div>
					</div>

					<div class="control-group">
						<label class="control-label" for="plano">Adjutar Vigencia
							de Poder y DNI del Repreentate Legal o Carta por de
							Representatividad con firma legalizda y DNI del Apoderado: (*)</label>
						<div class="controls">
							<input id="plano" name="plano" class="input-file" type="file"
								title="Selecciona Documento .pdf">
						</div>
					</div>


				</fieldset>
			</form>

			<form class="form-horizontal">
				<fieldset>

					<!-- Form Name -->
					<legend>Información de Contacto</legend>

					<div class="control-group">
						<label class="control-label" for="telefono">Teléfono:(*)</label>
						<div class="controls">
							<input id="telefono" name="telefono" type="text"
								placeholder="telefono" class="input-xlarge">

						</div>
					</div>

					<div class="control-group">
						<label class="control-label" for="celular">Celular:(*)</label>
						<div class="controls">
							<input id="celular" name="celular" type="text"
								placeholder="celular" class="input-xlarge">

						</div>
					</div>

					<div class="control-group">
						<label class="control-label" for="email">E-mail de
							Contacto:(*)</label>
						<div class="controls">
							<input id="email" name="email" type="text" placeholder="email"
								class="input-xlarge">

						</div>

						<div class="controls">
							<button id="continuar" name="continuar" class="btn btn-info">
								<i class="icon-hand-right"></i>Continua con la validación del
								documento
							</button>
						</div>
				</fieldset>
			</form>

		</div>
		<div class="step-pane" id="step4">
			<form class="form-horizontal">
				<fieldset>

					<!-- Form Name -->
					<legend>Verifique su solicitud y el Precio Estimado</legend>

					<div class="control-group">
						<label class="control-label" for="telefono">Teléfono:(*)</label>
						<div class="controls">
							<input id="telefono" name="telefono" type="text"
								placeholder="telefono" class="input-xlarge">

						</div>
					</div>

					<div class="control-group">
						<label class="control-label" for="celular">Celular:(*)</label>
						<div class="controls">
							<input id="celular" name="celular" type="text"
								placeholder="celular" class="input-xlarge">

						</div>
					</div>

					<div class="control-group">
						<label class="control-label" for="email">E-mail de
							Contacto:(*)</label>
						<div class="controls">
							<input id="email" name="email" type="text" placeholder="email"
								class="input-xlarge">

						</div>

					</div>

					<div class="control-group">
						<label class="control-label" for="envie"></label>
						<div class="controls">
							<button id="envie" name="envie" class="btn btn-info">Envie
								su Solictud</button>
						</div>
					</div>

				</fieldset>
			</form>
		</div>
	</div>

	<!-- JavaScript -->
	<script
		src="http://ajax.googleapis.com/ajax/libs/jquery/1.9.1/jquery.min.js"
		type="text/javascript"></script>
	<script src="http://www.fuelcdn.com/fuelux/2.4.1/loader.min.js"
		type="text/javascript"></script>
	<script src="js/bootstrap.min.js" type="text/javascript"></script>
	<script src="js/bootstrap.file-input.js" type="text/javascript"></script>
	<script type="text/javascript">
		$(function() {
			// code in this callback
			// function guaranteed to
			// run after dom is ready
			$('input[type=file]').bootstrapFileInput();
			$('.file-inputs').bootstrapFileInput();
		});
	</script>
</body>
</html>