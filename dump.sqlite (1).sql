-- TABLE
CREATE TABLE clientes (
    ID_cliente INT AUTO_INCREMENT PRIMARY KEY,
    Nome_cliente VARCHAR(255) NOT NULL,
    Endereco VARCHAR(255),
    Pais VARCHAR(255),
    Telefone VARCHAR(15),
    Data_pedido DATE,
    Vendedor VARCHAR(255),
    Regiao VARCHAR(255)
);
CREATE TABLE Enderecos_Franquias (
    ID_franquia INT AUTO_INCREMENT PRIMARY KEY,
    Nome_franquia VARCHAR(255) NOT NULL,
    Endereco VARCHAR(255) NOT NULL,
    Cidade VARCHAR(255) NOT NULL,
    Estado VARCHAR(255) NOT NULL,
    CEP VARCHAR(10) NOT NULL
);
CREATE TABLE faturas (
    ID_cliente INT NOT NULL,
    ID_fatura INT AUTO_INCREMENT PRIMARY KEY,
    Data_pedido DATE,
    SubTotal DECIMAL(10, 2),
    Desconto DECIMAL(10, 2),
    Regiao VARCHAR(255),
    Vendedor VARCHAR(255),
    FOREIGN KEY (ID_cliente) REFERENCES clientes(ID_cliente)
);
CREATE TABLE folha_de_pagamento (
    ID_funcionario INT,
    Data DATE,
    Salario DECIMAL(10, 2),
    Deducoes DECIMAL(10, 2),
    Total_pago DECIMAL(10, 2)
);
CREATE TABLE Fornecedores (
    ID_fornecedor INT AUTO_INCREMENT PRIMARY KEY,
    Empresa VARCHAR(255) NOT NULL,
    CNPJ VARCHAR(18) NOT NULL,
    ID_produto INT,
    Nome_produto VARCHAR(255),
    Categoria_produto VARCHAR(255),
    FOREIGN KEY (ID_produto) REFERENCES produto(ID_produto)
);
CREATE TABLE Funcionarios (
    ID_funcionario INT AUTO_INCREMENT PRIMARY KEY,
    Nome_funcionario VARCHAR(255) NOT NULL,
    Endereco VARCHAR(255),
    Pais VARCHAR(255),
    Telefone VARCHAR(15),
    Regiao VARCHAR(255)
);
CREATE TABLE Gastos (
    ID_gasto INT AUTO_INCREMENT PRIMARY KEY,
    Produtos DECIMAL(10, 2),
    Infraestrutura DECIMAL(10, 2),
    Fornecedores DECIMAL(10, 2)
);
CREATE TABLE Itens_de_linha (
    ID_fatura INT NOT NULL,
    ID_produto INT NOT NULL,
    Preco_unitario DECIMAL(10, 2),
    Quantidade INT,
    PRIMARY KEY (ID_fatura, ID_produto),
    FOREIGN KEY (ID_fatura) REFERENCES faturas(ID_fatura),
    FOREIGN KEY (ID_produto) REFERENCES produto(ID_produto)
);
CREATE TABLE Login (
    ID_pedido INT AUTO_INCREMENT PRIMARY KEY,
    Nome_e_telefone VARCHAR(255),
    Forma_de_pagamento VARCHAR(255),
    Endereco VARCHAR(255)
);
CREATE TABLE Lucros (
    ID_lucro INT AUTO_INCREMENT PRIMARY KEY,
    Data DATE,
    Categoria VARCHAR(255),
    Valor DECIMAL(10, 2),
    Descricao TEXT
);
CREATE TABLE produto (
    ID_produto INT AUTO_INCREMENT PRIMARY KEY,
    Categoria VARCHAR(255),
    Preco DECIMAL(10, 2),
    Quantidade INT,
    Nome_produto VARCHAR(255),
    Estoque VARCHAR(255),
    Vencimento DATE
);
 
-- INDEX
 
-- TRIGGER
 
-- VIEW
 
