The First Assesment of Three to demonstrate my learning journey about Logic in Software Developing.

Activity Description:

'''
Especificaciones de los retos, para el entregable: Diagrama de Flujo del Algoritmo: Representación gráfica en herramienta digital, respetando las figuras normativas (óvalos, paralelogramos, rectángulos). Diccionario/Identificación de Variables: Listado explícito de qué datos son constantes, cuáles son de entrada (y su tipo de dato), y cuáles son variables de salida. Código en Pseudocódigo: Implementación aplicando los principios de Clean Code. Evidencia de Prueba de Escritorio: Tabla con la traza de ejecución manual usando los datos de prueba suministrados en los criterios de aceptación. Proyecto El proyecto se requiere la gestión de una base de datos para almacenar información. La interfaz de usuario debe ser intuitiva y fácil de navegar. La lógica de programación se utiliza para implementar las reglas de negocio y garantizar la consistencia de los datos. Objetivo integrador Desarrollar un sistema, integrando las materias de Gestión de Bases de Datos, Introducción a la Programación y Lógica de Programación. Lógica de Programación La Lógica de Programación apoya el proyecto implementando las reglas de negocio y garantizando la consistencia de los datos, utilizando la lógica de programación para validar los datos y realizar cálculos.
'''

I decided to make the third activity, so there's a good starting point to challenge my critic and logic thinking.
Then I choose to present in the assesment the activity number 3; because I feel very good working on it when I looked over the task.
Few years ago I worked on logistics and this particular exercice is a peace of the real world experience you may find out there as a developer.
Desafio 3: Viabilidad de Pedido Mayorista Complejo
Issue: CAT-003
Title: Evaluacion Booleana multicondicional para despacho mayorista.
Description: Un cliente corporativo intenta realizar un pedido masivo desde el catalogo. Antes de insertar el registro en la base de datos, la logica de programacion debe validar si el pedido es tecnica y financieramente viable.

El algoritmo solicitará:

1. Precio unitario del producto seleccionado.
2. Peso en kilogramos de una unidad del producto.
3. Cantidad de unidades solicitadas por el cliente.
4. Saldo a favor disponible en la cuenta del cliente.

El sistema debe determinar y almacenar en una variable lógica (esPedidoViable) si el
pedido se puede despachar (Verdadero o Falso). Las reglas de negocio exigen que
para que sea viable, deben cumplirse todas estas condiciones simultáneamente:

• La cantidad solicitada debe ser estrictamente mayor a 50 unidades.
• El costo total (precio unitario * cantidad) debe ser menor o igual al saldo
disponible del cliente.
• El peso total del envío (peso unitario * cantidad) no debe superar la capacidad
de la transportadora (Constante global de 750 kg).
Criterios de Aceptación:
• La evaluación lógica debe resolverse en una sola instrucción de proceso (una
sola línea de asignación para esPedidoViable), utilizando los operadores
lógicos Y con la jerarquía de paréntesis correcta para separar cada una de las
tres validaciones.

Datos para Prueba de Escritorio (Validación de fracaso por peso):

Precio = $1,000
Peso Unidad = 15kg
Cantidad = 60
Saldo Cliente = $100,000.

Explicación para revisión:

La cantidad es > 50 (Verdadero)
Costo total es $60,000 que es <= $100,000 (Verdadero)
Peso total es 900kg que supera los 750kg permitidos (Falso).

El resultado final en pantalla debe ser Falso.
