Algoritmo ValidarPedidoMayorista

	// Defino las constantes como variables



	Definir CAPACIDAD_TRANSPORTADORA Como Real

	CAPACIDAD_TRANSPORTADORA <- 750



	//Defino las variables para la Entrada de Datos

	Definir precioUnitario, pesoUnitario, saldoCliente Como Real

	Definir cantidad Como Entero

	Escribir 'Precio Unitario:'

	Leer precioUnitario

	Escribir 'Peso Unitario (kg):'

	Leer pesoUnitario

	Escribir 'Cantidad Solicitada:'

	Leer cantidad

	Escribir 'Saldo del Cliente:'

	Leer saldoCliente



	// Variables para: Calcular costo y peso totales (variables auxiliares)

	Definir costoTotal, pesoTotal Como Real

	costoTotal <- precioUnitario*cantidad

	pesoTotal <- pesoUnitario*cantidad



	// A continuacion paso a definir las variables para realizar el proceso de calculo segun las reglas del negocio.

	// Prueba Booleana True or False de acuerdo con los criterios de aceptacion

	// Se debe definir 'As Logic' porque pseint no tiene la opcion booleana explicita

	// Entonces para escribir la sintaxis no se escribe 'and' sino 'y'


	Definir pedidoViable Como Lógico

	pedidoViable <- (cantidad>50) Y (costoTotal<=saldoCliente) Y (pesoTotal<=CAPACIDAD_TRANSPORTADORA)




	// Salida o Output del Algoritmo
	Escribir 'El Pedido es Viable?: ', pedidoViable

FinAlgoritmo
