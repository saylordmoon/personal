<div data-ng-controller="RegistroController as regCtrl" class="bmd-floating">
	<div class="panel panel-default">
		<div class="panel-heading">
			<h4>Datos Personales</h4>
		</div>

		<div class="panel-body">
			<div class="row">
				<div class="col-md-9 form-horizontal">
					<div class="form-group">
						<label class="col-md-3 control-label" >Nombres:</label>
						<div class="col-md-9">
							<input id="txt-dp-nombres" data-ng-model="regCtrl.persona.nombres" type="text" class="form-control" placeholder="Nombres" />
						</div>
					</div>
					<div class="form-group">
						<label class="col-md-3 control-label">Apellidos:</label>
						<div class="col-md-9">
							<input id="txt-dp-apellidos" data-ng-model="regCtrl.persona.apellidos" type="text" class="form-control" placeholder="Apellidos" />
						</div>
					</div>
					<div class="form-group">
						<label class="col-md-3 control-label" >Fecha de Nacimiento:</label>
						<div class="col-md-4">
							<input id="txt-dp-fecha-nacimiento" data-ng-model="regCtrl.persona.fechaNacimiento" type="text" class="form-control fecha" data-provide="datepicker" data-date-format="dd/mm/yyyy" data-date-language="es" placeholder="dd/mm/aaaa" />
						</div>
					</div>
					<div class="form-group">
						<label class="col-md-3 control-label" >Pa�s de nacimiento</label>
						<div class="col-md-4">
							<select id="sel-dp-pais-nacimiento" data-ng-model="regCtrl.persona.paisNacimientoId" class="form-control">
								<option data-ng-repeat="pais in regCtrl.paises" value="{{pais.paisId}}">{{pais.nombre}}</option>
							</select>
						</div>
					</div>
					<div class="form-group">
						<label class="col-md-3 control-label" >Sexo:</label>
						<div class="col-md-4">
							<select id="sel-dp-sexo" data-ng-model="regCtrl.persona.sexo" class="form-control">
								<option value="">-- Seleccione --</option>
								<option value="M">Masculino</option>
								<option value="F">Femenino</option>
							</select>
						</div>
					</div>
					<div class="form-group">
						<label class="col-md-3 control-label">Tipo de Documento:</label>
						<div class="col-md-4">
							<select id="sel-dp-tipo-documento" data-ng-model="regCtrl.persona.tipoDocumentoId" class="form-control" data-ng-change="regCtrl.tipoDocumento()">
								<option data-ng-repeat="tipo in regCtrl.tipodocumento" value="{{tipo.tipoDocumentoId}}">{{tipo.descripcion}}</option>
							</select>
						</div>
					</div>
					<div class="form-group">
						<label class="col-md-3 control-label">N�mero Documento:</label>
						<div class="col-md-6">
							<input id="txt-dp-numero-documento" data-ng-model="regCtrl.persona.numeroDocumento" type="text" class="form-control" placeholder="N�mero de Documento" />
						</div>
					</div>
					<div class="form-group">
						<label class="col-md-3 control-label" ><i class="fa fa-paperclip"></i> Adjuntar Documento de Identidad</label>
						<div class="col-md-6">
							<input id="txt-dp-documento" data-ng-model="regCtrl.persona.documento" class="form-control" type="file" />
							<a id="txt-dp-documento-ok" href="#" class="btn btn-info btn-xs pull-right bmd-floating bmd-ripple" style="display:none;"> <i class="fa fa-check"></i> </a>
						</div>
					</div>
					<div class="form-group">
						<label class="col-md-3 control-label" >R.U.C.</label>
						<div class="col-md-4">
							<input id="txt-dp-ruc" data-ng-model="regCtrl.persona.RUC" type="text" class="form-control ruc" placeholder="R.U.C." />
						</div>
					</div>
					<div class="form-group">
						<label class="col-md-3 control-label">Tel�fono Fijo:</label>
						<div class="col-md-4">
							<input id="txt-dp-telefono" data-ng-model="regCtrl.persona.telefono" type="text" class="form-control numero" placeholder="Tel�fono Fijo" required/>
						</div>
					</div>
					<div class="form-group">
						<label class="col-md-3 control-label">Tel�fono Celular:</label>
						<div class="col-md-4">
							<input id="txt-dp-celular" data-ng-model="regCtrl.persona.celular" type="text" class="form-control numero" placeholder="Tel�fono Celular" required/>
						</div>
					</div>
					<div class="form-group">
						<label class="col-md-3 control-label">Correo Electr�nico:</label>
						<div class="col-md-9">
							<input id="txt-dp-correo" data-ng-model="regCtrl.persona.email" type="email" class="form-control" placeholder="Correo Electr�nico" required/>
						</div>
					</div>					
					<div class="form-group">
						<label class="col-md-3 control-label">Direcci�n de domicilio:</label>
						<div class="col-md-9">
							<input id="txt-dp-direccion" data-ng-model="regCtrl.persona.direccion" type="text" class="form-control" placeholder="Direcci�n de domicilio" />
						</div>
					</div>
					<div class="form-group">
						<label class="col-md-3 control-label"></label>
						<div class="col-md-9">
							<div class="row">
								<div class="col-md-4">
									<div class="form-group" style="padding-right: 20px; padding-left: 15px;">
										<label  class="control-label">Departamento:</label>
										<select id="sel-dp-departamento" class="form-control" data-ng-model="regCtrl.persona.departamentoId" data-ng-change="regCtrl.departamentoSelected()" >
											<option data-ng-repeat="departamento in regCtrl.departamentos" value="{{departamento.departamentoId}}">{{departamento.nombre}}</option>
										</select>
									</div>
								</div>
								<div class="col-md-4">
									<div class="form-group" style="padding-right: 20px; padding-left: 15px;">
										<label  class="control-label">Provincia:</label>
										<select id="sel-dp-provincia" class="form-control" data-ng-model="regCtrl.persona.provinciaId" data-ng-change="regCtrl.provinciaSelected()" >
											<option data-ng-repeat="provincia in regCtrl.provincias" value="{{provincia.provinciaId}}">{{provincia.nombre}}</option>
										</select>
									</div>
								</div>
								<div class="col-md-4">
									<div class="form-group" style="padding-right: 15px; padding-left: 15px;">
										<label  class="control-label">Distrito:</label>
										<select id="sel-dp-distrito" data-ng-model="regCtrl.persona.distritoId" class="form-control">
											<option data-ng-repeat="distrito in regCtrl.distritos" value="{{distrito.distritoId}}">{{distrito.nombre}}</option>
										</select>
									</div>
								</div>
							</div>
						</div>
					</div>
					
					<div class="form-group">
						<label class="col-md-3 control-label"><i class="fa fa-paperclip"></i> Adjuntar Curriculum:</label>
						<div class="col-md-6">
							<a id="txt-dp-curriculum-ok" href="#" class="btn btn-info btn-xs pull-right bmd-floating bmd-ripple" style="display:none;"> <i class="fa fa-check"></i> </a>
							<input id="txt-dp-curriculum" data-ng-model="regCtrl.persona.cv" class="form-control" type="file" />
						</div>
					</div>	
				</div>
				<div class="col-md-3" align="right">
					<div style="width: 150px">
						<canvas id="canvas" style="width: 150px;height: 200px;background-color: gray;"></canvas>		
						<input id="txt-dp-foto" type="file" class="form-control" data-ng-model="regCtrl.persona.foto" />
						<a id="txt-dp-foto-ok" href="#" class="btn btn-info btn-xs pull-right bmd-floating bmd-ripple" style="display:none;"> <i class="fa fa-check"></i> </a>
					</div>
				</div>
			</div>
		</div>
	</div>

	<div class="panel panel-default">
		<div class="panel-heading">
			<h4>Informaci�n Financiera</h4>
		</div>
		<div class="panel-body">
			<div class="row">
				<div class="col-md-9 form-horizontal">
					<div class="form-group">
						<label class="col-md-3 control-label" >Banco:</label>
						<div class="col-md-9">
							<input id="txt-if-banco" data-ng-model="regCtrl.persona.banco" type="text" class="form-control" placeholder="Nombre del banco" />
						</div>
					</div>
					<div class="form-group">
						<label class="col-md-3 control-label" >N�mero de Cuenta:</label>
						<div class="col-md-9">
							<input id="txt-if-cuenta" data-ng-model="regCtrl.persona.cuenta" type="text" class="form-control cuenta" placeholder="N�mero de Cuenta" />
						</div>
					</div>
					<div class="form-group">
						<label class="col-md-3 control-label" >CCI:</label>
						<div class="col-md-9">
							<input id="txt-if-cci" data-ng-model="regCtrl.persona.CCI" type="text" class="form-control cci" placeholder="C�digo de Cuenta Interbancario" />
							<p style="font-size: 11px;color: gray;">Ingresa los 20 d�gitos de la cuenta de destino (CCI) sin considerar espacios en blanco o alguno de los s�mbolos: (-) (,) (/) (*).
							<br /> Por ejemplo: Si el CCI que vas a ingresar es de la forma 002-100-012022434968-49 ingr�salo de esta manera: 00210001202243496849</p>
						</div>
					</div>
				</div>
			</div>
		</div>
		<div class="panel-footer">
		</div>
	</div>

	<div class="panel panel-default">
		<div id="panel-formacion-academica" class="panel-heading">
			<a href="" data-ng-click="regCtrl.agregarFormacionAcademica()" class="btn btn-default bmd-text-blue-400 pull-right bmd-floating bmd-ripple bmd-fab bmd-fab-sm">
				<i class="glyphicon glyphicon-plus"></i>
			</a>
			<h4>Formaci�n Acad�mica</h4>
		</div>
		<div class="panel-body">
			<div class="table-responsive">
				<table class="table table-bordered table-striped">
					<thead>
						<tr>
							<td>Formaci�n Acad�mica</td>
							<td>Profesi�n o especialidad</td>
							<td>Fecha de Expedici�n</td>
							<td>Instituci�n Acad�mica</td>
							<td>Pa�s</td>
							<td><i class="fa fa-paperclip"></i></td>
							<td></td>
						</tr>
					</thead>
					<tbody>
						<tr data-ng-repeat="formacion in regCtrl.formacionAcademica">
							<td>{{formacion.grado}}</td>
							<td>{{formacion.especialidad}}</td>
							<td>{{formacion.fechaExpedicion | date : "dd/MM/yyyy"}}</td>
							<td>{{formacion.institucion}}</td>
							<td>{{formacion.pais}}</td>
							<td><a href="/appbase/api/v1/file/download{{formacion.documento}}"><i class="fa fa-paperclip"></i></a></td>
							<td>
								<button class="btn btn-default pull-right" data-ng-click="regCtrl.borrarFormacionAcademica(formacion)"><i class="glyphicon glyphicon-trash"></i></button>
								<button class="btn btn-default pull-right" data-ng-click="regCtrl.editarFormacionAcademica(formacion)"><i class="glyphicon glyphicon-pencil"></i></button>
							</td>
						</tr>
					</tbody>
				</table>
			</div>
		</div>
	</div>

	<div class="panel panel-default">
		<div id="panel-capacitacion" class="panel-heading">
			<a href="" data-ng-click="regCtrl.agregarCapacitacion()" class="btn btn-default bmd-text-blue-400 pull-right bmd-floating bmd-ripple bmd-fab bmd-fab-sm">
				<i class="glyphicon glyphicon-plus"></i>
			</a>
			<h4>Capacitaci�n</h4>
		</div>
		<div class="panel-body">
			<div class="table-responsive">
				<table class="table table-bordered table-striped">
					<thead>
						<tr>
							<td>Capacitaci�n</td>
							<td>Fecha de Inicio</td>
							<td>Fecha de Fin</td>
							<td>Horas lectivas</td>
							<td>Instituci�n Acad�mica</td>
							<td>Pa�s</td>
							<td><i class="fa fa-paperclip"></i></td>
							<td></td>
						</tr>
					</thead>
					<tbody>
						<tr data-ng-repeat="capacitacion in regCtrl.capacitaciones">
							<td>{{capacitacion.capacitacion}}</td>
							<td>{{capacitacion.fechaInicio | date : "dd/MM/yyyy"}}</td>
							<td>{{capacitacion.fechaFin | date : "dd/MM/yyyy"}}</td>
							<td>{{capacitacion.horasLectivas}}</td>
							<td>{{capacitacion.institucion}}</td>
							<td>{{capacitacion.pais}}</td>
							<td><a href="/appbase/api/v1/file/download{{capacitacion.documento}}"><i class="fa fa-paperclip"></i></a></td>
							<td>
								<button class="btn btn-default pull-right" data-ng-click="regCtrl.borrarCapacitacion(capacitacion)"><i class="glyphicon glyphicon-trash"></i></button>
								<button class="btn btn-default pull-right" data-ng-click="regCtrl.editarCapacitacion(capacitacion)"><i class="glyphicon glyphicon-pencil"></i></button>
							</td>
						</tr>
					</tbody>
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
							<td></td>
						</tr>
					</thead>
					<tbody>
						<tr data-ng-repeat="idioma in regCtrl.personaIdiomas">
							<td>{{idioma.idioma}}</td>
							<td>{{idioma.escritura}}</td>
							<td>{{idioma.hablado}}</td>
							<td>{{idioma.lectura}}</td>
							<td><a href="/appbase/api/v1/file/download{{idioma.documento}}"><i class="fa fa-paperclip"></i></a></td>
							<td>
								<button class="btn btn-default pull-right" data-ng-click="regCtrl.borrarIdiomas(idioma)"><i class="glyphicon glyphicon-trash"></i></button>
								<button class="btn btn-default pull-right" data-ng-click="regCtrl.editarIdiomas(idioma)"><i class="glyphicon glyphicon-pencil"></i></button>
							</td>
						</tr>
					</tbody>
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
							<td>Empresa / Instituci�n</td>
							<td>Cargo</td>
							<td>Fecha de Inicio</td>
							<td>Fecha de Cese</td>
							<td>Descripci�n</td>
							<td>Area</td>
							<td>Rubro</td>
							<td>Sector</td>
							<td>Pa�s</td>
							<td><i class="fa fa-paperclip"></i></td>
							<td></td>
						</tr>
					</thead>
					<tbody>
						<tr data-ng-repeat="experiencia in regCtrl.experienciaLaboral">
							<td>{{experiencia.empresa}}</td>
							<td>{{experiencia.cargo}}</td>
							<td>{{experiencia.fechaInicio | date : "dd/MM/yyyy" }}</td>
							<td>{{experiencia.fechaFin | date : "dd/MM/yyyy" }}</td>
							<td>{{experiencia.descripcion}}</td>
							<td>{{experiencia.area}}</td>
							<td>{{experiencia.rubro}}</td>
							<td>{{experiencia.sector}}</td>
							<td>{{experiencia.pais}}</td>
							<td><a href="/appbase/api/v1/file/download{{experiencia.documento}}"><i class="fa fa-paperclip"></i></a></td>
							<td>
								<button class="btn btn-default pull-right" data-ng-click="regCtrl.borrarExperienciaLaboral(experiencia)"><i class="glyphicon glyphicon-trash"></i></button>
								<button class="btn btn-default pull-right" data-ng-click="regCtrl.editarExperienciaLaboral(experiencia)"><i class="glyphicon glyphicon-pencil"></i></button>
							</td>
						</tr>	
					</tbody>
				</table>
			</div>
		</div>
	</div>

	<div  class="panel panel-default">
		<div id="panel-computacion" class="panel-heading">
			<h4>Conocimientos en Computaci�n</h4>
		</div>
		<div class="panel-body">
			<div class="row">
				<div class="form-group">
					<label class="control-label col-md-3">�Tiene Ud. Conocimientos en computaci�n?</label>
					<div class="col-md-1">
						<div class="radio bmd-radio">
							<label>
								<input class="bmd-radio-input bmd-ripple bmd-ink-gray" data-ng-model="regCtrl.persona.computacion" type="radio" id="rb-computacion" name="rb-computacion" value="true">
								Si
								<span class="bmd-radio-check"></span>
							</label>
						</div>
					</div>
					<div class="col-md-1">
						<div class="radio bmd-radio">
							<label>
								<input class="bmd-radio-input bmd-ripple bmd-ink-gray" data-ng-model="regCtrl.persona.computacion" type="radio" id="rb-computacion" name="rb-computacion" value="false" data-ng-init="regCtrl.persona.computacion ='false'">
								No
								<span class="bmd-radio-check"></span>
							</label>
						</div>
					</div>
					<div class="col-md-4" data-ng-show="regCtrl.persona.computacion=='true'">
						<div class="form-group">
							<label class="col-md-2">Nivel</label>
							<div class="col-md-6">
								<select id="sel-nivel-computacion" class="form-control" data-ng-model="regCtrl.persona.nivelComputacionId">
									<option data-ng-repeat="nivel in regCtrl.niveles" value="{{nivel.nivelId}}">{{nivel.descripcion}}</option>
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
			<h4>Informaci�n Adicional</h4>
		</div>
		<div class="panel-body">
			<div class="row">
				<div class="form-group">
					<label  class="col-md-3 control-label">�Ha trabajado en la APCI?</label>
					<div class="col-md-1">
						<div class="radio bmd-radio">
							<label>
								<input class="bmd-radio-input bmd-ripple bmd-ink-gray" type="radio" id="rb-trabaja-apci" data-ng-model="regCtrl.persona.trabajoEnAPCI" name="rb-trabaja-apci" value="true">
								Si
								<span class="bmd-radio-check"></span>
							</label>
						</div>
					</div>
					<div class="col-md-1">
						<div class="radio bmd-radio">
							<label>
								<input class="bmd-radio-input bmd-ripple bmd-ink-gray" type="radio" id="rb-trabaja-apci" data-ng-model="regCtrl.persona.trabajoEnAPCI" name="rb-trabaja-apci" value="false" data-ng-init="regCtrl.persona.trabajoEnAPCI ='false'">
								No
								<span class="bmd-radio-check"></span>
							</label>
						</div>
					</div>
				</div>
			</div>
			<div class="row">
				<div class="form-group">
					<label  class="col-md-3 control-label">�Tiene familiares trabajando en la APCI?</label>
					<div class="col-md-1">
						<div class="radio bmd-radio">
							<label>
								<input class="bmd-radio-input bmd-ripple bmd-ink-gray" type="radio" id="rb-familiares-apci" data-ng-model="regCtrl.persona.familiaresEnAPCI" name="rb-familiares-apci" value="true">
								Si
								<span class="bmd-radio-check"></span>
							</label>
						</div>
					</div>
					<div class="col-md-1">
						<div class="radio bmd-radio">
							<label>
								<input class="bmd-radio-input bmd-ripple bmd-ink-gray" type="radio" id="rb-familiares-apci" data-ng-model="regCtrl.persona.familiaresEnAPCI" name="rb-familiares-apci" value="false" data-ng-init="regCtrl.persona.familiaresEnAPCI ='false'">
								No
								<span class="bmd-radio-check"></span>
							</label>
						</div>
					</div>
				</div>
			</div>
			<div class="row">
				<div class="form-group">
					<label  class="col-md-3 control-label">�Ocupa un cargo directivo en una ONGD / ENIEX?</label>
					<div class="col-md-1">
						<div class="radio bmd-radio">
							<label>
								<input class="bmd-radio-input bmd-ripple bmd-ink-gray" data-ng-model="regCtrl.persona.directivoONGD_ENIEX" type="radio" id="rb-ong" name="rb-ong" value="true">
								Si
								<span class="bmd-radio-check"></span>
							</label>
						</div>
					</div>
					<div class="col-md-1">
						<div class="radio bmd-radio">
							<label>
								<input class="bmd-radio-input bmd-ripple bmd-ink-gray" data-ng-model="regCtrl.persona.directivoONGD_ENIEX" type="radio" id="rb-ong" name="rb-ong" value="false" data-ng-init="regCtrl.persona.directivoONGD_ENIEX ='false'">
								No
								<span class="bmd-radio-check"></span>
							</label>
						</div>
					</div>
				</div>	
			</div>
			<div class="row">
				<div class="form-group">
					<label  class="col-md-3 control-label">�Anteriormente ha ocupado un cargo directivo en una ONGD / ENIEX?</label>
					<div class="col-md-1">
						<div class="radio bmd-radio">
							<label>
								<input class="bmd-radio-input bmd-ripple bmd-ink-gray" data-ng-model="regCtrl.persona.fueDirectivoONGD_ENIEX" type="radio" id="rb-fue-ong" name="rb-fue-ong" value="true">
								Si
								<span class="bmd-radio-check"></span>
							</label>
						</div>
					</div>
					<div class="col-md-1">
						<div class="radio bmd-radio">
							<label>
								<input class="bmd-radio-input bmd-ripple bmd-ink-gray" data-ng-model="regCtrl.persona.fueDirectivoONGD_ENIEX" type="radio" id="rb-fue-ong" name="rb-fue-ong" value="false" data-ng-init="regCtrl.persona.fueDirectivoONGD_ENIEX ='false'">
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
					<h4 class="modal-title">Formaci�n Acad�mica</h4>
				</div>
				<div class="modal-body">
					<div class="form-group">
						<label>Fomaci�n Acad�mica:</label>
						<select id="sel-fa-grado-academico" data-ng-model="regCtrl.formacion.gradoId" class="form-control">
							<option data-ng-repeat="grado in regCtrl.grados" value="{{grado.gradoId}}">{{grado.descripcion}}</option>
						</select>
					</div>
					<div class="form-group">
						<label >Profesi�n o Especialidad:</label>
						<input id="txt-fa-profesion" data-ng-model="regCtrl.formacion.especialidad"  type="text" class="form-control" />
					</div>
					<div class="form-group">
						<label ><i class="fa fa-calendar"></i> Fecha de Expedici�n:</label>
						<input id="txt-fa-fecha-expedicion" data-ng-model="regCtrl.formacion.fechaExpedicion" type="text" class="form-control fecha" data-provide="datepicker" data-date-format="dd/mm/yyyy" data-date-language="es" placeholder="dd/mm/aaaa" />
					</div>
					<div class="form-group">
						<label >Instituci�n Acad�mica:</label>
						<input id="txt-fa-institucion" type="text" data-ng-model="regCtrl.formacion.institucion" class="form-control" />
					</div>
					<div class="form-group">
						<label>Pa�s:</label>
						<select id="sel-fa-pais" data-ng-model="regCtrl.formacion.paisId" class="form-control">
							<option data-ng-repeat="pais in regCtrl.paises" value="{{pais.paisId}}">{{pais.nombre}}</option>
						</select>
					</div>
					<div class="form-group">
						<label class="control-label"><i class="fa fa-paperclip"></i> Documento Sustentatorio:</label>
						<input id="txt-fa-documento-sustentatorio" type="file" class="form-control" />
						<a id="txt-fa-documento-sustentatorio-ok" href="#" class="btn btn-info btn-xs pull-right bmd-floating bmd-ripple" style="display:none;"> <i class="fa fa-check"></i> </a>
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

	<!-- Modal Capacitaci�n -->
	<div class="modal fade modal-capacitacion" role="dialog" >
		<div class="modal-dialog modal-md">
			<div class="modal-content">
				<div class="modal-header bmd-bg-info bmd-text-blue-50">
					<button type="button" class="close" data-dismiss="modal" aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
					<h4 class="modal-title">Capacitaci�n</h4>
				</div>
				<div class="modal-body">
					<div class="form-group">
						<label class="control-label">Curso de Capacitaci�n:</label>
						<input id="txt-c-curso-capacitacion" data-ng-model="regCtrl.capacitacion.capacitacion" type="text" class="form-control" placeholder="Nombre del curso de capacitaci�n" />
					</div>
					<div class="form-group">
						<label class="control-label"><i class="fa fa-calendar"></i> Fecha de Inicio:</label>
						<input id="dat-c-fecha-inicio" data-ng-model="regCtrl.capacitacion.fechaInicio" type="text" class="form-control fecha" data-provide="datepicker" data-date-format="dd/mm/yyyy" data-date-language="es" placeholder="dd/mm/aaaa" />
					</div>
					<div class="form-group">
						<label class="control-label"><i class="fa fa-calendar"></i> Fecha de Fin:</label>
						<input id="dat-c-fecha-fin" data-ng-model="regCtrl.capacitacion.fechaFin" type="text" class="form-control fecha" data-provide="datepicker" data-date-format="dd/mm/yyyy" data-date-language="es" placeholder="dd/mm/aaaa" />
					</div>
					<div class="form-group">
						<label class="control-label">Horas Lectivas:</label>
						<input id="txt-c-horas-lectivas" data-ng-model="regCtrl.capacitacion.horasLectivas" type="number" class="form-control" />
					</div>
					<div class="form-group">
						<label class="control-label">Instituci�n Acad�mica:</label>
						<input id="txt-c-institucion" data-ng-model="regCtrl.capacitacion.institucion" type="text" class="form-control" />
					</div>
					<div class="form-group">
						<label class="control-label">Pa�s:</label>
						<select id="sel-c-pais" class="form-control" data-ng-model="regCtrl.capacitacion.paisId">
							<option data-ng-repeat="pais in regCtrl.paises"  value="{{pais.paisId}}">{{pais.nombre}}</option>
						</select>
					</div>
					<div class="form-group">
						<label class="control-label"><i class="fa fa-paperclip"></i> Documento Sustentatorio:</label>
						<input id="txt-c-documento-sustentatorio" type="file" class="form-control" />
						<a id="txt-c-documento-sustentatorio-ok" href="#" class="btn btn-info btn-xs pull-right bmd-floating bmd-ripple" style="display:none;"> <i class="fa fa-check"></i> </a>
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
	</div><!--/ Modal Capacitaci�n -->

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
						<select id="sel-i-idioma" data-ng-model="regCtrl.idioma.idiomaId" class="form-control">
							<option data-ng-repeat="idioma in regCtrl.idiomas" value="{{idioma.idiomaId}}">{{idioma.nombre}}</option>
						</select>
					</div>
					<div class="form-group">
						<label>Nivel de Escritura:</label>
						<select id="sel-i-nivel-escritura" data-ng-model="regCtrl.idioma.nivelEscrituraId" class="form-control">
							<option data-ng-repeat="nivel in regCtrl.niveles" value="{{nivel.nivelId}}">{{nivel.descripcion}}</option>
						</select>
					</div>
					<div class="form-group">
						<label>Nivel Hablado:</label>
						<select id="sel-i-nivel-hablado" data-ng-model="regCtrl.idioma.nivelHabladoId" class="form-control">
							<option data-ng-repeat="nivel in regCtrl.niveles" value="{{nivel.nivelId}}">{{nivel.descripcion}}</option>
						</select>
					</div>
					<div class="form-group">
						<label>Nivel Lectura:</label>
						<select id="sel-i-nivel-lectura" data-ng-model="regCtrl.idioma.nivelLecturaId" class="form-control">
							<option data-ng-repeat="nivel in regCtrl.niveles" value="{{nivel.nivelId}}">{{nivel.descripcion}}</option>
						</select>
					</div>
					<div class="form-group">
						<label><i class="fa fa-paperclip"></i> Documento Sustentatorio: (opcional)</label>
						<input id="txt-i-documento-sustentatorio" class="form-control" type="file" />
						<a id="txt-i-documento-sustentatorio-ok" href="#" class="btn btn-info btn-xs pull-right bmd-floating bmd-ripple" style="display:none;"> <i class="fa fa-check"></i> </a>
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
						<label>Empresa / Instituci�n:</label>
						<input id="txt-el-empresa" data-ng-model="regCtrl.experiencia.empresa" class="form-control" type="text" />
					</div>
					<div class="form-group">
						<label>Cargo Desempe�ado:</label>
						<input id="txt-el-cargo" data-ng-model="regCtrl.experiencia.cargo" class="form-control" />
					</div>
					<div class="form-group">
						<label>Fecha de Inicio:</label>
						<input id="dat-el-fecha-inicio" data-ng-model="regCtrl.experiencia.fechaInicio" class="form-control fecha" type="text" data-provide="datepicker" data-date-format="dd/mm/yyyy" data-date-language="es" placeholder="dd/mm/aaaa" />
					</div>
					<div class="form-group">
						<label>Fecha de Cese:</label>
						<input id="dat-el-fecha-fin" data-ng-model="regCtrl.experiencia.fechaFin" class="form-control fecha" type="text" data-provide="datepicker" data-date-format="dd/mm/yyyy" data-date-language="es" placeholder="dd/mm/aaaa" />
					</div>
					<div class="form-group">
						<label>Descripci�n de Funciones:</label>
						<textarea id="txt-el-descripcion" data-ng-model="regCtrl.experiencia.descripcion" class="form-control"></textarea>
					</div>
					<div class="form-group">
						<label>�rea:</label>
						<select id="sel-el-area" data-ng-model="regCtrl.experiencia.areaId" class="form-control">
							<option data-ng-repeat="area in regCtrl.areas" value="{{area.areaId}}">{{area.nombre}}</option>
						</select>
					</div>
					<div class="form-group">
						<label>Rubro:</label>
						<select id="sel-el-rubro" data-ng-model="regCtrl.experiencia.rubroId" class="form-control">
							<option data-ng-repeat="rubro in regCtrl.rubros" value="{{rubro.rubroId}}">{{rubro.descripcion}}</option>
						</select>
					</div>
					<div class="form-group">
						<label>Sector:</label>
						<select id="sel-el-sector" data-ng-model="regCtrl.experiencia.sectorId" class="form-control">
							<option data-ng-repeat="sector in regCtrl.sectores" value="{{sector.sectorId}}">{{sector.nombre}}</option>
						</select>
					</div>
					
					<div class="form-group">
						<label>Pa�s:</label>
						<select id="sel-el-pais" data-ng-model="regCtrl.experiencia.paisId" class="form-control">
							<option data-ng-repeat="pais in regCtrl.paises" value="{{pais.paisId}}">{{pais.nombre}}</option>
						</select>
					</div>
					<div class="form-group">
						<label><i class="fa fa-paperclip"></i> Documento Sustentatorio:</label>
						<input id="txt-el-documento-sustentatorio" class="form-control" data-ng-model="regCtrl.experiencia.documento" type="file" />
						<a id="txt-el-documento-sustentatorio-ok" href="#" class="btn btn-info btn-xs pull-right bmd-floating bmd-ripple" style="display:none;"> <i class="fa fa-check"></i> </a>
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
	
	<!-- Modal  -->
		<div class="modal fade modal-confirmacion" role="dialog" >
			<div class="modal-dialog modal-md">
				<div class="modal-content">
					<div class="modal-header bmd-text-blue-50 bmd-bg-info">
						<button type="button" class="close" data-dismiss="modal" aria-label="Close">
							<span aria-hidden="true">&times;</span>
						</button>
						<h4 class="modal-title ">Finalizar Registro</h4>
					</div>
					<div class="modal-body">
						 <p> Por favor, verifique y valide la informaci�n que registra.</p>
					</div>
					<div class="modal-footer">
						<button class="btn btn-info bmd-ripple bmd-floating" data-ng-click="regCtrl.confirmarRegistro()"><i class="fa fa-check"></i> Aceptar</button>
						<button class="btn bmd-text-red-50 bmd-bg-red-300 bmd-ripple bmd-floating" data-dismiss="modal" aria-label="Close" ><i class="fa fa-times"></i> Cancelar</button>
					</div>
				</div>
			</div>
		</div><!--/ Modal  -->
</div>