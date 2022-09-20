-- Criação do banco de dados para o cenário do e-commerce!

CREATE DATABASE ecommerce;
use ecommerce;

-- Criar tabela Cliente
	CREATE TABLE Cliente (
	id_Cliente INT auto_increment primary KEY,
	TipoPessoa  varchar (2) NOT NULL CHECK (TipoPessoa IN('PF', 'PJ')) DEFAULT 'PF',
	Nome VARCHAR(100) NOT NULL,
	Documento VARCHAR(18),
	CONSTRAINT unique_Cliente_Documento UNIQUE (Documento)
    );
    
    
    
    Alter table cliente auto_increment=1;

-- Criar tabela Produto
CREATE TABLE Produto(
	id_produto INT auto_increment primary KEY,
	Nome_Produto varchar(30) not null,
    Classification_kids bool default false,
    Categoria enum('Eletrônico', 'Vestimenta', 'Brinquedos', 'Alimentos', 'Movéis') not null,
    Avaliação float default 0,
    Tamanho varchar (10)
    );
    
    -- para ser continuado no desafio: termine de implementar a tabela e crie a conexão com as tableas necessárias
-- além disso, reflita essa modificação no diagrama de esquema relacional

create table pagamento(
	idClient INT auto_increment,
    idpagamento INT ,
    primary key(idClient, idpagamento),
    TipoPagamento enum('Boleto', 'Cartão', 'Dois cartões'),
    limitAvaiable float
);



-- Criar tabela Pedido 
CREATE TABLE Pedido (
	id_Pedido INT auto_increment primary KEY,
    id_PedidoCliente  int ,
    Descricao_Pedido Varchar (255), -- Compra via aplicativo, compra via website , Loja fisica
    Status_Pedido ENUM ('Cancelado', 'Confirmado', 'Em processamento') default 'Em processamento',
	Frete float default 10, 
    Pagamento bool default false, 
    CONSTRAINT fk_idPedidoCliente foreign key (id_PedidoCliente) references Cliente(id_cliente)
    on update cascade
    );
    

-- Criar tabela Estoque // product storage
CREATE TABLE Estoque (
    id_estoque INT auto_increment primary key,
    Localizacao_Estoque VARCHAR(255) NOT NULL,
    Quantidade INT default 0
);

-- Criar tabela fornecedor = Supplier
CREATE TABLE Fornecedor (
	id_fornecedor INT auto_increment primary KEY,
	RazaoSocial VARCHAR(100) NOT NULL,
	CNPJ char(15) NOT NULL,
    Contato char(11) NOT NULL,
	CONSTRAINT unique_Fornecedor_CNPJ UNIQUE (CNPJ)
	);



-- Criar tabela vendedor - Seller// 
CREATE TABLE Vendedor (
	id_Vendedor INT auto_increment primary key,
	RazaoSocial VARCHAR(100) NOT NULL,
    NomeFantasia VARCHAR(100), -- AbstratName
	CNPJ CHAR(15) NOT NULL,
    CPF CHAR(11) NOT NULL,
    Localizacao VARCHAR(45),
    Contato char(11) NOT NULL,
	CONSTRAINT unique_Vendedor_CNPJ UNIQUE (CNPJ),
	CONSTRAINT unique_Vendedor_CPF UNIQUE (CPF)
);

-- Criar tabela VendedorProduto- ProductSeller
CREATE TABLE ProdutoVendedor(
id_PVendedor INT,
id_Produto INT,
QuantidadeProduto int default 1,
primary key (id_PVendedor, id_Produto),
CONSTRAINT fk_ProdutoVendedor foreign key (id_PVendedor) REFERENCES vendedor(id_Vendedor),
CONSTRAINT fk_produto foreign key (id_produto) REFERENCES produto(id_produto)
);


-- Relacao de Produto com pedido 
CREATE TABLE ProductOrder (
	idPOproduct INT ,
	IdPOorder INT ,
    poQuantity int default 1,
	PoStatus Enum('Disponivel','Sem estoque') default 'Disponivel',
	primary key (idPOproduct, IdPOorder),
    CONSTRAINT fk_ProductOrder_vendedor  FOREIGN KEY (idPOproduct) REFERENCES produto (id_produto),
    CONSTRAINT fk_ProductOrder_produto  FOREIGN KEY (IdPOorder) REFERENCES Pedido (id_pedido)
    	
);

Create table storageLocation (
	idLproduct INT auto_increment, 
    idLstorage int,
    location varchar (255) not null,
    primary key (idLproduct,idLstorage),
	CONSTRAINT fk_storageLocation_product FOREIGN KEY (idLproduct) REFERENCES  Produto(id_Produto),
    CONSTRAINT fk_storageLocation_storage FOREIGN KEY (idLstorage) REFERENCES Estoque(id_Estoque)
       
);

-- Criar tabela Produto/Fornecedor
Create table productSupplier(
	idPsSupplier int,
	idPsProduct int,
	quantidade int not null, 
	primary key (idPsSupplier, idPsProduct),
	CONSTRAINT fk_productSupplier_Supplier FOREIGN KEY (idPsSupplier) REFERENCES  Fornecedor(id_Fornecedor),
	CONSTRAINT fk_productSupplier_Product FOREIGN KEY (idPsProduct) REFERENCES Produto (id_Produto)
     
);


