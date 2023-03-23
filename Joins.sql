--- Joins de informacion importante para estas tablas

--- INNER JOIN para obtener informaci�n de ventas y clientes
SELECT Ventas.*, Clientes.nombre, Clientes.apellido
FROM Ventas
INNER JOIN Clientes
ON Ventas.id_cliente = Clientes.id_cliente;

--- Combina la informaci�n de las tablas "Ventas" y "Clientes" para mostrar los detalles de cada venta y el nombre y apellido del cliente que realiz� la compra.

--- LEFT JOIN para obtener informaci�n de productos y detalles de pedido
SELECT Productos.*, Detalles_Pedido.cantidad
FROM Productos
LEFT JOIN Detalles_Pedido
ON Productos.id_producto = Detalles_Pedido.id_producto;

--- Combina la informaci�n de las tablas "Productos" y "Detalles_Pedido" para mostrar los detalles de cada producto y la cantidad que se pidieron.
--- Con LEFT JOIN, todos los productos se mostrar�n, incluso si no han sido pedidos.

--- INNER JOIN para obtener informaci�n de pedidos y clientes
SELECT Pedidos.*, Clientes.nombre, Clientes.apellido
FROM Pedidos
INNER JOIN Clientes
ON Pedidos.id_cliente = Clientes.id_cliente
WHERE Pedidos.estado_pedido = 'En proceso';

--- Combina la informaci�n de las tablas "Pedidos" y "Clientes" para mostrar los detalles de cada pedido, el nombre y apellido del cliente que realiz� el pedido.
--- Adem�s, se utiliza una cl�usula WHERE para mostrar s�lo los pedidos que se encuentran en proceso.