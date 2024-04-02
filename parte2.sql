USE ecommerce_db;

INSERT INTO clientes (nome, endereco, email, celular, data_nascimento)
VALUES
    ('João Gabriel', 'Rua A, 123', 'joao@email.com', '(11) 99999-1234', '1990-01-15'),
    ('Maria Eduarda', 'Av. B, 456', 'maria@email.com', '(22) 98888-5678', '1985-05-20'),
    ('Pedro Pascal', 'Travessa C, 789', 'pedro@email.com', '(33) 97777-9876', '1978-11-10'),
    ('Ana Banana', 'Rua D, 321', 'ana@email.com', '(44) 96666-6543', '1995-08-25'),
    ('Ednaldo Pereira', 'Av. E, 654', 'ednaldo@email.com', '(55) 94444-7654', '1980-12-05'),
    ('Mariana Squilante', 'Travessa F, 987', 'mariana@email.com', '(66) 93333-8765', '1998-04-30'),
    ('Fernando Azevedo', 'Rua G, 987', 'fernando@email.com', '(77) 92222-3456', '1976-09-15'),
    ('Juliana Bonde', 'Av. H, 741', 'juliana@email.com', '(88) 91111-2345', '1992-02-20'),
    ('Gabriel Oliveira', 'Travessa I, 963', 'gabriel@email.com', '(99) 90000-8765', '1987-06-10'),
    ('Matheus Silva', 'Rua J, 159', 'matheus@email.com', '(10) 98888-8765', '2000-03-12');

INSERT INTO produtos (nome, preco, descricao, quantidade_estoque)
VALUES
    ('Produto A', 50.00, 'Descrição do Produto A', 100),
    ('Produto B', 60.00, 'Descrição do Produto B', 120),
    ('Produto C', 70.00, 'Descrição do Produto C', 140),
    ('Produto D', 80.00, 'Descrição do Produto D', 160),
    ('Produto E', 90.00, 'Descrição do Produto E', 180),
    ('Produto F', 100.00, 'Descrição do Produto F', 200),
    ('Produto G', 110.00, 'Descrição do Produto G', 220),
    ('Produto H', 120.00, 'Descrição do Produto H', 240),
    ('Produto I', 130.00, 'Descrição do Produto I', 260),
    ('Produto J', 140.00, 'Descrição do Produto J', 280);

INSERT INTO pedidos (id_cliente, data_compra, valor_total, data_entrega_estimada)
VALUES
    (1, '2024-03-20', 200.00, '2024-03-30'),
    (2, '2024-03-21', 400.00, '2024-04-05'),
    (3, '2024-03-22', 150.00, '2024-04-01'),
    (4, '2024-03-23', 300.00, '2024-04-10'),
    (5, '2024-03-24', 180.00, '2024-04-03'),
    (6, '2024-03-25', 250.00, '2024-04-07'),
    (7, '2024-03-26', 120.00, '2024-04-05'),
    (8, '2024-03-27', 350.00, '2024-04-12'),
    (9, '2024-03-28', 280.00, '2024-04-08'),
    (10, '2024-03-29', 190.00, '2024-04-04');

INSERT INTO itens_pedido (id_pedido, id_produto, quantidade, valor_unitario, valor_total_item)
VALUES
    (1, 1, 2, 50.00, 100.00),
    (1, 2, 1, 80.00, 80.00),
    (2, 3, 3, 120.00, 360.00),
    (2, 4, 1, 150.00, 150.00),
    (3, 5, 2, 200.00, 400.00),
    (4, 6, 4, 90.00, 360.00),
    (4, 7, 2, 75.00, 150.00),
    (5, 8, 1, 110.00, 110.00),
    (6, 9, 3, 130.00, 390.00),
    (7, 10, 2, 180.00, 360.00);
