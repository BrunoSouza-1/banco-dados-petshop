-- 2_insercao_dados.sql
-- Inserindo Clientes
INSERT INTO Cliente (nome_completo, cpf, telefone, email) VALUES 
('João da Silva', '123.456.789-00', '(11) 99999-1111', 'joao@email.com'),
('Maria Oliveira', '987.654.321-11', '(11) 98888-2222', 'maria@email.com'),
('Carlos Souza', '456.789.123-22', '(21) 97777-3333', 'carlos@email.com');

-- Inserindo Fornecedores
INSERT INTO Fornecedor (razao_social, cnpj, contato) VALUES 
('Distribuidora Pet Ltda', '12.345.678/0001-99', 'contato@distpet.com'),
('Atacado Racoes SA', '98.765.432/0001-88', 'vendas@atacadoracoes.com');

-- Inserindo Categorias
INSERT INTO Categoria (nome_categoria) VALUES 
('Ração'),
('Brinquedo'),
('Higiene'),
('Acessórios');

-- Inserindo Pets
INSERT INTO Pet (nome_pet, raca, porte, data_nascimento, id_cliente) VALUES 
('Rex', 'Labrador', 'Grande', '2020-01-15', 1),
('Mel', 'Poodle', 'Pequeno', '2021-05-20', 2),
('Thor', 'Bulldog', 'Médio', '2019-11-10', 1);

-- Inserindo Produtos
INSERT INTO Produto (nome, descricao, preco_unitario, qtd_estoque, id_categoria, id_fornecedor) VALUES 
('Ração Premium 15kg', 'Ração sabor frango para cães adultos', 150.00, 20, 1, 2),
('Bola de Borracha', 'Brinquedo resistente', 25.50, 50, 2, 1),
('Shampoo Antipulgas', 'Shampoo 500ml', 35.90, 30, 3, 1),
('Coleira Ajustável', 'Coleira vermelha tamanho M', 45.00, 15, 4, 1);

-- Inserindo Vendas (Simulação)
INSERT INTO Venda (data_venda, valor_total, id_cliente) VALUES 
('2025-11-20 10:00:00', 175.50, 1), -- João comprou Ração + Bola
('2025-11-21 15:30:00', 35.90, 2);  -- Maria comprou Shampoo

-- Inserindo Itens da Venda
INSERT INTO Item_Venda (id_venda, id_produto, quantidade, valor_item) VALUES 
(1, 1, 1, 150.00), -- Venda 1: 1 Ração
(1, 2, 1, 25.50),  -- Venda 1: 1 Bola
(2, 3, 1, 35.90);  -- Venda 2: 1 Shampoo
