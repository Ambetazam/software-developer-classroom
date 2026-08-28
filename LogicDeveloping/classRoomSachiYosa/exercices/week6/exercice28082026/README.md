#Review for the assessment and exercice on java to practice knowledge.
##Exercice:

	' Issue: LOG-036
	' Title: Modulo de Encuestas de Satisfaccion al Cliente (CSAT)
	' Description: El departamento de servicio al cliente necesita tabular encuestas. Construye un algoritmo Java que:

		1. Inicio Un cliclo de captura de encuestas.
		2. Muestre un menu switch: 
			'Evalue el servicio: 1. Excelente, 2. Regular, 3. Malo, 4. Terminar encuestas'.
		3. Vaya contando cuantos votos tiene cada opcion.
		4. Al elegir "Terminar", el programa debe calcular de forma segura(previniendo diision por cero y forzando decimales) el porcentanje exacto de clientes que votaron "Excelente" sobre el total de votantes.
		5. Si el porcentaje de "Excelente" es mayor o igual a 70.0%, imprimir un mensaje condicional: "Meta de satisfaccion alcanzada".

	' Criterios de Aceptacion:
		
		' Switch correctamente encapsulado con break en todos los casos.
		' Casting explicito a (double) en la formula de calculo del porcentaje.
		' Commits secuenciales en Git demostrando el avance: (Ej: Commit del menu base, Commit del calculo estadistico).
