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
							<input id="txt-dp-nombres" data-ng-model="regCtrl.persona.nombres" type="text" class="form-control mayuscula" placeholder="Nombres" />
						</div>
					</div>
					<div class="form-group">
						<label class="col-md-3 control-label">Apellidos:</label>
						<div class="col-md-9">
							<input id="txt-dp-apellidos" data-ng-model="regCtrl.persona.apellidos" type="text" class="form-control mayuscula" placeholder="Apellidos" />
						</div>
					</div>
					<div class="form-group">
						<label class="col-md-3 control-label" >Fecha de Nacimiento:</label>
						<div class="col-md-4">
							<input id="txt-dp-fecha-nacimiento" data-ng-model="regCtrl.persona.fechaNacimiento" type="text" class="form-control fecha" data-provide="datepicker" data-date-format="dd/mm/yyyy" data-date-language="es" placeholder="dd/mm/aaaa" />
						</div>
					</div>
					<div class="form-group">
						<label class="col-md-3 control-label" >País de nacimiento</label>
						<div class="col-md-4">
							<select id="sel-dp-pais-nacimiento" data-ng-model="regCtrl.persona.paisNacimientoId" class="form-control pais">
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
						<label class="col-md-3 control-label">Número Documento:</label>
						<div class="col-md-6">
							<input id="txt-dp-numero-documento" data-ng-model="regCtrl.persona.numeroDocumento" type="text" class="form-control" placeholder="Número de Documento" />
						</div>
					</div>
					<div class="form-group">
						<label class="col-md-3 control-label" ><i class="fa fa-paperclip"></i> Adjuntar Documento de Identidad</label>
						<div class="col-md-6">
							<input id="txt-dp-documento" data-ng-model="regCtrl.persona.documento" class="form-control" type="file" />
						</div>
						<div class="col-md-1">
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
						<label class="col-md-3 control-label">Teléfono Fijo:</label>
						<div class="col-md-4">
							<input id="txt-dp-telefono" data-ng-model="regCtrl.persona.telefono" type="text" class="form-control numero" placeholder="Teléfono Fijo" required/>
						</div>
					</div>
					<div class="form-group">
						<label class="col-md-3 control-label">Teléfono Celular:</label>
						<div class="col-md-4">
							<input id="txt-dp-celular" data-ng-model="regCtrl.persona.celular" type="text" class="form-control numero" placeholder="Teléfono Celular" required/>
						</div>
					</div>
					<div class="form-group">
						<label class="col-md-3 control-label">Correo Electrónico:</label>
						<div class="col-md-9">
							<input id="txt-dp-correo" data-ng-model="regCtrl.persona.email" type="email" class="form-control" placeholder="CORREO ELECTRÓNICO" required/>
						</div>
					</div>					
					<div class="form-group">
						<label class="col-md-3 control-label">Dirección domiciliaria:</label>
						<div class="col-md-9">
							<input id="txt-dp-direccion" data-ng-model="regCtrl.persona.direccion" type="text" class="form-control mayuscula" placeholder="Dirección domiciliaria" />
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
						<div class="col-md-5">
							<input id="txt-dp-curriculum" data-ng-model="regCtrl.persona.cv" class="form-control" type="file" />
						</div>
						<div class="col-md-1">
							<a id="txt-dp-curriculum-ok" href="#" class="btn btn-info btn-xs pull-right bmd-floating bmd-ripple" style="display:none;"> <i class="fa fa-check"></i> </a>
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

	<div  class="panel panel-default">
		<div id="panel-computacion" class="panel-heading">
			<h4>Conocimientos en Computación</h4>
		</div>
		<div class="panel-body">
			<div class="row">
				<div class="form-group">
					<label class="control-label col-md-3">¿Tiene Ud. Conocimientos en computación?</label>
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
	</div>

	<div  class="panel panel-default">
		<div id="panel-informacion-adicional" class="panel-heading">
			<h4>Información Adicional</h4>
		</div>
		<div class="panel-body">
			<div class="row">
				<div class="form-group">
					<label  class="col-md-3 control-label">¿Ha trabajado en la APCI?</label>
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
					<label  class="col-md-3 control-label">¿Tiene familiares trabajando en la APCI?</label>
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
					<label  class="col-md-3 control-label">¿Ocupa un cargo directivo en una ONGD / ENIEX?</label>
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
					<label  class="col-md-3 control-label">¿Anteriormente ha ocupado un cargo directivo en una ONGD / ENIEX?</label>
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
	</div>

	<div class="panel panel-default">
		<div class="panel-heading">
			<h4>Ingreso al sistema</h4>
		</div>
		<div class="panel-body">
			<div class="row">
				<div class="col-md-9 form-horizontal">
					<div class="form-group">
						<label class="col-md-3 control-label" >Usuario:</label>
						<div class="col-md-4">
							<input id="usuario" name="usuario" data-ng-model="regCtrl.persona.numeroDocumento" type="text" class="form-control" placeholder="Usuario" readonly />
						</div>
					</div>
					<div class="form-group">
						<div class="col-md-3"></div>
						<div class="col-md-4">
							<p style="font-size: 11px;color: gray;">Su usuario para ingresar al sistema será el número de documento de identidad.</p>
						</div>
					</div>
					<div class="form-group">
						<label class="col-md-3 control-label" >Contraseña:</label>
						<div class="col-md-4">
							<input id="password" name="password" data-ng-model="regCtrl.persona.hash" type="password" class="form-control" placeholder="Ingrese una Contraseña" />
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

	<!-- Modal  -->
	<div class="modal fade modal-confirmacion" role="dialog" >
		<div class="modal-dialog modal-md">
			<div class="modal-content">
				<div class="modal-header bmd-text-blue-50 bmd-bg-info">
					<button type="button" class="close" data-dismiss="modal" aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
					<h4 class="modal-title ">Declaración Jurada</h4>
				</div>
				<div class="modal-body">
					 <p> Declaro bajo juramento  que la información que he proporcionado es veraz y asumo las responsabilidades y consecuencias legales que ello produzca. </p>
				</div>
				<div class="modal-footer">
					<button class="btn btn-info bmd-ripple bmd-floating" data-ng-click="regCtrl.confirmarRegistro()"><i class="fa fa-check"></i> Aceptar</button>
					<button class="btn bmd-text-red-50 bmd-bg-red-300 bmd-ripple bmd-floating" data-dismiss="modal" aria-label="Close" ><i class="fa fa-times"></i> Cancelar</button>
				</div>
			</div>
		</div>
	</div><!--/ Modal  -->
</div>