CREATE DATABASE ecommerce_db;
USE ecommerce_db;
CREATE TABLE clientes (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    endereco VARCHAR(200) NOT NULL,
    email VARCHAR(100) NOT NULL,
    celular VARCHAR(20) NOT NULL,
    data_nascimento DATE NOT NULL
);
CREATE TABLE produtos (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    preco DECIMAL(10, 2) NOT NULL,
    descricao TEXT,
    quantidade_estoque INT NOT NULL
);
CREATE TABLE pedidos (
    numero_pedido INT AUTO_INCREMENT PRIMARY KEY,
    id_cliente INT,
    data_compra DATE NOT NULL,
    valor_total DECIMAL(10, 2) NOT NULL,
    data_entrega_estimada DATE NOT NULL,
    FOREIGN KEY (id_cliente) REFERENCES clientes(id)
);
CREATE TABLE itens_pedido (
    id INT AUTO_INCREMENT PRIMARY KEY,
    id_pedido INT,
    id_produto INT,
    quantidade INT NOT NULL,
    valor_unitario DECIMAL(10, 2) NOT NULL,
    valor_total_item DECIMAL(10, 2) NOT NULL,
    FOREIGN KEY (id_pedido) REFERENCES pedidos(numero_pedido),
    FOREIGN KEY (id_produto) REFERENCES produtos(id)
);
