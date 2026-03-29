-- Query 1 - Relatório detalhado

SELECT clientes.nome,
pedidos.produto,
pedidos.quantidade * pedidos.preco AS total_venda
FROM pedidos
JOIN clientes ON pedidos.cliente_id = clientes.id;

-- Query 2 - Total gasto por cliente

SELECT clientes.nome,
SUM (pedidos.quantidade * pedidos.preco) AS total_gasto
FROM pedidos
JOIN clientes ON pedidos.cliente_id = clientes.id
GROUP BY clientes.nome
ORDER BY total_gasto DESC;

-- Query 3 - Faturamento por produto

SELECT produto,
SUM (quantidade * preco) AS total_faturado
FROM pedidos
GROUP BY produto
ORDER BY total_faturado DESC;