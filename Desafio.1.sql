--> 1) Crie uma tabela chamada funcionarios com as seguintes colunas: id (int, chave primária), nome (varchar(100)), departamento (varchar(100)) e salario (float).
CREATE TABLE tabela_funcionarios (
  ID INT PRIMARY KEY,
  nome VARCHAR (100),
  departamento VARCHAR (100),
  salario FLOAT 
  );
  
  --> continuação da 1: Em seguida, insira os registros de funcionários na tabela.
  insert into tabela_funcionarios(
    ID, nome, departamento, salario
    )
   VALUES 
   ('1', 'Heitor Vieira', 'Financeiro', 4959.22),
   ('2', 'Daniel Campos', 'Vendas', 3884.44),
   ('3', 'Luiza Dias', 'TI', 8205.78),
   ('4', 'Davi Lucas Moraes', 'Financeiro', 8437.02),
   ('5', 'Pietro Cavalcanti', 'TI', 4946.88),
   ('6', 'Evelyn da Mata', 'Vendas', 6101.88),
   ('7', 'Isabella Rocha', 'Marketing', 4006.03),
   ('8', 'Manuela Azevedo', 'Vendas', 6101.88),
   ('9', 'Brenda Cardoso', 'TI', 8853.34),
   ('10', 'Daniel Souza', 'TI', 8242.14);
   
  --> 2) Selecione todos os campos de todos os registros na tabela funcionarios.
  SELECT * FROM tabela_funcionarios;
   
   --> 3) Na tabela funcionarios, selecione os nomes dos funcionários que trabalham no departamento de "Vendas".
   SELECT * FROM tabela_funcionarios 
   WHERE departamento = 'Vendas';
   
   --> 4) Selecione os funcionários da tabela funcionarios cujo salário seja maior que 5000.
   Select * FROM tabela_funcionarios
   WHERE salario > 5000;
   
   --> 5) Na tabela funcionarios, selecione todos os departamentos distintos.
   SELECT DISTINCT departamento from tabela_funcionarios;
   
   --> 6) Atualize o salário dos funcionários do departamento de "TI" para 7500 na tabela funcionarios.
   UPDATE tabela_funcionarios SET salario = 7500 
   WHERE departamento = 'TI';
  
   --> 7) Delete da tabela funcionarios todos os registros de funcionários que ganham menos de 4000.
   DELETE FROM tabela_funcionarios 
   WHERE salario < 4000;
   
   --> 8) Selecione os nomes e salários dos funcionários que trabalham no departamento de "Vendas" e cujo salário seja maior ou igual a 6000.
   SELECT nome FROM tabela_funcionarios
   WHERE departamento = 'Vendas' AND salario >= 6000;
   
   --> 9) Crie uma tabela chamada projetos com as colunas: id_projeto (int, chave primária), nome_projeto (varchar(100)), id_gerente (int, referência a id na tabela funcionarios). Insira 3 registros na tabela projetos e, em seguida, selecione todos os projetos cujo id_gerente seja igual a 2.
   CREATE TABLE projetos (
     id_projeto INT PRIMARY KEY,
     nome_projeto VARCHAR (100),
     id_gerente INT,
     FOREIGN KEY (id_gerente) REFERENCES tabela_funcionarios (ID)
     );
     
     INSERT INTO projetos (id_projeto, nome_projeto, id_gerente
     )
     VALUES 
     ('1', 'Projeto Escala', '4'),
     ('2', 'Projeto Asa', '2'),
     ('3', 'Projeto Aguia', '2');
     
     SELECT * FROM projetos;
     
     SELECT * FROM projetos 
     WHERE id_gerente = '2';
     
     --> 10) Remova a tabela funcionarios do banco de dados.
     DROP TABLE tabela_funcionarios;
     
     
       
     
    