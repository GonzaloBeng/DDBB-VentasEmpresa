--- Joins de informacion importante para estas tablas

--- INNER JOIN para obtener información de ventas y clientes
SELECT Ventas.*, Clientes.nombre, Clientes.apellido
FROM Ventas
INNER JOIN Clientes
ON Ventas.id_cliente = Clientes.id_cliente;

--- Combina la información de las tablas "Ventas" y "Clientes" para mostrar los detalles de cada venta y el nombre y apellido del cliente que realizó la compra.

--- LEFT JOIN para obtener información de productos y detalles de pedido
SELECT Productos.*, Detalles_Pedido.cantidad
FROM Productos
LEFT JOIN Detalles_Pedido
ON Productos.id_producto = Detalles_Pedido.id_producto;

--- Combina la información de las tablas "Productos" y "Detalles_Pedido" para mostrar los detalles de cada producto y la cantidad que se pidieron.
--- Con LEFT JOIN, todos los productos se mostrarán, incluso si no han sido pedidos.

--- INNER JOIN para obtener información de pedidos y clientes
SELECT Pedidos.*, Clientes.nombre, Clientes.apellido
FROM Pedidos
INNER JOIN Clientes
ON Pedidos.id_cliente = Clientes.id_cliente
WHERE Pedidos.estado_pedido = 'En proceso';

--- Combina la información de las tablas "Pedidos" y "Clientes" para mostrar los detalles de cada pedido, el nombre y apellido del cliente que realizó el pedido.
--- Además, se utiliza una cláusula WHERE para mostrar sólo los pedidos que se encuentran en proceso.