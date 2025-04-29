-- TABLE
CREATE TABLE demo (ID integer primary key, Name varchar(20), Hint text );
CREATE TABLE funcionarios 
(
  ID INT PRIMARY KEY,
  nome VARCHAR (100),
  departamento VARCHAR (100),
  salario FLOAT
);
CREATE TABLE tabelacategorias (
  	ID_Categoria INT PRIMARY KEY,
  		Nome_Categoria VARCHAR (250),
  			Descricao_categoria TEXT
  	);
CREATE TABLE tabelaclientes (
    ID_Cliente INT PRIMARY KEY,
        Nome_Cliente VARCHAR (250),
            Info_de_Contato VARCHAR (250),
  				Endereço_Cliente VARCHAR (250)
    );
CREATE TABLE 'tabelafornecedores' ('ID' INTEGER,'Nome_do_Fornecedor' TEXT,'País_de_Origem' TEXT,'Informações_de_Contato' TEXT,'Data_de_Início' TEXT);
CREATE TABLE 'tabelapedidos' ('ID' INTEGER,'Data_do_Pedido' TEXT,'Status' TEXT,'Total_do_Pedido' REAL,'Cliente' INTEGER,'Data_de_Envio_Estimada' TEXT);
CREATE TABLE tabelapedidosgold
(
  ID_pedido_gold INT PRIMARY KEY,
  Data_do_pedido_gold DATE,
  Status_gold VARCHAR (50),
  Total_do_pedido_gold DECIMAL (10,2),
  Cliente_gold INT,
  Data_de_envio_estimado_gold DATE,
  FOREIGN KEY (cliente_gold) REFERENCES tabelaclientes (id_cliente)
);
CREATE TABLE tabelaprodutos (
  ID_Produto INT PRIMARY KEY,
  	nome_do_produto VARCHAR (250),
  		Descrição TEXT,
  			Categoria INT,
  				Preco_de_compra DECIMAL (10,2),
  			Unidade VARCHAR (50),
  		Fornecedor INT,
  	Data_de_inclusao DATE,
  FOREIGN KEY (Categoria) REFERENCES tabelacategorias (id_categoria),
  FOREIGN KEY (Fornecedor) REFERENCES tabelafornecedores (id)
 );

CREATE TABLE funcionarios 
(
  ID INT PRIMARY KEY,
  nome VARCHAR (100),
  departamento VARCHAR (100),
  salario FLOAT
);
INSERT INTO 
	funcionarios
      (
       id, 
       nome, 
       departamento, 
       salario
      ) 
    
    VALUES
      (1, 'Heitor Vieira', 'Financeiro', 4959.22),
      (2, 'Daniel Campos', 'Vendas', 3884.44),
      (3, 'Luiza Dias', 'TI', 8205.78),
      (4, 'Davi Lucas Moraes', 'Financeiro', 8437.02),
      (5, 'Pietro Cavalcanti', 'TI', 4946.88),
      (6, 'Evelyn da Mata', 'Vendas', 5278.88),
      (7, 'Isabella Rocha', 'Marketing', 4006.03),
      (8, 'Sra. Manuela Azevedo', 'Vendas', 6101.88),
      (9, 'Brenda Cardoso', 'TI', 8853.34),
      (10, 'Danilo Souza', 'TI', 8242.14);
      
-- INDEX
 
-- TRIGGER
 
-- VIEW
 
