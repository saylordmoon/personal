<div data-ng-controller="RegistroController as regCtrl">
	<div class="panel panel-default">
		<div class="panel-heading">
			<h4>Datos Personales</h4>
		</div>

		<div class="panel-body">
			<div class="row">
				<div class="col-md-9 form-horizontal">
					<div class="form-group">
						<label class="col-md-3 contrl-label" >Nombres:</label>
						<div class="col-md-9">
							<input id="txt-dp-nombres" type="text" class="form-control" placeholder="Nombres" />
						</div>
					</div>
					<div class="form-group">
						<label class="col-md-3 contrl-label">Apellidos:</label>
						<div class="col-md-9">
							<input id="txt-dp-apellidos" type="text" class="form-control" placeholder="Apellidos" />
						</div>
					</div>
					<div class="form-group">
						<label class="col-md-3 contrl-label" >Fecha de Nacimiento:</label>
						<div class="col-md-6">
							<input id="txt-dp-fecha-nacimiento" type="date" class="form-control" placeholder="Fecha de Nacimiento" />
						</div>
					</div>
					<div class="form-group">
						<label class="col-md-3 contrl-label" >Sexo:</label>
						<div class="col-md-6">
							<select id="sel-dp-sexo" class="form-control">
								<option value="M">Masculino</option>
								<option value="F">Femenino</option>
							</select>
						</div>
					</div>
					<div class="form-group">
						<label class="col-md-3 contrl-label" >Tipo de Documento:</label>
						<div class="col-md-6">
							<select id="sel-dp-tipo-documento" class="form-control">
								<option></option>
							</select>
						</div>
					</div>
					<div class="form-group">
						<label class="col-md-3 contrl-label" >Número Documento</label>
						<div class="col-md-6">
							<input id="txt-dp-numero-documento" type="text" class="form-control" placeholder="Número de Documento" />
						</div>
					</div>
					<div class="form-group">
						<label class="col-md-3 contrl-label" ><i class="fa fa-paperclip"></i> Documento</label>
						<div class="col-md-6">
							<input id="txt-dp-documento" type="file" />
						</div>
					</div>
					<div class="form-group">
						<label class="col-md-3 contrl-label" >R.U.C.</label>
						<div class="col-md-9">
							<input id="txt-dp-ruc" type="text" class="form-control" placeholder="R.U.C." />
						</div>
					</div>
					<div class="form-group">
						<label class="col-md-3 contrl-label">Teléfono:</label>
						<div class="col-md-9">
							<input id="txt-dp-telefono" type="text" class="form-control" placeholder="Teléfono" />
						</div>
					</div>
					<div class="form-group">
						<label class="col-md-3 contrl-label">Correo Electrónico:</label>
						<div class="col-md-9">
							<input id="txt-dp-correo" type="text" class="form-control" placeholder="Correo Electrónico" />
						</div>
					</div>
					<div class="form-group">
						<label class="col-md-3 contrl-label" >Pais de nacimiento</label>
						<div class="col-md-9">
							<select id="sel-dp-pais-nacimiento" class="form-control">
								<option></option>
							</select>
						</div>
					</div>
					<div class="form-group">
						<label class="col-md-3 contrl-label">Dirección de Residencia:</label>
						<div class="col-md-9">
							<input id="txt-dp-direccion" type="text" class="form-control" placeholder="Dirección de Residencia" />
						</div>
					</div>
					<div class="form-group">
						<label class="col-md-3 contrl-label"></label>
						<div class="col-md-9">
							<div class="row">
								<div class="col-md-4">
									<div class="form-group" style="padding-right: 20px; padding-left: 15px;">
										<label  class="contrl-label">Departamento:</label>
										<select id="sel-dp-departamento" class="form-control">
											<option></option>
										</select>
									</div>
								</div>
								<div class="col-md-4">
									<div class="form-group" style="padding-right: 20px; padding-left: 15px;">
										<label  class="contrl-label">Provincia:</label>
										<select id="sel-dp-provincia" class="form-control">
											<option></option>
										</select>
									</div>
								</div>
								<div class="col-md-4">
									<div class="form-group" style="padding-right: 15px; padding-left: 15px;">
										<label  class="contrl-label">Distrito:</label>
										<select id="sel-dp-distrito" class="form-control">
											<option></option>
										</select>
									</div>
								</div>
							</div>
						</div>
					</div>
					
					<div class="form-group">
						<label class="col-md-3 contrl-label">Curriculum:</label>
						<div class="col-md-9">
							<input id="txt-dp-curriculum" type="file" />
						</div>
					</div>	
				</div>
				<div class="col-md-3" align="right">
					<div style="width: 150px">
						<img src="img/foto.png" class="bmd-floating" />
						<input id="txt-dp-foto" type="file" class="form-control" />
					</div>
				</div>
			</div>
		</div>
	</div>

	<div class="panel panel-default">
		<div id="panel-formacion-academica" class="panel-heading">
			<a href="" data-ng-click="regCtrl.agregarFormacionAcademica()" class="btn btn-default bmd-text-blue-400 pull-right bmd-floating bmd-ripple bmd-fab bmd-fab-sm">
				<i class="glyphicon glyphicon-plus"></i>
			</a>
			<h4>Formación Académica</h4>
		</div>
		<div class="panel-body">
			<div class="table-responsive">
				<table class="table table-bordered table-striped">
					<thead>
						<tr>
							<td>Grado Académico</td>
							<td>Profesión o especialidad</td>
							<td>Fecha de Expedición</td>
							<td>Institución</td>
							<td>Pais</td>
							<td><i class="fa fa-paperclip"></i></td>
						</tr>
					</thead>
				</table>
			</div>
		</div>
	</div>

	<div class="panel panel-default">
		<div id="panel-capacitacion" class="panel-heading">
			<a href="" data-ng-click="regCtrl.agregarCapacitacion()" class="btn btn-default bmd-text-blue-400 pull-right bmd-floating bmd-ripple bmd-fab bmd-fab-sm">
				<i class="glyphicon glyphicon-plus"></i>
			</a>
			<h4>Capacitación</h4>
		</div>
		<div class="panel-body">
			<div class="table-responsive">
				<table class="table table-bordered table-striped">
					<thead>
						<tr>
							<td>Capacitación</td>
							<td>Fecha de Inicio</td>
							<td>Fecha de Fin</td>
							<td>Horas lectivas</td>
							<td>Institución</td>
							<td>Pais</td>
							<td><i class="fa fa-paperclip"></i></td>
						</tr>
					</thead>
				</table>
			</div>
		</div>
	</div>

	<div  class="panel panel-default">
		<div id="panel-idiomas" class="panel-heading">
			<a href="" data-ng-click="regCtrl.agregarIdiomas()" class="btn btn-default bmd-text-blue-400 pull-right bmd-floating bmd-ripple bmd-fab bmd-fab-sm">
				<i class="glyphicon glyphicon-plus"></i>
			</a>
			<h4>Idiomas</h4>
		</div>
		<div class="panel-body">
			<div class="table-responsive">
				<table class="table table-bordered table-striped">
					<thead>
						<tr>
							<td>Idioma</td>
							<td>Nivel de Escritura</td>
							<td>Nivel Hablado</td>
							<td>Nivel Lectura</td>
							<td><i class="fa fa-paperclip"></i></td>
						</tr>
					</thead>
				</table>
			</div>
		</div>
	</div>

	<div  class="panel panel-default">
		<div id="panel-experiencia-laboral" class="panel-heading">
			<a href="" data-ng-click="regCtrl.agregarExperienciaLaboral()" class="btn btn-default bmd-text-blue-400 pull-right bmd-floating bmd-ripple bmd-fab bmd-fab-sm">
				<i class="glyphicon glyphicon-plus"></i>
			</a>
			<h4>Experiencia Laboral</h4>
		</div>
		<div class="panel-body">
			<div class="table-responsive">
				<table class="table table-bordered table-striped">
					<thead>
						<tr>
							<td>Empresa / Institucion</td>
							<td>Cargo</td>
							<td>Fecha de Inicio</td>
							<td>Fecha de Fin</td>
							<td>Descripción</td>
							<td>Area</td>
							<td>Rubro</td>
							<td>Sector</td>
							<td>Pais</td>
							<td><i class="fa fa-paperclip"></i></td>
						</tr>
					</thead>
				</table>
			</div>
		</div>
	</div>

	<div  class="panel panel-default">
		<div id="panel-computacion" class="panel-heading">
			<h4>Computación</h4>
		</div>
		<div class="panel-body">
			<div class="row">
				<div class="form-group">
					<label class="control-label col-md-3">¿Tiene Ud. Conocimientos en computación?</label>
					<div class="col-md-1">
						<div class="radio bmd-radio">
							<label>
								<input class="bmd-radio-input bmd-ripple bmd-ink-gray" type="radio" id="rb-computacion" name="rb-computacion">
								Si
								<span class="bmd-radio-check"></span>
							</label>
						</div>
					</div>
					<div class="col-md-1">
						<div class="radio bmd-radio">
							<label>
								<input class="bmd-radio-input bmd-ripple bmd-ink-gray" type="radio" id="rb-computacion" name="rb-computacion">
								No
								<span class="bmd-radio-check"></span>
							</label>
						</div>
					</div>
					<div class="col-md-4">
						<div class="form-group">
							<label class="col-md-2">Nivel</label>
							<div class="col-md-6">
								<select class="form-control">
									<option></option>
								</select>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		<div class="panel-footer">
		</div>
	</div>

	<div  class="panel panel-default">
		<div id="panel-informacion-adicional" class="panel-heading">
			<h4>Información Adicional</h4>
		</div>
		<div class="panel-body">
			<div class="row">
				<div class="form-group">
					<label  class="col-md-3 contrl-label">¿Ha trabajado en la APCI?</label>
					<div class="col-md-1">
						<div class="radio bmd-radio">
							<label>
								<input class="bmd-radio-input bmd-ripple bmd-ink-gray" type="radio" id="rb-trabaja-apci" name="rb-trabaja-apci">
								Si
								<span class="bmd-radio-check"></span>
							</label>
						</div>
					</div>
					<div class="col-md-1">
						<div class="radio bmd-radio">
							<label>
								<input class="bmd-radio-input bmd-ripple bmd-ink-gray" type="radio" id="rb-trabaja-apci" name="rb-trabaja-apci">
								No
								<span class="bmd-radio-check"></span>
							</label>
						</div>
					</div>
				</div>
			</div>
			<div class="row">
				<div class="form-group">
					<label  class="col-md-3 contrl-label">¿Tiene familizares trabajando en la APCI?</label>
					<div class="col-md-1">
						<div class="radio bmd-radio">
							<label>
								<input class="bmd-radio-input bmd-ripple bmd-ink-gray" type="radio" id="rb-familiares-apci" name="rb-familiares-apci">
								Si
								<span class="bmd-radio-check"></span>
							</label>
						</div>
					</div>
					<div class="col-md-1">
						<div class="radio bmd-radio">
							<label>
								<input class="bmd-radio-input bmd-ripple bmd-ink-gray" type="radio" id="rb-familiares-apci" name="rb-familiares-apci">
								No
								<span class="bmd-radio-check"></span>
							</label>
						</div>
					</div>
				</div>
			</div>
			<div class="row">
				<div class="form-group">
					<label  class="col-md-3 contrl-label">¿Actualmente trabaja en una ONGD / ENIEX?</label>
					<div class="col-md-1">
						<div class="radio bmd-radio">
							<label>
								<input class="bmd-radio-input bmd-ripple bmd-ink-gray" type="radio" id="rb-ong" name="rb-ong">
								Si
								<span class="bmd-radio-check"></span>
							</label>
						</div>
					</div>
					<div class="col-md-1">
						<div class="radio bmd-radio">
							<label>
								<input class="bmd-radio-input bmd-ripple bmd-ink-gray" type="radio" id="rb-ong" name="rb-ong">
								No
								<span class="bmd-radio-check"></span>
							</label>
						</div>
					</div>
				</div>	
			</div>	
		</div>
		<div class="panel-footer">
		</div>
	</div>
	<div class="panel-footer">
		<button class="btn btn-info bmd-floating bmd-ripple" data-ng-click="regCtrl.registrarse()">
			<i class="glyphicon glyphicon-save"></i>
			Registrar
		</button>
	</div>

	<!-- Modal Formacion Academica -->
	<div class="modal fade modal-formacion-academica" role="dialog" >
		<div class="modal-dialog modal-md">
			<div class="modal-content">
				<div class="modal-header bmd-bg-info bmd-text-blue-50">
					<button type="button" class="close" data-dismiss="modal" aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
					<h4 class="modal-title">Formación Académica</h4>
				</div>
				<div class="modal-body">
					<div class="form-group">
						<label>Grado Académico:</label>
						<select id="sel-fa-grado-academico" class="form-control">
							<option></option>
						</select>
					</div>
					<div class="form-group">
						<label >Profesión o especialidad:</label>
						<input id="txt-fa-profesion" type="text" class="form-control" />
					</div>
					<div class="form-group">
						<label >Fecha de Expedición:</label>
						<input id="txt-fa-fecha-expedicion" type="date" class="form-control" />
					</div>
					<div class="form-group">
						<label >Institución:</label>
						<input id="txt-fa-institucion" type="text" class="form-control" />
					</div>
					<div class="form-group">
						<label>Pais:</label>
						<select id="sel-fa-pais" class="form-control">
							<option></option>
						</select>
					</div>
				</div>
				<div class="modal-footer">
					<button class="btn btn-info bmd-floating bmd-ripple" data-ng-click="regCtrl.guardarFormacionAcademica()">
						<i class="glyphicon glyphicon-save"></i>
						Guardar
					</button>
				</div>
			</div>
		</div>
	</div><!--/ Modal Formacion Academica -->

	<!-- Modal Capacitación -->
	<div class="modal fade modal-capacitacion" role="dialog" >
		<div class="modal-dialog modal-md">
			<div class="modal-content">
				<div class="modal-header bmd-bg-info bmd-text-blue-50">
					<button type="button" class="close" data-dismiss="modal" aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
					<h4 class="modal-title">Capacitación</h4>
				</div>
				<div class="modal-body">
					<div class="form-group">
						<label class="control-label">Curso de Capacitación:</label>
						<input id="txt-c-curso-capacitacion" type="text" class="form-control" placeholder="Curso de capacitación" />
					</div>
					<div class="form-group">
						<label class="control-label">Fecha de Inicio:</label>
						<input id="dat-c-fecha-inicio" type="date" class="form-control" />
					</div>
					<div class="form-group">
						<label class="control-label">Fecha de Fin:</label>
						<input id="dat-c-fecha-fin" type="date" class="form-control" />
					</div>
					<div class="form-group">
						<label class="control-label">Horas lectivas:</label>
						<input id="txt-c-horas-lectivas" type="number" class="form-control" />
					</div>
					<div class="form-group">
						<label class="control-label">Institución:</label>
						<input id="txt-c-institucion" type="text" class="form-control" />
					</div>
					<div class="form-group">
						<label class="control-label">País:</label>
						<select id="sel-c-pais" class="form-control">
							<option></option>
						</select>
					</div>
					<div class="form-group">
						<label class="control-label"><i class="fa fa-paperclip"></i> Documento sustentatorio:</label>
						<input id="txt-c-documento-sustentatorio" type="file" class="form-control" />
					</div>
				</div>
				<div class="modal-footer">
					<button class="btn btn-info bmd-floating bmd-ripple" data-ng-click="regCtrl.guardarCapacitacion()">
						<i class="glyphicon glyphicon-save"></i>
						Guardar
					</button>
				</div>
			</div>
		</div>
	</div><!--/ Modal Capacitación -->

	<!-- Modal idiomas -->
	<div class="modal fade modal-idiomas" role="dialog" >
		<div class="modal-dialog modal-md">
			<div class="modal-content">
				<div class="modal-header bmd-bg-info bmd-text-blue-50">
					<button type="button" class="close" data-dismiss="modal" aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
					<h4 class="modal-title">Idiomas</h4>
				</div>
				<div class="modal-body">
					<div class="form-group">
						<label>Idioma:</label>
						<select id="sel-i-idioma" class="form-control">
							<option></option>
						</select>
					</div>
					<div class="form-group">
						<label>Nivel de Escritura:</label>
						<select id="sel-i-nivel-escritura" class="form-control">
							<option></option>
						</select>
					</div>
					<div class="form-group">
						<label>Nivel Hablado:</label>
						<select id="sel-i-nivel-hablado" class="form-control">
							<option></option>
						</select>
					</div>
					<div class="form-group">
						<label>Nivel Lectura:</label>
						<select id="sel-i-nivel-lectura" class="form-control">
							<option></option>
						</select>
					</div>
					<div class="form-group">
						<label><i class="fa fa-paperclip"></i> Documento sustentatorio:</label>
						<input id="txt-i-documento-sustentatorio" class="form-control" type="file" />
					</div>
				</div>

				<div class="modal-footer">
					<button class="btn btn-info bmd-floating bmd-ripple" data-ng-click="regCtrl.guardarIdioma()">
						<i class="glyphicon glyphicon-save"></i>
						Guardar
					</button>
				</div>
			</div>
		</div>
	</div><!--/ Modal idiomas -->

	<!-- Modal Experiencia Laboral -->
	<div class="modal fade modal-experiencia-laboral" role="dialog" >
		<div class="modal-dialog modal-md">
			<div class="modal-content">
				<div class="modal-header bmd-bg-info bmd-text-blue-50">
					<button type="button" class="close" data-dismiss="modal" aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
					<h4 class="modal-title">Experiencia Laboral</h4>
				</div>
				<div class="modal-body">
					<div class="form-group">
						<label>Empresa:</label>
						<input id="txt-el-empresa" class="form-control" type="text" />
					</div>
					<div class="form-group">
						<label>Cargo:</label>
						<select id="sel-el-cargo" class="form-control">
							<option></option>
						</select>
					</div>
					<div class="form-group">
						<label>Fecha de Inicio:</label>
						<input id="dat-el-fecha-inicio" class="form-control" type="date" />
					</div>
					<div class="form-group">
						<label>Fecha de Fin:</label>
						<input id="dat-el-fecha-fin" class="form-control" type="date" />
					</div>
					<div class="form-group">
						<label>Descripción:</label>
						<textarea id="txt-el-descripcion" class="form-control"></textarea>
					</div>
					<div class="form-group">
						<label>Area:</label>
						<select id="sel-el-area" class="form-control">
							<option></option>
						</select>
					</div>
					<div class="form-group">
						<label>Rubro:</label>
						<select id="sel-el-rubro" class="form-control">
							<option></option>
						</select>
					</div>
					<div class="form-group">
						<label>Sector:</label>
						<select id="sel-el-sector" class="form-control">
							<option></option>
						</select>
					</div>
					
					<div class="form-group">
						<label>Pais:</label>
						<select id="sel-el-pais" class="form-control">
							<option></option>
						</select>
					</div>
					<div class="form-group">
						<label><i class="fa fa-paperclip"></i> Documento sustentatorio:</label>
						<input id="txt-el-documento-sustentatorio" type="file" />
					</div>
				</div>
				<div class="modal-footer">
					<button class="btn btn-info bmd-floating bmd-ripple" data-ng-click="regCtrl.guardarExperienciaLaboral()">
						<i class="glyphicon glyphicon-save"></i>
						Guardar
					</button>
				</div>
			</div>
		</div>
	</div><!--/ Modal Experiencia Laboral -->
</div>