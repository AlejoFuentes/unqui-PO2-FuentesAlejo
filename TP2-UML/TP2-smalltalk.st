!classDefinition: #EmpresaTest category: 'Obj2-tp1-Ej2'!
TestCase subclass: #EmpresaTest
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Obj2-tp1-Ej2'!

!EmpresaTest methodsFor: 'as yet unclassified' stamp: 'Af 8/22/2025 04:27:33'!
test001_UnaEmpresaTieneUnNombre_UnCUIT_YUnConjuntoDeEmpleados

	| empresa |
	
	empresa := Empresa abrirConNombre: 'Canon' yCuit: 123456.
	
	Assert that: empresa nombre isEqualTo: 'Canon'.
	Assert that: empresa cuit isEqualTo: 123456.
	Assert that: empresa cantidadDeEmpleados isEqualTo: 0.! !

!EmpresaTest methodsFor: 'as yet unclassified' stamp: 'AF 8/29/2025 14:42:24'!
test002_UnEmpleadoTieneUnNombre_UnaDireccion_UnEstadoCivil_FechaDeNacimiento_YSueldoBasico

	| empleado |
	
	empleado := Empleado nuevoConNombre: 'Alejo' de: 'Rivadavia 3244' conEstadoCivil: Soltero conFechaNac: October/15/2004 ySueldoBasico: 1000 * peso.
	
	Assert that: empleado nombre isEqualTo: 'Alejo'.
	Assert that: empleado direccion isEqualTo: 'Rivadavia 3244'.
	Assert isTrue: empleado estáSoltero.
	Assert that: empleado fechaNac isEqualTo: October/15/2004.
	Assert that: empleado sueldoBasico isEqualTo: 1000 * peso.
	Assert that: empleado edad isEqualTo: 21.! !

!EmpresaTest methodsFor: 'as yet unclassified' stamp: 'AF 8/29/2025 14:28:43'!
test003_UnaEmpresaPuedeContratarAUnEmpleadoComoPlantaPermanente

	| empresa empleado |
	
	empresa := Empresa abrirConNombre: 'Canon' yCuit: 123456.
	empleado := Empleado nuevoConNombre: 'Alejo' de: 'Rivadavia 3244' conEstadoCivil: Soltero conFechaNac: October/15/2004 ySueldoBasico: 1000 * peso.
	
	empresa contratar: empleado como: PlantaPermanente.
	
	Assert isTrue: (empresa tieneRegistradoA: empleado).
	Assert isTrue: empleado esDePlantaPermanente.! !

!EmpresaTest methodsFor: 'as yet unclassified' stamp: 'AF 8/29/2025 14:28:40'!
test004_UnaEmpresaPuedeContratarAUnEmpleadoComoPlantaTemporaria

	| empresa empleado |
	
	empresa := Empresa abrirConNombre: 'Canon' yCuit: 123456.
	empleado := Empleado nuevoConNombre: 'Alejo' de: 'Rivadavia 3244' conEstadoCivil: Soltero conFechaNac: October/15/2004 ySueldoBasico: 1000 * peso.
	
	empresa contratar: empleado como: PlantaTemporaria.
	
	Assert isTrue: (empresa tieneRegistradoA: empleado).
	Assert isTrue: empleado esDePlantaTemporaria. ! !

!EmpresaTest methodsFor: 'as yet unclassified' stamp: 'AF 8/29/2025 14:28:35'!
test005_UnEmpleadoDePlantaPermanenteConoceSuAntigüedad

	| empresa empleado |
	
	empresa := Empresa abrirConNombre: 'Canon' yCuit: 123456.
	empleado := Empleado nuevoConNombre: 'Alejo' de: 'Rivadavia 3244' conEstadoCivil: Soltero conFechaNac: October/15/2004 ySueldoBasico: 1000 * peso.
	
	empresa contratar: empleado como: PlantaPermanente.
	empleado clasificacion asignarAntigüedad: 2.
	
	Assert that: empleado antigüedad isEqualTo: 2.! !

!EmpresaTest methodsFor: 'as yet unclassified' stamp: 'AF 8/29/2025 14:28:24'!
test006_UnEmpleadoDePlantaPermanenteConoceSuCantidadDeHijos

	| empresa empleado |
	
	empresa := Empresa abrirConNombre: 'Canon' yCuit: 123456.
	empleado := Empleado nuevoConNombre: 'Alejo' de: 'Rivadavia 3244' conEstadoCivil: Soltero conFechaNac: October/15/2004 ySueldoBasico: 1000 * peso.
	
	empresa contratar: empleado como: PlantaPermanente.
	empleado clasificacion asignarCantidadDeHijos: 3.
	
	Assert that: empleado cantidadDeHijos isEqualTo: 3.! !

!EmpresaTest methodsFor: 'as yet unclassified' stamp: 'AF 8/29/2025 14:28:21'!
test007_UnEmpleadoDePlantaTemporariaConoceSuFechaDeFinDeDesignacionAPlantaTemporaria

	| empresa empleado |
	
	empresa := Empresa abrirConNombre: 'Canon' yCuit: 123456.
	empleado := Empleado nuevoConNombre: 'Alejo' de: 'Rivadavia 3244' conEstadoCivil: Soltero conFechaNac: October/15/2004 ySueldoBasico: 1000 * peso.
	
	empresa contratar: empleado como: PlantaTemporaria.
	empleado clasificacion asignarFechaDeFinDeDesignacion: October/15/2004.
	
	Assert that: empleado fechaFinDesignacion isEqualTo: October/15/2004.! !

!EmpresaTest methodsFor: 'as yet unclassified' stamp: 'AF 8/29/2025 14:28:18'!
test008_UnEmpleadoDePlantaTemporariaConoceSuCantidadDeHorasExtras

	| empresa empleado |
	
	empresa := Empresa abrirConNombre: 'Canon' yCuit: 123456.
	empleado := Empleado nuevoConNombre: 'Alejo' de: 'Rivadavia 3244' conEstadoCivil: Soltero conFechaNac: October/15/2004 ySueldoBasico: 1000 * peso.
	
	empresa contratar: empleado como: PlantaTemporaria.
	empleado clasificacion asignarCantidadDeHorasExtras: 8.
	
	Assert that: empleado cantidadDeHorasExtras isEqualTo: 8.! !

!EmpresaTest methodsFor: 'as yet unclassified' stamp: 'AF 8/29/2025 14:27:56'!
test009_UnEmpleadoDePlantaTemporariaPuedeCalcularSuSueldoBruto

	| empresa empleado |
	
	empresa := Empresa abrirConNombre: 'Canon' yCuit: 123456.
	empleado := Empleado nuevoConNombre: 'Alejo' de: 'Rivadavia 3244' conEstadoCivil: Soltero conFechaNac: October/15/2004 ySueldoBasico: 1000 * peso.
	
	empresa contratar: empleado como: PlantaTemporaria.
	empleado clasificacion asignarCantidadDeHorasExtras: 2.
	
	Assert that: empleado sueldoBruto isEqualTo: 1080 * peso.
	
	! !

!EmpresaTest methodsFor: 'as yet unclassified' stamp: 'AF 8/29/2025 14:43:29'!
test010_UnEmpleadoDePlantaPermanentePuedeCalcularSuSueldoBruto

	| empresa empleado |
	
	empresa := Empresa abrirConNombre: 'Canon' yCuit: 123456.
	empleado := Empleado nuevoConNombre: 'Alejo' de: 'Rivadavia 3244' conEstadoCivil: Casado conFechaNac: October/15/2004 ySueldoBasico: 1000 * peso.
	
	empresa contratar: empleado como: PlantaPermanente.
	empleado clasificacion asignarCantidadDeHijos: 2.
	empleado clasificacion asignarAntigüedad: 3.
	
	Assert that: empleado sueldoBruto isEqualTo: 1550 * peso.
	
	! !

!EmpresaTest methodsFor: 'as yet unclassified' stamp: 'AF 8/29/2025 15:25:27'!
test011_UnEmpleadoDePlantaPermanentePuedeCalcularSusRetenciones

	| empresa empleado |
	
	empresa := Empresa abrirConNombre: 'Canon' yCuit: 123456.
	empleado := Empleado nuevoConNombre: 'Alejo' de: 'Rivadavia 3244' conEstadoCivil: Casado conFechaNac: October/15/2004 ySueldoBasico: 1000 * peso.
	
	empresa contratar: empleado como: PlantaPermanente.
	empleado clasificacion asignarCantidadDeHijos: 2.
	empleado clasificacion asignarAntigüedad: 3.
	Assert that: empleado retenciones isEqualTo: 427.5 * peso.
	
	! !

!EmpresaTest methodsFor: 'as yet unclassified' stamp: 'AF 8/29/2025 15:14:23'!
test012_UnEmpleadoDePlantaTemporariaPuedeCalcularSusRetenciones

	| empresa empleado |
	
	empresa := Empresa abrirConNombre: 'Canon' yCuit: 123456.
	empleado := Empleado nuevoConNombre: 'Alejo' de: 'Rivadavia 3244' conEstadoCivil: Casado conFechaNac: October/15/2004 ySueldoBasico: 1000 * peso.
	
	empresa contratar: empleado como: PlantaTemporaria.
	empleado clasificacion asignarCantidadDeHorasExtras: 2.
	
	Assert that: empleado retenciones isEqualTo: 226 * peso.
	
	! !

!EmpresaTest methodsFor: 'as yet unclassified' stamp: 'AF 8/29/2025 15:24:22'!
test013_UnEmpleadoDePlantaTemporariaPuedeCalcularSuSueldoNeto

	| empresa empleado |
	
	empresa := Empresa abrirConNombre: 'Canon' yCuit: 123456.
	empleado := Empleado nuevoConNombre: 'Alejo' de: 'Rivadavia 3244' conEstadoCivil: Casado conFechaNac: October/15/2004 ySueldoBasico: 1000 * peso.
	
	empresa contratar: empleado como: PlantaTemporaria.
	empleado clasificacion asignarCantidadDeHorasExtras: 2.
	
	Assert that: empleado sueldoNeto isEqualTo: 854 * peso.
	
	! !

!EmpresaTest methodsFor: 'as yet unclassified' stamp: 'AF 8/29/2025 15:28:04'!
test014_UnEmpleadoDePlantaPermanentePuedeCalcularSuSueldoNeto

	| empresa empleado |
	
	empresa := Empresa abrirConNombre: 'Canon' yCuit: 123456.
	empleado := Empleado nuevoConNombre: 'Alejo' de: 'Rivadavia 3244' conEstadoCivil: Casado conFechaNac: October/15/2004 ySueldoBasico: 1000 * peso.
	
	empresa contratar: empleado como: PlantaPermanente.
	empleado clasificacion asignarCantidadDeHijos: 2.
	empleado clasificacion asignarAntigüedad: 3.
	
	Assert that: empleado sueldoNeto isEqualTo: 1122.5 * peso.
	
	! !

!EmpresaTest methodsFor: 'as yet unclassified' stamp: 'AF 8/29/2025 15:58:58'!
test015_UnaEmpresaSabeElMontoTotalDeRetencionesDeSusEmpleados

	| empresa empleado1 empleado2 |
	
	empresa := Empresa abrirConNombre: 'Canon' yCuit: 123456.
	empleado1 := Empleado nuevoConNombre: 'Alejo' de: 'Rivadavia 3244' conEstadoCivil: Casado conFechaNac: October/15/2004 ySueldoBasico: 1000 * peso.
	empleado2 := Empleado nuevoConNombre: 'Nico' de: 'Rivadavia 3243' conEstadoCivil: Soltero conFechaNac: October/14/2004 ySueldoBasico: 1000 * peso.
	
	empresa contratar: empleado1 como: PlantaPermanente.
	empleado1 clasificacion asignarCantidadDeHijos: 2.
	empleado1 clasificacion asignarAntigüedad: 3.
	
	empresa contratar: empleado2 como: PlantaTemporaria.
	empleado2 clasificacion asignarCantidadDeHorasExtras: 2.
	
	Assert that: empresa montoTotalDeRetenciones isEqualTo: (226 * peso) + (427.5 * peso).
	
	! !

!EmpresaTest methodsFor: 'as yet unclassified' stamp: 'AF 8/29/2025 15:51:59'!
test016_UnaEmpresaSabeElMontoTotalDeSueldosBrutosDeSusEmpleados

	| empresa empleado1 empleado2 |
	
	empresa := Empresa abrirConNombre: 'Canon' yCuit: 123456.
	empleado1 := Empleado nuevoConNombre: 'Alejo' de: 'Rivadavia 3244' conEstadoCivil: Casado conFechaNac: October/15/2004 ySueldoBasico: 1000 * peso.
	empleado2 := Empleado nuevoConNombre: 'Nico' de: 'Rivadavia 3243' conEstadoCivil: Soltero conFechaNac: October/14/2004 ySueldoBasico: 1000 * peso.
	
	empresa contratar: empleado1 como: PlantaPermanente.
	empleado1 clasificacion asignarCantidadDeHijos: 2.
	empleado1 clasificacion asignarAntigüedad: 3.
	
	empresa contratar: empleado2 como: PlantaTemporaria.
	empleado2 clasificacion asignarCantidadDeHorasExtras: 2.
	
	Assert that: empresa montoTotalDeSueldosBrutos isEqualTo: (1080 * peso) + (1550 * peso).
	
	! !

!EmpresaTest methodsFor: 'as yet unclassified' stamp: 'AF 8/30/2025 15:55:52'!
test017_UnaEmpresaSabeElMontoTotalDeSueldosNetosDeSusEmpleados

	| empresa empleado1 empleado2 |
	
	empresa := Empresa abrirConNombre: 'Canon' yCuit: 123456.
	empleado1 := Empleado nuevoConNombre: 'Alejo' de: 'Rivadavia 3244' conEstadoCivil: Casado conFechaNac: October/15/2004 ySueldoBasico: 1000 * peso.
	empleado2 := Empleado nuevoConNombre: 'Nico' de: 'Rivadavia 3243' conEstadoCivil: Soltero conFechaNac: October/14/2004 ySueldoBasico: 1000 * peso.
	
	empresa contratar: empleado1 como: PlantaPermanente.
	empleado1 clasificacion asignarCantidadDeHijos: 2.
	empleado1 clasificacion asignarAntigüedad: 3.
	
	empresa contratar: empleado2 como: PlantaTemporaria.
	empleado2 clasificacion asignarCantidadDeHorasExtras: 2.
	
	Assert that: empresa montoTotalDeSueldosNetos isEqualTo: (1122.5 * peso) + (854 * peso).
	
	! !

!EmpresaTest methodsFor: 'as yet unclassified' stamp: 'AF 8/30/2025 15:56:14'!
test018_CuandoUnaEmpresaRealizaLaLiquidacionDeSueldos_SeGuardaUnReciboDeHaberesPorCadaEmpleado

	| empresa empleado1 empleado2 |
	
	empresa := Empresa abrirConNombre: 'Canon' yCuit: 123456.
	empleado1 := Empleado nuevoConNombre: 'Alejo' de: 'Rivadavia 3244' conEstadoCivil: Casado conFechaNac: October/15/2004 ySueldoBasico: 1000 * peso.
	empleado2 := Empleado nuevoConNombre: 'Nico' de: 'Rivadavia 3243' conEstadoCivil: Soltero conFechaNac: October/14/2004 ySueldoBasico: 1000 * peso.
	
	empresa contratar: empleado1 como: PlantaPermanente.
	empleado1 clasificacion asignarCantidadDeHijos: 2.
	empleado1 clasificacion asignarAntigüedad: 3.
	
	empresa contratar: empleado2 como: PlantaTemporaria.
	empleado2 clasificacion asignarCantidadDeHorasExtras: 2.
	
	empresa realizarLiquidacionDeSueldos.
	
	Assert that: empresa cantidadDeRecibos isEqualTo: 2.
	
	! !

!EmpresaTest methodsFor: 'as yet unclassified' stamp: 'AF 8/30/2025 15:46:37'!
test019_UnaEmpresaPuedeContratarAUnEmpleadoComoContratado

	| empresa empleado |
	
	empresa := Empresa abrirConNombre: 'Canon' yCuit: 123456.
	empleado := Empleado nuevoConNombre: 'Alejo' de: 'Rivadavia 3244' conEstadoCivil: Soltero conFechaNac: October/15/2004 ySueldoBasico: 1000 * peso.
	
	empresa contratar: empleado como: Contratado.
	
	Assert isTrue: (empresa tieneRegistradoA: empleado).
	Assert isTrue: empleado esDeContratado.! !

!EmpresaTest methodsFor: 'as yet unclassified' stamp: 'AF 8/30/2025 15:48:17'!
test020_UnEmpleadoContratadoConoceSuNroDeContrato

	| empresa empleado |
	
	empresa := Empresa abrirConNombre: 'Canon' yCuit: 123456.
	empleado := Empleado nuevoConNombre: 'Alejo' de: 'Rivadavia 3244' conEstadoCivil: Soltero conFechaNac: October/15/2004 ySueldoBasico: 1000 * peso.
	
	empresa contratar: empleado como: Contratado.
	empleado clasificacion asignarNroDeContrato: 1.
	
	Assert that: empleado nroDeContrato isEqualTo: 1.! !

!EmpresaTest methodsFor: 'as yet unclassified' stamp: 'AF 8/30/2025 15:50:24'!
test021_UnEmpleadoContratadoConoceSuMedioDePago

	| empresa empleado |
	
	empresa := Empresa abrirConNombre: 'Canon' yCuit: 123456.
	empleado := Empleado nuevoConNombre: 'Alejo' de: 'Rivadavia 3244' conEstadoCivil: Soltero conFechaNac: October/15/2004 ySueldoBasico: 1000 * peso.
	
	empresa contratar: empleado como: Contratado.
	empleado clasificacion asignarMedioDePago: 'Cheque'.
	
	Assert that: empleado medioDePago isEqualTo: 'Cheque'.! !

!EmpresaTest methodsFor: 'as yet unclassified' stamp: 'AF 8/30/2025 15:52:51'!
test022_ElSuedoBrutoDeUnEmpleadoContratadoEsIgualASuSueldoBasico

	| empresa empleado |
	
	empresa := Empresa abrirConNombre: 'Canon' yCuit: 123456.
	empleado := Empleado nuevoConNombre: 'Alejo' de: 'Rivadavia 3244' conEstadoCivil: Soltero conFechaNac: October/15/2004 ySueldoBasico: 1000 * peso.
	
	empresa contratar: empleado como: Contratado.
	
	Assert that: empleado sueldoBruto isEqualTo: empleado sueldoBasico.! !

!EmpresaTest methodsFor: 'as yet unclassified' stamp: 'AF 8/30/2025 15:53:58'!
test023_LasRetencionesDeUnEmpleadoContratadoEsSiempreIgualA50Pesos

	| empresa empleado |
	
	empresa := Empresa abrirConNombre: 'Canon' yCuit: 123456.
	empleado := Empleado nuevoConNombre: 'Alejo' de: 'Rivadavia 3244' conEstadoCivil: Soltero conFechaNac: October/15/2004 ySueldoBasico: 1000 * peso.
	
	empresa contratar: empleado como: Contratado.
	
	Assert that: empleado retenciones isEqualTo: 50 * peso.! !

!EmpresaTest methodsFor: 'as yet unclassified' stamp: 'AF 8/30/2025 15:54:38'!
test024_UnEmpleadoContratadoPuedeCalcularSuSueldoNeto

	| empresa empleado |
	
	empresa := Empresa abrirConNombre: 'Canon' yCuit: 123456.
	empleado := Empleado nuevoConNombre: 'Alejo' de: 'Rivadavia 3244' conEstadoCivil: Soltero conFechaNac: October/15/2004 ySueldoBasico: 1000 * peso.
	
	empresa contratar: empleado como: Contratado.
	
	Assert that: empleado sueldoNeto isEqualTo: 950 * peso.! !


!classDefinition: #Clasificacion category: 'Obj2-tp1-Ej2'!
Object subclass: #Clasificacion
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Obj2-tp1-Ej2'!


!classDefinition: #Contratado category: 'Obj2-tp1-Ej2'!
Clasificacion subclass: #Contratado
	instanceVariableNames: 'nroDeContrato medioDePago'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Obj2-tp1-Ej2'!

!Contratado methodsFor: 'as yet unclassified' stamp: 'AF 8/30/2025 15:50:48'!
asignarMedioDePago: unMedioDePago 
	
	medioDePago := unMedioDePago.! !

!Contratado methodsFor: 'as yet unclassified' stamp: 'AF 8/30/2025 15:48:47'!
asignarNroDeContrato: unNumero 
	
	nroDeContrato := unNumero.! !

!Contratado methodsFor: 'as yet unclassified' stamp: 'AF 8/30/2025 15:54:07'!
calcularRetencionesPara: unEmpleado 
	
	^ 50 * peso.! !

!Contratado methodsFor: 'as yet unclassified' stamp: 'AF 8/30/2025 15:52:45'!
calcularSueldoBrutoPara: unEmpleado 
	
	^ unEmpleado sueldoBasico.! !

!Contratado methodsFor: 'as yet unclassified' stamp: 'AF 8/30/2025 15:46:09'!
esContratado
	
	^ true.! !

!Contratado methodsFor: 'as yet unclassified' stamp: 'AF 8/30/2025 15:51:02'!
medioDePago
	
	^medioDePago! !

!Contratado methodsFor: 'as yet unclassified' stamp: 'AF 8/30/2025 15:49:02'!
nroDeContrato
	
	^nroDeContrato! !


!classDefinition: #PlantaPermanente category: 'Obj2-tp1-Ej2'!
Clasificacion subclass: #PlantaPermanente
	instanceVariableNames: 'cantidadDeHijos antigüedad'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Obj2-tp1-Ej2'!

!PlantaPermanente methodsFor: 'as yet unclassified' stamp: 'AF 8/29/2025 14:11:04'!
antigüedad
	
	^antigüedad! !

!PlantaPermanente methodsFor: 'as yet unclassified' stamp: 'AF 8/29/2025 15:17:23'!
aportesJubilatoriosPara: unEmpleado 
	
	^ (cantidadDeHijos * 20 * peso).! !

!PlantaPermanente methodsFor: 'as yet unclassified' stamp: 'AF 8/29/2025 14:10:34'!
asignarAntigüedad: unaCantidad 
	
	antigüedad := unaCantidad.
	! !

!PlantaPermanente methodsFor: 'as yet unclassified' stamp: 'AF 8/29/2025 14:07:57'!
asignarCantidadDeHijos: unaCantidad 
	
	cantidadDeHijos := unaCantidad.! !

!PlantaPermanente methodsFor: 'as yet unclassified' stamp: 'AF 8/29/2025 15:18:52'!
calcularRetencionesPara: unEmpleado 
	
	^ (unEmpleado montoPorObraSocial) + (unEmpleado sueldoBruto * 0.15) + (self aportesJubilatoriosPara: unEmpleado).! !

!PlantaPermanente methodsFor: 'as yet unclassified' stamp: 'AF 8/29/2025 14:40:52'!
calcularSueldoBrutoPara: unEmpleado 
	
	^ (unEmpleado sueldoBasico) + (cantidadDeHijos * 150 * peso) + (antigüedad * 50 * peso) + (unEmpleado asignacionPorConyuge).! !

!PlantaPermanente methodsFor: 'as yet unclassified' stamp: 'AF 8/29/2025 13:58:11'!
cantidadDeHijos 

	^ cantidadDeHijos.! !

!PlantaPermanente methodsFor: 'as yet unclassified' stamp: 'AF 8/29/2025 14:01:18'!
esPlantaPermanente
	
	^ true.! !

!PlantaPermanente methodsFor: 'as yet unclassified' stamp: 'AF 8/29/2025 14:05:49'!
initialize 

	cantidadDeHijos := 0.
	antigüedad := 0.
	! !


!classDefinition: #PlantaTemporaria category: 'Obj2-tp1-Ej2'!
Clasificacion subclass: #PlantaTemporaria
	instanceVariableNames: 'fechaFinDesignacion cantidadHorasExtras'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Obj2-tp1-Ej2'!

!PlantaTemporaria methodsFor: 'as yet unclassified' stamp: 'AF 8/29/2025 15:14:06'!
aportesJubilatoriosPara: unEmpleado 
	
	^ (unEmpleado sueldoBruto * 0.1) + (cantidadHorasExtras * 5 * peso).! !

!PlantaTemporaria methodsFor: 'as yet unclassified' stamp: 'AF 8/29/2025 14:19:12'!
asignarCantidadDeHorasExtras: unaCantidad 
	
	cantidadHorasExtras := unaCantidad.! !

!PlantaTemporaria methodsFor: 'as yet unclassified' stamp: 'AF 8/29/2025 14:13:20'!
asignarFechaDeFinDeDesignacion: unaFecha 
	
	fechaFinDesignacion := unaFecha.! !

!PlantaTemporaria methodsFor: 'as yet unclassified' stamp: 'AF 8/29/2025 15:19:06'!
calcularRetencionesPara: unEmpleado 
	
	^ (unEmpleado montoPorObraSocial) + (unEmpleado retencionPorEdad) + (self aportesJubilatoriosPara: unEmpleado).! !

!PlantaTemporaria methodsFor: 'as yet unclassified' stamp: 'AF 8/29/2025 14:33:36'!
calcularSueldoBrutoPara: unEmpleado 
	
	^ (unEmpleado sueldoBasico) + (cantidadHorasExtras * 40 * peso)! !

!PlantaTemporaria methodsFor: 'as yet unclassified' stamp: 'AF 8/29/2025 14:19:45'!
cantidadDeHorasExtras
	
	^ cantidadHorasExtras.! !

!PlantaTemporaria methodsFor: 'as yet unclassified' stamp: 'AF 8/29/2025 14:02:04'!
esPlantaTemporaria
	
	^ true.! !

!PlantaTemporaria methodsFor: 'as yet unclassified' stamp: 'AF 8/29/2025 14:14:49'!
fechaFinDesignacion
	
	^fechaFinDesignacion! !

!PlantaTemporaria methodsFor: 'as yet unclassified' stamp: 'AF 8/29/2025 14:06:46'!
initialize

	fechaFinDesignacion := Date today.
	cantidadHorasExtras := 0.! !


!classDefinition: #Empleado category: 'Obj2-tp1-Ej2'!
Object subclass: #Empleado
	instanceVariableNames: 'nombre direccion estadoCivil fechaNac sueldoBasico clasificacion'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Obj2-tp1-Ej2'!

!Empleado methodsFor: 'as yet unclassified' stamp: 'AF 8/29/2025 14:10:56'!
antigüedad
	
	self asertarQueEsDePlantaPermanente.
	
	^ clasificacion antigüedad.! !

!Empleado methodsFor: 'as yet unclassified' stamp: 'AF 8/29/2025 14:03:15'!
asertarQueEsDePlantaPermanente
	
	^ self require: (clasificacion esPlantaPermanente) otherwiseReport: 'El empleado no es de planta permanente'.! !

!Empleado methodsFor: 'as yet unclassified' stamp: 'AF 8/29/2025 14:14:44'!
asertarQueEsDePlantaTemporaria
	
	^ self require: clasificacion esPlantaTemporaria otherwiseReport: 'El empleado no es de planta Temporaria'.! !

!Empleado methodsFor: 'as yet unclassified' stamp: 'AF 8/29/2025 14:40:30'!
asignacionPorConyuge
	
	^ estadoCivil asignacionConyuge.! !

!Empleado methodsFor: 'as yet unclassified' stamp: 'AF 8/29/2025 13:56:17'!
cantidadDeHijos
	
	self asertarQueEsDePlantaPermanente.
	 
	^ clasificacion cantidadDeHijos.! !

!Empleado methodsFor: 'as yet unclassified' stamp: 'AF 8/29/2025 14:19:37'!
cantidadDeHorasExtras
	
	self asertarQueEsDePlantaTemporaria.
	
	^ clasificacion cantidadDeHorasExtras.! !

!Empleado methodsFor: 'as yet unclassified' stamp: 'AF 8/29/2025 13:47:14'!
clasificacion
	
	^ clasificacion.! !

!Empleado methodsFor: 'as yet unclassified' stamp: 'AF 8/29/2025 13:21:47'!
direccion
	
	^direccion! !

!Empleado methodsFor: 'as yet unclassified' stamp: 'AF 8/29/2025 13:27:51'!
edad
	
	^ (Date today yearNumber) - (fechaNac year number).! !

!Empleado methodsFor: 'as yet unclassified' stamp: 'AF 8/30/2025 15:46:01'!
esDeContratado
	
	^ clasificacion esContratado.! !

!Empleado methodsFor: 'as yet unclassified' stamp: 'AF 8/29/2025 14:01:11'!
esDePlantaPermanente
	
	^ clasificacion esPlantaPermanente.! !

!Empleado methodsFor: 'as yet unclassified' stamp: 'AF 8/29/2025 14:01:55'!
esDePlantaTemporaria
	
	^ clasificacion esPlantaTemporaria.! !

!Empleado methodsFor: 'as yet unclassified' stamp: 'AF 8/29/2025 13:21:52'!
estadoCivil
	
	^estadoCivil! !

!Empleado methodsFor: 'as yet unclassified' stamp: 'AF 8/29/2025 14:42:39'!
estáSoltero
	
	^ estadoCivil esSoltero! !

!Empleado methodsFor: 'as yet unclassified' stamp: 'AF 8/29/2025 14:13:58'!
fechaFinDesignacion
	
	self asertarQueEsDePlantaTemporaria.
	
	^ clasificacion fechaFinDesignacion.! !

!Empleado methodsFor: 'as yet unclassified' stamp: 'AF 8/29/2025 13:21:56'!
fechaNac
	
	^fechaNac! !

!Empleado methodsFor: 'as yet unclassified' stamp: 'AF 8/29/2025 14:41:51'!
inicializarCon: unNombre de: unaDireccion conEstadoCivil: unEstado conFecha: unaFecha ySueldoBasico: unSueldo 
	
	nombre := unNombre.
	direccion := unaDireccion.
	estadoCivil := unEstado new.
	fechaNac := unaFecha.
	sueldoBasico := unSueldo. ! !

!Empleado methodsFor: 'as yet unclassified' stamp: 'AF 8/30/2025 15:50:58'!
medioDePago
	
	^ clasificacion medioDePago! !

!Empleado methodsFor: 'as yet unclassified' stamp: 'AF 8/29/2025 15:19:19'!
montoPorObraSocial
	
	^ self sueldoBruto * 10/100.! !

!Empleado methodsFor: 'as yet unclassified' stamp: 'AF 8/29/2025 13:21:42'!
nombre
	
	^nombre! !

!Empleado methodsFor: 'as yet unclassified' stamp: 'AF 8/30/2025 15:48:58'!
nroDeContrato
	
	^ clasificacion nroDeContrato.! !

!Empleado methodsFor: 'as yet unclassified' stamp: 'AF 8/29/2025 14:00:15'!
obtenerClasificacion: unaClasificacion 
	
	clasificacion := unaClasificacion new.! !

!Empleado methodsFor: 'as yet unclassified' stamp: 'AF 8/29/2025 15:13:01'!
retencionPorEdad
	
	^ (self edad >= 50) ifTrue: [25 * peso] ifFalse: [0 * peso].! !

!Empleado methodsFor: 'as yet unclassified' stamp: 'AF 8/29/2025 14:51:31'!
retenciones
	
	^ clasificacion calcularRetencionesPara: self.! !

!Empleado methodsFor: 'as yet unclassified' stamp: 'AF 8/29/2025 13:21:59'!
sueldoBasico
	
	^sueldoBasico! !

!Empleado methodsFor: 'as yet unclassified' stamp: 'AF 8/29/2025 14:32:36'!
sueldoBruto
	
	^ clasificacion calcularSueldoBrutoPara: self.! !

!Empleado methodsFor: 'as yet unclassified' stamp: 'AF 8/29/2025 15:23:35'!
sueldoNeto
	
	^ (self sueldoBruto) - (self retenciones).! !

"-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- "!

!classDefinition: 'Empleado class' category: 'Obj2-tp1-Ej2'!
Empleado class
	instanceVariableNames: ''!

!Empleado class methodsFor: 'as yet unclassified' stamp: 'AF 8/29/2025 13:21:31'!
nuevoConNombre: unNombre de: unaDireccion conEstadoCivil: unEstado conFechaNac: unaFecha ySueldoBasico: unSueldo 
	
	^ self new inicializarCon: unNombre de: unaDireccion conEstadoCivil: unEstado conFecha: unaFecha ySueldoBasico: unSueldo.! !


!classDefinition: #Empresa category: 'Obj2-tp1-Ej2'!
Object subclass: #Empresa
	instanceVariableNames: 'nombre cuit empleados recibosDeHaberes'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Obj2-tp1-Ej2'!

!Empresa methodsFor: 'as yet unclassified' stamp: 'AF 8/29/2025 22:12:29'!
abrirConNombre: unNombre yCuit: unCuit 
	
	nombre := unNombre. 
	cuit := unCuit.
	empleados := Set new.
	recibosDeHaberes := OrderedCollection new.! !

!Empresa methodsFor: 'as yet unclassified' stamp: 'Af 8/22/2025 04:26:56'!
cantidadDeEmpleados
	
	^ empleados size.! !

!Empresa methodsFor: 'as yet unclassified' stamp: 'AF 8/29/2025 22:12:41'!
cantidadDeRecibos
	
	^ recibosDeHaberes size.! !

!Empresa methodsFor: 'as yet unclassified' stamp: 'AF 8/29/2025 13:46:25'!
contratar: empleado como: unaClasificacion 
	
	empleado obtenerClasificacion: unaClasificacion.
	empleados add: empleado.! !

!Empresa methodsFor: 'as yet unclassified' stamp: 'Af 8/22/2025 04:25:54'!
cuit
	
	^cuit! !

!Empresa methodsFor: 'as yet unclassified' stamp: 'AF 8/29/2025 22:13:22'!
generarYguardarReciboDe: unEmpleado 
	
	| reciboDeHaberes |
	
	reciboDeHaberes := ReciboDeHaberes generarPara: unEmpleado.
	recibosDeHaberes add: reciboDeHaberes.! !

!Empresa methodsFor: 'as yet unclassified' stamp: 'AF 8/29/2025 15:53:29'!
montoTotalDeRetenciones
	
	^ (empleados sum: [:empleado | empleado retenciones]).! !

!Empresa methodsFor: 'as yet unclassified' stamp: 'AF 8/29/2025 15:52:23'!
montoTotalDeSueldosBrutos
	
	^ (empleados sum: [:empleado | empleado sueldoBruto]).! !

!Empresa methodsFor: 'as yet unclassified' stamp: 'AF 8/29/2025 15:50:43'!
montoTotalDeSueldosNetos
	
	^ (empleados sum: [:empleado | empleado sueldoNeto]).! !

!Empresa methodsFor: 'as yet unclassified' stamp: 'Af 8/22/2025 04:25:49'!
nombre
	
	^nombre! !

!Empresa methodsFor: 'as yet unclassified' stamp: 'AF 8/29/2025 22:13:22'!
realizarLiquidacionDeSueldos
	
	empleados do: [:empleado | self generarYguardarReciboDe: empleado].! !

!Empresa methodsFor: 'as yet unclassified' stamp: 'AF 8/29/2025 13:30:02'!
tieneRegistradoA: empleado 
	
	^ empleados includes: empleado.! !

"-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- "!

!classDefinition: 'Empresa class' category: 'Obj2-tp1-Ej2'!
Empresa class
	instanceVariableNames: ''!

!Empresa class methodsFor: 'as yet unclassified' stamp: 'Af 8/22/2025 04:25:05'!
abrirConNombre: unNombre yCuit: unCuit 
	
	^ self new abrirConNombre: unNombre yCuit: unCuit.
	! !


!classDefinition: #EstadoCivil category: 'Obj2-tp1-Ej2'!
Object subclass: #EstadoCivil
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Obj2-tp1-Ej2'!


!classDefinition: #Casado category: 'Obj2-tp1-Ej2'!
EstadoCivil subclass: #Casado
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Obj2-tp1-Ej2'!

!Casado methodsFor: 'as yet unclassified' stamp: 'AF 8/29/2025 14:43:00'!
asignacionConyuge
	
	^ 100 * peso.! !

!Casado methodsFor: 'as yet unclassified' stamp: 'AF 8/29/2025 14:43:36'!
esCasado
	
	^ true! !

!Casado methodsFor: 'as yet unclassified' stamp: 'AF 8/29/2025 14:43:42'!
esSoltero
	
	^ false! !


!classDefinition: #Soltero category: 'Obj2-tp1-Ej2'!
EstadoCivil subclass: #Soltero
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Obj2-tp1-Ej2'!

!Soltero methodsFor: 'as yet unclassified' stamp: 'AF 8/29/2025 14:43:23'!
asignacionConyuge
	
	^ 0 * peso.! !

!Soltero methodsFor: 'as yet unclassified' stamp: 'AF 8/29/2025 14:43:55'!
esCasado
	
	^ false! !

!Soltero methodsFor: 'as yet unclassified' stamp: 'AF 8/29/2025 14:42:48'!
esSoltero
	
	^ true! !


!classDefinition: #ReciboDeHaberes category: 'Obj2-tp1-Ej2'!
Object subclass: #ReciboDeHaberes
	instanceVariableNames: 'nombre direccion fechaDeEmision sueldoBruto sueldoNeto retenciones obraSocial'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Obj2-tp1-Ej2'!

!ReciboDeHaberes methodsFor: 'as yet unclassified' stamp: 'AF 8/29/2025 22:11:48'!
inicializarPara: unNombre conDireccion: unaDireccion elDia: unaFecha conSueldoBruto: unSueldoBruto conSueldoNeto: unSueldoNeto conRetenciones: unMonto conObraSocial: otroMonto 
	
	nombre := unNombre.
	direccion := unaDireccion.
	fechaDeEmision := unaFecha.
	sueldoBruto := unSueldoBruto.
	sueldoNeto := unSueldoNeto.
	retenciones := unMonto.
	obraSocial := otroMonto.! !

"-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- "!

!classDefinition: 'ReciboDeHaberes class' category: 'Obj2-tp1-Ej2'!
ReciboDeHaberes class
	instanceVariableNames: ''!

!ReciboDeHaberes class methodsFor: 'as yet unclassified' stamp: 'AF 8/29/2025 22:09:55'!
generarPara: unEmpleado 
	
	^ self new inicializarPara: unEmpleado nombre conDireccion: unEmpleado direccion elDia: Date today conSueldoBruto: unEmpleado sueldoBruto conSueldoNeto: unEmpleado sueldoNeto conRetenciones: unEmpleado retenciones conObraSocial: unEmpleado montoPorObraSocial.! !
