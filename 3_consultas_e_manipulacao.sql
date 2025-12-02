-- 3_consultas_e_manipulacao.sql

-- ==========================================================
-- 1. CONSULTAS (SELECT)
-- ==========================================================

-- Consulta A: Listar todos os produtos com seus fornecedores (JOIN)
SELECT p.nome AS Produto, p.preco_unitario, f.razao_social AS Fornecedor
FROM Produto p
JOIN Fornecedor f ON p.id_fornecedor = f.id_fornecedor
ORDER BY p.nome;

-- Consulta B: Listar vendas acima de R$ 100,00 mostrando o nome do cliente
SELECT v.id_venda, v.data_venda, v.valor_total, c.nome_completo
FROM Venda v
JOIN Cliente c ON v.id_cliente = c.id_cliente
WHERE v.valor_total > 100.00;

-- Consulta C: Contar quantos pets cada cliente tem (GROUP BY)
SELECT c.nome_completo, COUNT(p.id_pet) AS total_pets
FROM Cliente c
LEFT JOIN Pet p ON c.id_cliente = p.id_cliente
GROUP BY c.nome_completo;

-- ==========================================================
-- 2. ATUALIZAÇÕES (UPDATE) - Mínimo 3
-- ==========================================================

-- Atualização 1: Aumentar o preço da 'Ração Premium' em 10%
UPDATE Produto
SET preco_unitario = preco_unitario * 1.10
WHERE nome LIKE 'Ração Premium%';

-- Atualização 2: Corrigir o telefone do cliente 'João da Silva'
UPDATE Cliente
SET telefone = '(11) 99999-9999'
WHERE id_cliente = 1;

-- Atualização 3: Atualizar o estoque da 'Bola de Borracha' após uma conferência
UPDATE Produto
SET qtd_estoque = 48
WHERE id_produto = 2;

-- ==========================================================
-- 3. EXCLUSÕES (DELETE) - Mínimo 3
-- ==========================================================

-- Exclusão 1: Remover o cliente 'Carlos Souza' (que ainda não tem compras nem pets)
DELETE FROM Cliente
WHERE nome_completo = 'Carlos Souza';

-- Exclusão 2: Remover um produto que foi cadastrado errado (Coleira) e nunca foi vendido
DELETE FROM Produto
WHERE nome = 'Coleira Ajustável';

-- Exclusão 3: Remover a categoria 'Acessórios' (agora que está vazia)
DELETE FROM Categoria
WHERE nome_categoria = 'Acessórios';
