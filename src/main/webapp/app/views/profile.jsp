<div data-ng-controller="ProfileController as profileCtrl" class="bmd-floating">
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
							<input id="txt-dp-nombres" data-ng-model="profileCtrl.persona.nombres" type="text" class="form-control mayuscula" placeholder="Nombres" />
						</div>
					</div>
					<div class="form-group">
						<label class="col-md-3 control-label">Apellidos:</label>
						<div class="col-md-9">
							<input id="txt-dp-apellidos" data-ng-model="profileCtrl.persona.apellidos" type="text" class="form-control mayuscula" placeholder="Apellidos" />
						</div>
					</div>
					<div class="form-group">
						<label class="col-md-3 control-label" >Fecha de Nacimiento:</label>
						<div class="col-md-4">
							<input id="txt-dp-fecha-nacimiento" data-ng-model="profileCtrl.persona.fechaNacimiento" type="text" class="form-control fecha" readonly placeholder="dd/mm/aaaa" />
						</div>
					</div>
					<div class="form-group">
						<label class="col-md-3 control-label" >Pa�s de nacimiento:</label>
						<div class="col-md-4">
							<select id="sel-dp-pais-nacimiento" data-ng-model="profileCtrl.persona.paisNacimientoId" class="form-control pais">
								<option data-ng-repeat="pais in profileCtrl.paises" value="{{pais.paisId}}">{{pais.nombre}}</option>
							</select>
						</div>
					</div>
					<div class="form-group">
						<label class="col-md-3 control-label" >Sexo:</label>
						<div class="col-md-4">
							<select id="sel-dp-sexo" data-ng-model="profileCtrl.persona.sexo" class="form-control">
								<option value="">-- Seleccione --</option>
								<option value="M">Masculino</option>
								<option value="F">Femenino</option>
							</select>
						</div>
					</div>
					<div class="form-group">
						<label class="col-md-3 control-label">Tipo de Documento:</label>
						<div class="col-md-4">
							<select id="sel-dp-tipo-documento" data-ng-model="profileCtrl.persona.tipoDocumentoId" class="form-control" data-ng-change="profileCtrl.tipoDocumento()">
								<option data-ng-repeat="tipo in profileCtrl.tipodocumento" value="{{tipo.tipoDocumentoId}}">{{tipo.descripcion}}</option>
							</select>
						</div>
					</div>
					<div class="form-group">
						<label class="col-md-3 control-label">N�mero Documento:</label>
						<div class="col-md-6">
							<input id="txt-dp-numero-documento" data-ng-model="profileCtrl.persona.numeroDocumento" type="text" class="form-control" placeholder="N�mero de Documento" />
						</div>
					</div>
					<div class="form-group">
						<label class="col-md-3 control-label" ><i class="fa fa-paperclip"></i> Adjuntar Documento de Identidad:</label>
						<div class="col-md-6">
							<input id="txt-dp-documento" data-ng-model="profileCtrl.persona.documento" class="form-control" type="file" />
						</div>
						<div class="col-md-1">
							<a id="txt-dp-documento-ok" href="#" class="btn btn-info btn-xs pull-right bmd-floating bmd-ripple" style="display:none;"> <i class="fa fa-check"></i> </a>
						</div>
						<div class="col-md-1">
							<a id="txt-dp-documento-dwn" class="btn btn-info pull-right bmd-floating bmd-ripple" style="display:none;"> <i class="fa fa-download"></i> Ver Archivo Ingresado</a>
						</div>
					</div>
					<div class="form-group">
						<label class="col-md-3 control-label">R.U.C.</label>
						<div class="col-md-4">
							<input id="txt-dp-ruc" data-ng-model="profileCtrl.persona.RUC" type="text" class="form-control ruc" placeholder="R.U.C." />
						</div>
					</div>
					<div class="form-group">
						<label class="col-md-3 control-label">Tel�fono Fijo:</label>
						<div class="col-md-4">
							<input id="txt-dp-telefono" data-ng-model="profileCtrl.persona.telefono" type="text" class="form-control" placeholder="Tel�fono Fijo" required/>
						</div>
					</div>
					<div class="form-group">
						<label class="col-md-3 control-label">Tel�fono Celular:</label>
						<div class="col-md-4">
							<input id="txt-dp-celular" data-ng-model="profileCtrl.persona.celular" type="text" class="form-control" placeholder="Tel�fono Celular" required />
						</div>
					</div>
					<div class="form-group">
						<label class="col-md-3 control-label">Correo Electr�nico:</label>
						<div class="col-md-9">
							<input id="txt-dp-correo" data-ng-model="profileCtrl.persona.email" type="email" class="form-control" placeholder="CORREO ELECTR�NICO" required/>
						</div>
					</div>					
					<div class="form-group">
						<label class="col-md-3 control-label">Direcci�n domiciliaria:</label>
						<div class="col-md-9">
							<input id="txt-dp-direccion" data-ng-model="profileCtrl.persona.direccion" type="text" class="form-control mayuscula" placeholder="Direcci�n domiciliaria" />
						</div>
					</div>
					<div class="form-group">
						<label class="col-md-3 control-label"></label>
						<div class="col-md-9">
							<div class="row">
								<div class="col-md-4">
									<div class="form-group" style="padding-right: 20px; padding-left: 15px;">
										<label  class="control-label">Departamento:</label>
										<select id="sel-dp-departamento" class="form-control" data-ng-model="profileCtrl.persona.departamentoId" data-ng-change="profileCtrl.departamentoSelected()" >
											<option data-ng-repeat="departamento in profileCtrl.departamentos" value="{{departamento.departamentoId}}">{{departamento.nombre}}</option>
										</select>
									</div>
								</div>
								<div class="col-md-4">
									<div class="form-group" style="padding-right: 20px; padding-left: 15px;">
										<label  class="control-label">Provincia:</label>
										<select id="sel-dp-provincia" class="form-control" data-ng-model="profileCtrl.persona.provinciaId" data-ng-change="profileCtrl.provinciaSelected()" >
											<option data-ng-repeat="provincia in profileCtrl.provincias" value="{{provincia.provinciaId}}">{{provincia.nombre}}</option>
										</select>
									</div>
								</div>
								<div class="col-md-4">
									<div class="form-group" style="padding-right: 15px; padding-left: 15px;">
										<label  class="control-label">Distrito:</label>
										<select id="sel-dp-distrito" data-ng-model="profileCtrl.persona.distritoId" class="form-control">
											<option data-ng-repeat="distrito in profileCtrl.distritos" value="{{distrito.distritoId}}">{{distrito.nombre}}</option>
										</select>
									</div>
								</div>
							</div>
						</div>
					</div>
					<div class="form-group">
						<label class="col-md-3 control-label"><i class="fa fa-paperclip"></i> Adjuntar Curriculum:</label>
						<div class="col-md-5">
							<input id="txt-dp-curriculum" data-ng-model="profileCtrl.persona.CV" class="form-control" type="file" />
						</div>
						<div class="col-md-1">
							<a id="txt-dp-curriculum-ok" href="#" class="btn btn-info btn-xs pull-right bmd-floating bmd-ripple" style="display:none;"><i class="fa fa-check"></i> </a>
						</div>
						<div class="col-md-1">
							<a id="txt-dp-curriculum-dwn" href="#" class="btn btn-info pull-right bmd-floating bmd-ripple" style="display:none;"><i class="fa fa-download"></i> Ver Archivo Ingresado </a>
						</div>
					</div>
				</div>
				<div class="col-md-3" align="right">
					<div style="width: 150px">
						<canvas id="canvas" style="width: 150px;height: 200px;background-color: gray;"></canvas>		
						<input id="txt-dp-foto" type="file" class="form-control" data-ng-model="profileCtrl.persona.foto" />
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
							<input id="txt-if-banco" data-ng-model="profileCtrl.persona.banco" type="text" class="form-control mayuscula" placeholder="Nombre del banco" />
						</div>
					</div>
					<div class="form-group">
						<label class="col-md-3 control-label" >N�mero de Cuenta:</label>
						<div class="col-md-9">
							<input id="txt-if-cuenta" data-ng-model="profileCtrl.persona.cuenta" type="text" class="form-control cuenta" placeholder="N�mero de Cuenta" />
						</div>
					</div>
					<div class="form-group">
						<label class="col-md-3 control-label" >CCI:</label>
						<div class="col-md-9">
							<input id="txt-if-cci" data-ng-model="profileCtrl.persona.CCI" type="text" class="form-control cci" placeholder="C�digo de Cuenta Interbancario" />
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
								<input class="bmd-radio-input bmd-ripple bmd-ink-gray" data-ng-model="profileCtrl.persona.computacion" type="radio" id="rb-computacion" name="rb-computacion" value="true">
								Si
								<span class="bmd-radio-check"></span>
							</label>
						</div>
					</div>
					<div class="col-md-1">
						<div class="radio bmd-radio">
							<label>
								<input class="bmd-radio-input bmd-ripple bmd-ink-gray" data-ng-model="profileCtrl.persona.computacion" type="radio" id="rb-computacion" name="rb-computacion" value="false" data-ng-init="profileCtrl.persona.computacion ='false'">
								No
								<span class="bmd-radio-check"></span>
							</label>
						</div>
					</div>
					<div class="col-md-4" data-ng-show="profileCtrl.persona.computacion=='true'">
						<div class="form-group">
							<label class="col-md-2">Nivel:</label>
							<div class="col-md-6">
								<select id="sel-nivel-computacion" class="form-control" data-ng-model="profileCtrl.persona.nivelComputacionId">
									<option data-ng-repeat="nivel in profileCtrl.niveles" value="{{nivel.nivelId}}">{{nivel.descripcion}}</option>
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
			<h4>Informaci�n Adicional</h4>
		</div>
		<div class="panel-body">
			<div class="row">
				<div class="form-group">
					<label  class="col-md-3 control-label">�Ha trabajado en la APCI?</label>
					<div class="col-md-1">
						<div class="radio bmd-radio">
							<label>
								<input class="bmd-radio-input bmd-ripple bmd-ink-gray" type="radio" id="rb-trabaja-apci" data-ng-model="profileCtrl.persona.trabajoEnAPCI" name="rb-trabaja-apci" value="true">
								Si
								<span class="bmd-radio-check"></span>
							</label>
						</div>
					</div>
					<div class="col-md-1">
						<div class="radio bmd-radio">
							<label>
								<input class="bmd-radio-input bmd-ripple bmd-ink-gray" type="radio" id="rb-trabaja-apci" data-ng-model="profileCtrl.persona.trabajoEnAPCI" name="rb-trabaja-apci" value="false" data-ng-init="profileCtrl.persona.trabajoEnAPCI ='false'">
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
								<input class="bmd-radio-input bmd-ripple bmd-ink-gray" type="radio" id="rb-familiares-apci" data-ng-model="profileCtrl.persona.familiaresEnAPCI" name="rb-familiares-apci" value="true">
								Si
								<span class="bmd-radio-check"></span>
							</label>
						</div>
					</div>
					<div class="col-md-1">
						<div class="radio bmd-radio">
							<label>
								<input class="bmd-radio-input bmd-ripple bmd-ink-gray" type="radio" id="rb-familiares-apci" data-ng-model="profileCtrl.persona.familiaresEnAPCI" name="rb-familiares-apci" value="false" data-ng-init="profileCtrl.persona.familiaresEnAPCI ='false'">
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
								<input class="bmd-radio-input bmd-ripple bmd-ink-gray" data-ng-model="profileCtrl.persona.directivoONGD_ENIEX" type="radio" id="rb-ong" name="rb-ong" value="true">
								Si
								<span class="bmd-radio-check"></span>
							</label>
						</div>
					</div>
					<div class="col-md-1">
						<div class="radio bmd-radio">
							<label>
								<input class="bmd-radio-input bmd-ripple bmd-ink-gray" data-ng-model="profileCtrl.persona.directivoONGD_ENIEX" type="radio" id="rb-ong" name="rb-ong" value="false" data-ng-init="profileCtrl.persona.directivoONGD_ENIEX ='false'">
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
								<input class="bmd-radio-input bmd-ripple bmd-ink-gray" data-ng-model="profileCtrl.persona.fueDirectivoONGD_ENIEX" type="radio" id="rb-fue-ong" name="rb-fue-ong" value="true">
								Si
								<span class="bmd-radio-check"></span>
							</label>
						</div>
					</div>
					<div class="col-md-1">
						<div class="radio bmd-radio">
							<label>
								<input class="bmd-radio-input bmd-ripple bmd-ink-gray" data-ng-model="profileCtrl.persona.fueDirectivoONGD_ENIEX" type="radio" id="rb-fue-ong" name="rb-fue-ong" value="false" data-ng-init="profileCtrl.persona.fueDirectivoONGD_ENIEX ='false'">
								No
								<span class="bmd-radio-check"></span>
							</label>
						</div>
					</div>
				</div>	
			</div>		
		</div>
	</div>

	<div class="panel-footer">
		<button class="btn btn-info bmd-floating bmd-ripple" data-ng-click="profileCtrl.actualizar()">
			<i class="fa fa-floppy-o"></i>
			Actualizar
		</button>
	</div>
</div>