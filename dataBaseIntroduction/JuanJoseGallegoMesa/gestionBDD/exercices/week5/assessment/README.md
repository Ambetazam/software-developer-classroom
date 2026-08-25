profejuanjosegallego@gmail.com
Asunto: Parcial1_Nutresa

Nombres y Apellidos:
Documento:


Imagen con las entidades, primer grafico que genera la plataforma.
Grafica de las tablas.
Pdf generado por la aplicacion.


Caso de estudio: Sistema de ventas para una tienda de camisetas

Una tienda dedicada a la comercialización de camisetas desea desarrollar un sistema de información que permita controlar sus ventas, clientes, productos, proveedores y existencias.

Actualmente, la información se administra mediante diferentes hojas de cálculo. En ellas se repiten datos de clientes, productos y proveedores, algunas cantidades de inventario no coinciden con las ventas realizadas y resulta difícil determinar qué productos están disponibles o cuál es el estado actual de un pedido.

La tienda comercializa diferentes camisetas. De cada una se registra información como código, nombre, descripción, precio base, marca, categoría y estado. Algunas camisetas dejan de comercializarse temporalmente o salen definitivamente del catálogo.

Los productos pueden ofrecerse en diferentes presentaciones. Por ejemplo, un mismo diseño puede encontrarse en colores negro, blanco, azul o rojo y en tallas S, M, L o XL. No necesariamente todos los diseños están disponibles en todos los colores o tallas. Además, la tienda utiliza códigos de referencia para identificar las diferentes presentaciones que mantiene disponibles y necesita conocer cuántas unidades existen de cada una.

Los clientes deben registrarse antes de realizar una compra. De ellos se almacena su número de documento, nombre completo, teléfono, correo electrónico y dirección.

Cuando un cliente realiza una compra se genera un pedido(Transacción), del cual interesa conocer la fecha, dirección de entrega, valor total y estado. Durante su procesamiento, un pedido puede pasar por estados como pendiente, confirmado, pagado, enviado, entregado o cancelado.

En una misma compra el cliente puede solicitar diferentes productos e incluso varias unidades de una misma referencia. Para efectos de facturación es necesario conservar la cantidad solicitada, el precio aplicado al momento de la venta y el valor correspondiente a cada elemento comprado.

El pago de una compra no siempre se realiza de una sola vez. Algunos clientes realizan un único pago mientras que otros pueden dividirlo en varios. La tienda acepta efectivo, tarjetas, transferencias bancarias y billeteras digitales. De cada transacción interesa registrar la fecha, el valor pagado, el medio utilizado, una referencia de la operación cuando exista y su estado.

La mercancía comercializada por la tienda proviene de diferentes proveedores. De estos se conoce su NIT, nombre, teléfono, correo electrónico y dirección. Un proveedor puede ofrecer distintos productos y algunos productos pueden conseguirse mediante más de un proveedor.

Cuando se requiere reabastecer mercancía, la tienda genera una orden de compra al proveedor seleccionado. La orden registra información como fecha, estado y valor total. En una misma orden pueden solicitarse diferentes referencias, indicando para cada una la cantidad adquirida y el costo unitario negociado en ese momento.

Finalmente, la tienda necesita mantener trazabilidad sobre los cambios de sus existencias. Por esta razón, cada vez que ingresan o salen unidades debe quedar un registro indicando la fecha, cantidad involucrada, motivo del movimiento y una observación opcional. Entre las situaciones que pueden modificar las existencias se encuentran las compras a proveedores, ventas a clientes, devoluciones, ajustes de inventario y productos dañados.

Pistas para el análisis

Preste especial atención a la información que puede repetirse dentro de un mismo proceso, a los datos que dependen de otros datos y a las situaciones en las que un registro puede relacionarse con varios registros de otro tipo. Recuerde que no toda la información descrita en el caso debe quedar almacenada en una sola tabla: algunas relaciones pueden requerir entidades adicionales para evitar redundancia y mantener la integridad de los datos.

Importante: no se establece previamente un número de tablas ni se indican las entidades que deben crearse. Estas deberán surgir del análisis y del proceso de normalización realizado por el equipo. (“Si al finalizar pueden contar las entidades de su modelo con los dedos de las dos manos, probablemente van por buen camino.”)
