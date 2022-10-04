-- ﻿-------  << TF_2C_luizasantos >>  --------
--
--  	SCRIPT DE POPULA (DML)
--
-- Data Criacao ...........: 28/08/2022
-- Autor(es) ..............: Letícia Karla S. R de Araújo e Luíza Esteves dos Santos 
-- Banco de Dados .........: MySQL 8.0
-- Base de Dados (nome) ...: TF_2C_luizasantos
-- Ultimas Alteracoes
--   09/09/2022 => Inserção de dados em três tabelas novas: atrelado, dependente e tipo_curso
--              => alteração na ordem das tabelas
--   19/09/2022 => Inserção de novos registros em todas as tabelas
--
-- PROJETO => 01 Base de Dados
--         => 42 Tabelas
--
-- ---------------------------------

use TF_2C_luizasantos;

INSERT INTO TIPO_CURSO (descricaoCurso) VALUES    
	('TÉCNICAS DE IMPERMEABILIZAÇÃO DE ESTRUTURAS'),
	('APLICAÇÃO DE REVESTIMENTO CERÂMICO'),
	('ELABORAÇÃO DE ORÇAMENTO DE OBRAS UTILIZANDO SOFTWARE VOLARE'),
	('GESSEIRO'),
	('MANUTENÇÃO PREDIAL'),
    ('GERENCIAMENTO DE EQUIPE'),
    ('GESTÃO EMPRESARIAL'),
    ('MARKETING E VENDAS'),
    ('TÉCNICAS DE REVESTIMENTO'),
    ('MANUTENÇÃO DE IMPERMEABILIZAÇÃO');

INSERT INTO CURSO (codCertificado, dataCurso,codCurso) VALUES 
	(12424, '2008-08-01',1),
	(56754, '2011-11-12',2 ),
	(55677, '2018-02-07',3),
	(98792, '2020-12-10',4),
	(08942, '2021-08-01',5),
    (78567, '2017-02-12',6),
    (09783, '2019-03-04',7),
    (13412, '2021-04-06',8),
    (35378, '2016-05-11',9),
    (89367, '2022-06-07',10);
    
INSERT INTO SETOR (nomeSetor, descricao) VALUES 
	('Setor de Recursos Humanos', 'Visa alinhar os objetivos da empresa com os colaboradores e promover a satisfação profissional.'),
	('Setor de Almoxerifado', 'Setor destinado para a organização da armazenagem em condições adequadas de produtos para uso interno.'),
	('Setor Contábil', 'Setor responsável por administrar finanças e realizar tarefas ligadas diretamente ao dinheiro movimentado no negócio.'),
	('Setor Administrativo', 'Setor que concentra os principais tomadores de decisão, que guiarão os passos do negócio.'),
	('Setor de Logística', 'Setor responsável por coleta documentação e materiais, organizá-los em um veículo para o transporte e entregá-los com agilidade e segurança a seu lugar de destino.'),
	('Setor de Obra', 'Setor que abrange todas as atividades de produção de obras'),
    ('Setor de Finanças', 'Setor que cuida das entradas e saídas de dinheiro'),
    ('Setor de Projetos', 'Setor que gerencia e fiscaliza execução dos projetos'),
    ('Setor de Gerência', 'Fiscaliza atividade de gerente dos setores e projetos'),
    ('Setor Geral', 'Fica a disposição de realizar atividades pendentes');
    
    INSERT INTO FORNECEDOR(cnpjFornecedor, nomeFornecedor, naturezaJuridica, situacaoCadastral, rua, numero, bairro, cidade, estado, cep, complemento) VALUES
		('28306452000115', 'Lux Materiais para Construção', 'SLU', 'Ativa', 'Rua Doutor Gaspar Ricardo', 11, 'Vila dos Lavradores', 'Botucatu', 'SP', 18609055, ''),
        ('71238187000104', 'Teixeira Pisos', 'EIRELI', 'Ativa', 'Rua 1382', 30, 'Santo Antônio', 'Criciúma', 'SC', 88809427, ''),
        ('02633426000108', 'Vaile Mantas', 'EIRELI', 'Ativa', 'Rua Alpha', 18, 'Loteamento Alphaville Residencial', 'Goiânia', 'GO', 74393740, ''),
        ('41561323000131', 'Lusol Materais para a Construção', 'SLU', 'Ativa', 'Quadra QNO', 5, 'Ceilândia Norte', 'Brasília', 'DF', 72251015, 'Conjunto O'),
        ('58628726000153', 'Fudaena Tintas', 'SLU', 'Ativa', 'Quadra SHCES', 1203, 'Cruzeiro Novo', 'Brasília', 'DF', 70658233, 'Bloco C'),
        ('62229031000176', 'Lodil Acabamentos', 'EIRELI', 'Ativa', 'Quadra QNJ', 2, 'Taguatinga Norte', 'Brasília', 'DF', 72140020, ''),
        ('87570239023874', 'Maranta Construções', 'SLU', 'Ativa', 'Rua Alfredo Meireles', 1203, 'Cruzeiro Novo', 'Brasília', 'DF', 70658233, 'Bloco C'),
        ('87342630983740', 'Valina Materiais', 'SLU', 'Ativa', 'Rua Tancredo Soares', 1203, 'Plano Piloto', 'Brasília', 'DF', 70658233, 'Bloco C'),
        ('74892530847692', 'Rodrigues Acabamentos', 'SLU', 'Ativa', 'Rua do Comércio', 1203, 'Cruzeiro Novo', 'Luziânia', 'GO', 72800345),
        ('93485203894727', 'Coliseu das Mantas', 'SLU', 'Ativa', 'Avenida José Marques', 1203, 'Cruzeiro Novo', 'Gama','DF', 70958303);

INSERT INTO INFORMACAO_BANCARIA (numeroBanco, numeroConta, digitoUnico, numeroAgencia)
	VALUES ('001', '1171863', '3', '4267'),
	('237', '1407910', '6', '0707'),
	('341', '72058', '7', '8635'),
	('033', '934941', '4', '3971'),
	('001', '61783', '0', '4345'),
	('033', '48706084', '3', '3739'),
    ('002', '61700', '0', '4345'),
    ('003', '61701', '1', '5555'),
    ('004', '61702', '2', '4343'),
    ('005', '61703', '6', '3632'),
    ('006', '61704', '8', '6321'),
    ('008', '61720', '8', '6321'),
    ('009', '61721', '8', '6321'),
    ('010', '61722', '8', '6321'),
    ('011', '61723', '8', '6321'),
    ('012', '61724', '8', '6321'),
    ('007', '11713', '3', '4267');

INSERT INTO TIPO_EXAME(nomeExame, descricaoExame) VALUES
	('Densiometra Óssea', 'Exame realizado para definir massa óssea em regiões como coluna lombar e fêmur e fazer diagnóstico de osteoporose.'),
	('Audiometria', 'Tem por finalidade avaliar a audição do paciente, identificando sua capacidade para ouvir e interpretar sons.'),
	('Cardiológico', 'Detectar a presença de quaisquer anomalias no coração.'),
	('Hemograma', 'Analisa informações específicas sobre os tipos e quantidades dos componentes no sangue com o intuito de verificar se há alguma alteração no organismo do indivíduo.'),
	('Oftamologista', 'Serve basicamente para avaliar a capacidade visual'),
	('Admissional', 'Objetivo de avaliar as condições de saúde do futuro empregado da empresa'),
    ('Psicológico', 'Avalia condições psicológicas'),
    ('Exame de sangue', 'Avalia possíveis alterações no sangue'),
    ('Exame de colesterol', 'Mede os níveis de colesterol'),
    ('Exame de pressão', 'Serve para avaliar a pressão');

INSERT INTO CLIENTE(cpfCnpjCliente, nomeCliente, rua, numero, bairro, cidade, estado, cep, complemento, formaPagamento) VALUES
	('77196920000151', 'Laboratórios Nova Era', 'Quadra QR', 213, 'Santa Maria', 'Brasília', 'DF', 72543409, 'Conjunto I', 'Boleto'),
    ('87658551082', 'Manuel Thales Fogaça', 'Valparaiso I', 4, 'Etapa E', 'Valparaíso de Goiás', 'GO', 72876520, '', 'Pix'),
    ('17934294000121', 'Mecânica Autêntica', 'Quadra 51 Conjunto A', 51, 'Parque da Barragem Setor 01', 'Águas Lindas de Goiás', 'GO', 72911220, '', 'Crédito'),
    ('03571910052', 'Jennifer Beatriz Rezende', 'Quadra Central', 13, 'Sobradinho', 'Brasília', 'DF', 73010523, 'Apto: 202', 'Débito'),
    ('61344464000100', 'Laboratórios Genuíno', 'Setor Habitacional IAPI', 2, 'Guará II', 'Brasília', 'DF', '71081025', 'Casa 20', 'Pix'),
    ('21719116032', 'Natália Priscila Sophia Lima', 'Quadra SQN 414', 414, 'Asa Norte', 'Brasília', 'DF', 70877060, 'Bloco F', 'Boleto'),
    ('76965876587633', 'Clínica da Saúde', 'Setor Aeroporto', 55, 'Santa Maria', 'Brasília', 'DF', 72543409, 'Conjunto I', 'Boleto'),
    ('09859457640586', 'Restaurante da Casa', 'Avenida Leste', 65, 'Novo Gama', 'Goiás', 'GO', 7234578, 'Lote 33', 'Boleto'),
    ('34345634345', 'Marcos Cândido da Silva', 'Belos Montes', 89, 'Belo Horizonte', 'Minas Gerais', 'MG', 6994502, 'Débito'),
    ('38945708709843', 'Cinemas Lumiere', 'Rua Vicente Pires', 13, 'Luziânia', 'Goiás', 'GO', 70942233, 'Shopping Luziânia', 'Crédito');
    
INSERT INTO clienteTelefone(cpfCnpjCliente, ddd, numero) VALUES
	('77196920000151', 61, 22667970),
    ('87658551082', 62, 994390429),
    ('17934294000121', 62, 991816691),
    ('03571910052', 61, 32281136),
    ('61344464000100', 61, 25531403),
    ('21719116032', 61, 35391468),
    ('76965876587633', 61, 25531403),
    ('09859457640586', 61, 25531403),
    ('34345634345', 22, 990345643),
    ('38945708709843', 61, 993442367);
    
INSERT INTO clienteEmail(cpfCnpjCliente, email) VALUES
	('77196920000151', 'laboratorioEva@email.com'),
    ('87658551082', 'manuelfogaca@email.com'),
    ('17934294000121', 'mecanicaautentica@email.com'),
    ('03571910052', 'jenniferrezende@email.com'),
    ('61344464000100', 'laboratoriosgeunino@email.com'),
    ('21719116032', 'natalialima@email.com'),
	('76965876587633', 'clinicasaude@email.com'),
	('09859457640586', 'restaurantecasa@email.com'),
	('34345634345', 'marcoscandido@email.com'),
	('38945708709843', 'cinemaslumiere@email.com');

INSERT INTO PROPOSTA(cpfCnpjCliente, valorProposta, ferramentaPrototipos)
	VALUES('77196920000151', 1405.66, 'CAD'),
    ('87658551082', 7153.27 , 'CAD'),
    ('17934294000121', 6531.49 , 'CAD'),
    ('03571910052', 3034.23, 'CAD'),
    ('61344464000100', 2692.40 , 'CAD'),
    ('21719116032', 8166.67, 'CAD'),
    ('76965876587633', 12642.40 , 'CAD'),
    ('09859457640586', 12352.40 , 'CAD'),
    ('34345634345', 16543.40 , 'CAD'),
    ('38945708709843', 23345.00 , 'CAD');
    

     
INSERT INTO telefoneFornecedor(cnpjFornecedor, ddd, numero) VALUES
	('28306452000115', 11, 23563876),
    ('71238187000104', 47, 36482858),
    ('02633426000108', 62, 9973727271),
    ('41561323000131', 61, 401828182),
    ('58628726000153', 61, 401829495),
    ('62229031000176', 61, 27381946),
    ('93485203894727', 63, 993849232),
    ('74892530847692', 11, 20043411),
    ('87342630983740', 11, 990334244),
    ('87570239023874', 11, 998703452);
    
    
INSERT INTO emailFornecedor(cnpjFornecedor, email)
	VALUES('28306452000115', 'luxmateriais@email.com'),
    ('71238187000104', 'teixeirapisos@email.com'),
    ('02633426000108', 'vailemantas@email.com'),
    ('41561323000131', 'lusolconstrucao@email.com'),
    ('58628726000153', 'fudaenatintas@email.com'),
    ('62229031000176', 'lodilacabamentos@email.com'),
    ('93485203894727', 'maratanaconstr@email.com'),
    ('74892530847692', 'valinamat@email.com'),
    ('87342630983740', 'rodriguesacab@email.com'),
    ('87570239023874', 'coliseumatias@email.com');
    
    
INSERT INTO informacaoBancariaFornecedor(cnpjFornecedor, numeroBanco, numeroConta)
	VALUES('28306452000115', '007', '11713'),
    ('71238187000104','002', '61700'),
    ('02633426000108', '003', '61701'),
    ('41561323000131', '004', '61702'),
    ('58628726000153', '005', '61703'),
    ('62229031000176', '006', '61704'),
    ('93485203894727', '005', '78903'),
    ('74892530847692', '007', '34524'),
    ('87342630983740', '002', '23456'),
    ('87570239023874', '001', '23986');
    

INSERT INTO MATERIAL (cnpjFornecedor, nomeMaterial, descricao, valorMaterial, quantidadeMaterial) VALUES 
	('28306452000115', 'Chapa de Drywall Standard 1,80x1,20m Branca Placo', 'Se o que você precisa é um material com excelente versatilidade de aplicação para projetar ambientes, a placa Standard atenderá completamente às suas necessidades. É utilizada em ambiente interno e pode ser aplicada em áreas secas.', 38.9, 5),
	('71238187000104', 'Bloco de Concreto Celular Autoclavado 60x30x10cm Sical', 'Os blocos de concreto celular são ótimos isolantes termoacústicos. Seu diferencial é resistência ao fogo, muito utilizados para proteções contra incêndios. Simples de serem serrados e furados para passagem do sistema elétrico e hidráulico.', 13.99, 11),
	('02633426000108', 'Argamassa Porcelanato Interno e Externo Cinza 20kg Axton.', 'A Argamassa Porcelanato e Pedras Naturais Axton é uma argamassa colante especial para pisos e revestimentos tipo porcelanato, pedras naturais, mármore e granito, além disso pode ser utilizada em ambientes internos e externos.', 22.9, 30),
	('41561323000131', 'Argamassa Piso sobre Piso Interno e Externo Cinza 20kg Votoran', 'Argamassa de excelente trabalhabilidade, ideal para assentamento de cerâmicas, porcelanatos, pedras rústicas em áreas internas e externas em pisos e paredes. O produto também é indicado para aplicação sobre gesso acartonado (drywall) e sobreposição em áreas internas e externas.', 30.90, 15),
	('58628726000153', 'Elemento Vazado Cobogó Gulobov Bruto Cinza 30x30x9cm Ecobloco', 'Os elementos vazados cobogós são uma ótima opção para você que está buscando espaços mais demarcados de forma sútil, mas que não interfira na integração dos cômodos e proporcione maior ventilação e iluminação natural para o ambiente.', 22.9, 100),
	('62229031000176', 'Montante em Aço 3mx48mm Placo', 'Perfil metálico utilizado para a estruturação vertical de paredes, revestimentos estruturados e como estrutura horizontal de forros STUD.', 11.23, 22),
    ('93485203894727', 'Calafetador', 'Massa que estimula movimentação da estrutura', 10.92, 67),
    ('74892530847692', 'Emulsão Acrílica', 'Base acrílica', 88.32, 12),
    ('87342630983740', 'Manta asfáltica', 'Coberta nos dois lados por composto asfáltico', 63.67, 22),
    ('87570239023874', 'Piso Vinílico', 'Material para cobrir o revestimento', 4.9, 100);

INSERT INTO TIPO_SERVICO(quantidadeMaterialServico, descricao) VALUES
	(1, 'Impermeabilização Geral'),
    (3, 'Adição de Manta'),
    (6, 'Pintura de superfícies'),
    (7, 'Rebocagem'),
    (9, 'Impermeabilização flexível'),
    (20, 'Impermeabilização rígida'),
    (12, 'Impermeabilização semiflexível'),
    (10, 'Impermeabilização com membrana de poliuterano'),
    (18, 'Emulsão Asfáltica'),
    (10, 'Hidrorrepelente');

INSERT INTO materialTipoServico(codTipoServico, codMaterial) VALUES
	(1, 6),
    (6, 1),
    (2, 5),
    (5, 2),
    (3, 4),
    (4, 3),
    (7, 8),
    (8, 7),
    (9, 9),
    (10, 10);
    
INSERT INTO cnpjFornecedorTipoServico(codTipoServico, cnpjFornecedor)
	VALUES(1, '28306452000115'),
    (2, '71238187000104'),
    (3, '02633426000108'),
    (4, '41561323000131'),
    (5, '58628726000153'),
    (6, '62229031000176'),
    (7, '93485203894727'),
    (8, '74892530847692'),
    (9, '87342630983740'),
    (10, '87570239023874');
    
INSERT INTO PROJETO(codTipoServico, nomeProjeto, descricao, localRealizacao, prazoProjetoDias,valorFinalProjeto,
dtInicio,statusProjeto) VALUES
	(1, 'Projeto Impermeabiliza', 'Impermeabilização X', 'Brasília - DF',90,'498765.22','2020-02-03','Finalizado'),
    (2, 'Projeto Y', 'Adição de Manta Y', 'Brasília - DF',200,'498765.22','2022-06-01','Em andamento'),
    (3, 'Projeto Z', 'Pintura de Superfícies Z', 'Brasília - DF',90,'498765.22','2020-02-03','Cancelado'),
    (4, 'Projeto W', 'Rebocagem W', 'Valparaíso de Goiás - GO',90,'498765.22','2020-02-03','Finalizado'),
    (5, 'Projeto Alfa', 'Emulsão Asfáltica XY', 'Brasília - DF',90,'498765.22','2020-02-03','Finalizado'),
    (6, 'Projeto Beta', 'Hidrorrepelente H', 'Valparaíso de Goiás - GO',90,'498765.22','2020-02-03','Finalizado'),
    (7, 'Projeto Gama', 'Emulsão parque', 'Brasília - DF',90,'498765.22','2021-02-03','Cancelado'),
    (8, 'Projeto Teta', 'Impermeabilização semiflexível', 'Brasília - DF',90,'498765.22','2020-02-03','Finalizado'),
    (9, 'Projeto Pi', 'Emulsão Asfáltica XY', 'Brasília - DF',90,'498765.22','2022-08-03','Em andamento'),
    (10, 'Projeto Código Alfa', 'Impermeabilização com membrana de poliuterano alfa', 'Brasília - DF',90,'498765.22','2022-02-03','Cancelado');

INSERT INTO propostaProjeto(codProjeto, codProposta)
	VALUES(1, 1),
    (2, 2),
    (3, 3),
    (4, 4),
    (5, 5),
    (6, 6),
	(7, 7),
	(8, 8),
	(9, 9),
    (10, 10);

INSERT INTO FUNCIONARIO_INFORMACOES_TRABALHISTA(salarioInicial, salario, gratificacao, valeAlimentacao, valeTransporte, numeroCtps, inscricaoPis)
	VALUES(1212, 1500, 0, 500, 500, '81497848887', '11773490192'),
    (3000.65, 4500.67, 111.13, 500, 500, '46889173344', '67505125184'),
	(2340.78, 3000, 50.24, 500, 500, '20999306035', '70090599187'),
    (1212, 1500, 64.87, 500, 500, '08196624628', '05858004130'),
    (10453.45, 12000, 790.98, 500, 500, '27064333169', '00223187127'),
    (3678.23, 5980.12, 234.87, 500, 500, '17838124008', '71954780171'),
	(3678.23, 5980.12, 234.87, 500, 500, '83247038945', '71954780172'),
	(3678.23, 5980.12, 234.87, 500, 500, '83947520938', '71954780173'),
	(3678.23, 5980.12, 234.87, 500, 500, '23459834452', '71954780174'),
	(3678.23, 5980.12, 234.87, 500, 500, '34523452677', '71954780175'),
    (3678.23, 5980.12, 234.87, 500, 500, '68678564345', '38947039485'),
    (3678.23, 5980.12, 234.87, 500, 500, '45634578797', '02893471204'),
    (3678.23, 5980.12, 234.87, 500, 500, '54365776567', '03894750238'),
    (3678.23, 5980.12, 234.87, 500, 500, '08934752384', '91832740298'),
    (3678.23, 5980.12, 234.87, 500, 500, '83475023945', '93847542394'),
    (3678.23, 5980.12, 234.87, 500, 500, '30498520398', '89347023498'),
    (3678.23, 5980.12, 234.87, 500, 500, '83472378445', '48736952374'),
    (3678.23, 5980.12, 234.87, 500, 500, '65745308497', '01238483473'),
    (3678.23, 5980.12, 234.87, 500, 500, '02384720394', '39842733485'),
    (3678.23, 5980.12, 234.87, 500, 500, '83749378532', '84756934875');

INSERT INTO FUNCIONARIO(cpfCnpjFuncionario, nomeCompleto, numeroRg, estadoRg, numeroTituloEleitor, escolaridade, regimeTrabalho, rua, numero, bairro, cidade, estado, cep, complemento, funcao, codSetor, idInformacaoTrabalhista)
	VALUES('11773490192', 'Heitor Bruno Brito', '170694227', 'DF', '761865720116', 'Ensino Médio', 'CLT', 'Quadra QNQ', 5, 'Ceilândia Norte', 'Brasília', 'DF', 72270510, 'Conjunto 10', 'Servente', 6, 1), 
    ('67505125184', 'Adriana Luzia Luzia Aparício', '388783941', 'DF', '133564320108', 'Ensino Médio', 'CLT', 'Quadra QNL', 30, 'Taguatinga Norte', 'Brasília', 'DF', 72162331, 'Via 31', 'Encarregado de Obra', 6, 2),
    ('70090599187', 'Louise Nicole Milena Novaes', '403752826', 'GO', '866075630116', 'Ensino Superior', 'CLT', 'Quadra CLS 413', 413, 'Asa Sul', 'Brasília', 'DF', 70296500, '', 'Contadora', 3, 3),
    ('05858004130', 'Martin Diego Bernardes', '360711674', 'DF', '581720660108', 'Ensino Fundamental', 'CLT', 'Quadra 10', 20, 'Santa Maria', 'Brasília', 'DF', 72500101, 'Conjunto D', 'Meio oficial', 6, 4),
    ('00223187127', 'Thiago Felipe Roberto da Silva', '449604147', 'GO', '278446580124', 'Ensino Superior', 'CLT', 'Quadra CA 14', 23, 'Lago Norte', 'Brasília', 'DF', 71503514, 'Conjunto A', 'Dono', 4, 5),
    ('71954780176', 'Raul Benício da Cunha', '433445948', 'DF', '721445850132', 'Ensino Médio', 'CLT', 'Quadra QS 6', 11, 'Riacho Fundo II', 'Brasília', 'DF', 71884278, 'Bloco C', 'Almoxerife', 2, 6),
    ('71954780171', 'Marcos Bernardes', '419445922', 'DF', '721445850132', 'Ensino Médio', 'CLT', 'Quadra QS 6', 11, 'Riacho Fundo II', 'Brasília', 'DF', 71884278, 'Bloco C', 'Almoxerife', 2, 7),
    ('71954780172', 'Luiza Benício da Cunha', '419443348', 'DF', '721445850132', 'Ensino Médio', 'CLT', 'Quadra QS 20', 11, 'Riacho Fundo II', 'Brasília', 'DF', 71884278, 'Bloco C', 'Almoxerife', 2, 8),
    ('71954780173', 'Marcos Benício da Cunha', '419445648', 'DF', '721445850132', 'Ensino Médio', 'CLT', 'Quadra QS 19', 11, 'Riacho Fundo II', 'Brasília', 'DF', 71884278, 'Bloco C', 'Almoxerife', 2, 9),
    ('71954780174', 'Pedro Benício da Cunha', '419445988', 'DF', '721445850132', 'Ensino Médio', 'CLT', 'Quadra QS 18', 11, 'Riacho Fundo II', 'Brasília', 'DF', 71884278, 'Bloco C', 'Almoxerife', 2, 10),
	('71954780174', 'Abraão Medeiros Nobre',  '65756h756', 'DF', '721445999132', 'Ensino Médio', 'CLT', 'Quadra QS 16', 11, 'Riacho Fundo II', 'Brasília', 'DF', 71884278, 'Bloco C', 'Almoxerife', 2, 11),
	('71954780174', 'Eduarda Caroline Marciel', '456756757', 'DF', '721466650132', 'Ensino Médio', 'CLT', 'Quadra QS 15', 11, 'Riacho Fundo II', 'Brasília', 'DF', 71884278, 'Bloco C', 'Meio oficial', 2, 12),
	('71954780174', 'Emanuele Braz Mendes', '567456745', 'DF', '721445854442', 'Ensino Médio', 'CLT', 'Quadra QS 14', 11, 'Riacho Fundo II', 'Brasília', 'DF', 71884278, 'Bloco C', 'Meio oficial', 2, 13),
	('71954780174', 'Felipe Alberto Brás', '345656345', 'DF', '721445850444', 'Ensino Médio', 'CLT', 'Quadra QS 13', 11, 'Riacho Fundo II', 'Brasília', 'DF', 71884278, 'Bloco C', 'Almoxerife', 2, 14),
	('71954780174', 'Gabriela Laje Vitoria', '687684676', 'DF', '721445850777', 'Ensino Médio', 'CLT', 'Quadra QS 12', 11, 'Riacho Fundo II', 'Brasília', 'DF', 71884278, 'Bloco C', 'Contador', 2, 15),
	('71954780174', 'Giovana Cunha Silva', '234523452', 'DF', '744445850132', 'Ensino Superior', 'CLT', 'Quadra QS 11', 11, 'Riacho Fundo II', 'Brasília', 'DF', 71884278, 'Bloco C', 'Almoxerife', 2, 16),
	('71954780174', 'Guilherme da Silva', '409384752', 'DF', '725555850132', 'Ensino Superior', 'CLT', 'Quadra QS 10', 11, 'Riacho Fundo II', 'Brasília', 'DF', 71884278, 'Bloco C', 'Contador', 2, 17),
	('71954780174', 'Gustavo Emanoel Sousa', '843089475', 'DF', '726665850132', 'Ensino Médio', 'CLT', 'Quadra QS 9', 11, 'Riacho Fundo II', 'Brasília', 'DF', 71884278, 'Bloco C', 'Meio oficial', 2, 18),
	('71954780174', 'Higor de Azevedo Nascimento', '456457643', 'DF', '721777850132', 'Ensino Médio', 'CLT', 'Quadra QS 8', 11, 'Riacho Fundo II', 'Brasília', 'DF', 71884278, 'Bloco C', 'Almoxerife', 2, 19),
	('71954780174', 'Isabela Chaves da Costa', '657567845', 'DF', '721445899932', 'Ensino Superior', 'CLT', 'Quadra QS 7', 11, 'Riacho Fundo II', 'Brasília', 'DF', 71884278, 'Bloco C', 'Contador', 2, 20);

INSERT INTO DEPENDENTE(nomeDependente, tipoDependencia) VALUES
('Mariana Xavier Bernardes', 'Filha'),
('Paulo Alberto Alves', 'Pai'),
('Ana Carolina Lemos', 'Esposa'),
('José Benício da Cunha', 'Filho'),
('Miguel Carvalho Santana', 'Irmão'),
('Luciana Mendes Brito', 'Filha'),
('Cicero Carvalho Sousa', 'Pai'),
('Maria Amélia Matos', 'Mãe'),
('Cassiana Meneguel da Silva', 'Irmã'),
('Fábio de Souza Matos', 'Filho');

INSERT INTO atrelado(cpfCnpjFuncionario, codDependente) VALUES
('71954780171',1),
('05858004130',2),
('71954780174',4),
('11773490192',3),
('67505125184',5),
('11773490192',6),
('71954780174',7),
('71954780172',8),
('71954780173',9),
('71954780171',10);

INSERT INTO emailFuncionario(cpfCnpjFuncionario, email)
	VALUES('11773490192', 'heitorbrito@email.com'),
    ('67505125184', 'adrianaaparicio@email.com'),
    ('70090599187', 'louisenovaes@email.com'),
    ('05858004130', 'martinbernardes@email.com'),
    ('00223187127', 'thiagosilva@email.com'),
    ('71954780176', 'raulcunha@email.com'),
    ('71954780171', 'marcosbernandes@email.com'),
    ('71954780172', 'luizabenicio@email.com'),
    ('71954780173', 'marcobenicio@email.com'),
    ('71954780174', 'pedrobenicio@email.com');
    
INSERT INTO telefoneFuncionario(cpfCnpjFuncionario, ddd, numero)
	VALUES('11773490192', 61, 23512346),
    ('67505125184', 61, 36987658),
    ('70090599187', 62, 997309771),
    ('05858004130', 61, 401345182),
    ('00223187127', 62, 4012567495),
    ('71954780176', 61, 27864946),
    ('71954780171', 61, 998617832),
    ('71954780172', 61, 987695356),
    ('71954780173', 61, 987579232),
    ('71954780174', 61, 992371474);

INSERT INTO informacaoBancariaFuncionario(cpfCnpjFuncionario, numeroBanco, numeroConta) VALUES
    ('11773490192', '001', '11713'),
    ('70090599187', '237', '14070'),
    ('05858004130', '341', '72058'),
    ('00223187127', '033', '93491'),
    ('71954780176', '001', '61783'),
    ('00223187127', '033', '56753'),
    ('71954780171', '033', '98789'),
    ('71954780172', '033', '56576'),
    ('67505125184', '033', '23453'),
    ('71954780174', '033', '34545');

INSERT INTO cursoFuncionario(cpfCnpjFuncionario, codCurso)
	VALUES('11773490192', 1),
    ('11773490192', 2),
    ('70090599187', 3),
    ('05858004130', 4),
    ('00223187127', 5),
    ('05858004130', 6),
    ('71954780174', 7),
    ('05858004130', 8),
    ('67505125184', 9),
    ('71954780171', 10);

INSERT INTO projetoFuncionario(cpfCnpjFuncionario, codProjeto)
	VALUES('11773490192', 1),
    ('11773490192', 2),
    ('70090599187', 3),
    ('05858004130', 4),
    ('00223187127', 5),
    ('71954780176', 6),
    ('71954780174', 7),
    ('05858004130', 8),
    ('67505125184', 9),
    ('71954780171', 10);
    

INSERT INTO pratica(cpfCnpjFuncionario, codCertificado) VALUES
	('11773490192', 56754),
    ('11773490192', 94822),
    ('70090599187', 98792),
    ('05858004130', 12424),
    ('00223187127', 12424),
    ('71954780176', 48633),
    ('71954780171', 73452),
    ('67505125184', 89878),
    ('05858004130', 92456),
    ('71954780174', 10478);
    
INSERT INTO EXAME(dataExame, codTipoExame, resultadoExame)
	VALUES( '2022-01-08', 1, 'APTO'),
	( '2022-01-08', 2, 'APTO'),
    ( '2021-05-08',3 , 'APTO'),
    ( '2020-01-18', 4, 'APTO'),
    ( '2022-04-05', 5, 'APTO'),
    ('2021-12-02', 6, 'APTO'),
	( '2022-11-09', 7, 'APTO'),
	( '2022-07-05', 8, 'APTO'),
	( '2022-04-06', 9, 'APTO'),
	( '2022-02-01', 10, 'APTO');
    
    INSERT INTO precisa(codExame,cpfCnpjFuncionario) VALUES
    (1,'11773490192' ),
	(2,'11773490192' ),
    (3,'70090599187' ),
    (4,'05858004130' ),
    (5,'00223187127'),
    (6,'71954780176' ),
    (7,'00223187127'),
    (8,'00223187127'),
    (9,'00223187127'),
    (10,'00223187127');

INSERT INTO decimoTerceiro(idInformacaoTrabalhista, anoDecimoTerceiro, valorDecimoTerceiro)
	VALUES(1, '2020', 1000),
    (2, '2020', 1000),
    (3, '2021', 1040),
    (4, '2021', 1230),
    (5, '2022', 2000),
    (6, '2022', 1000),
    (7, '2022', 1000),
    (8, '2022', 1100),
    (9, '2012', 1400),
    (10, '2018', 1000);

INSERT INTO inss(idInformacaoTrabalhista, dataInss, valorInss)
	VALUES(1, '2020-09-10', 400),
    (2, '2020-09-23', 600),
    (3, '2021-09-15', 500),
    (4, '2021-09-07', 800),
    (5, '2022-09-01', 900),
    (6, '2022-09-08', 300),
    (7, '2022-09-01', 900),
    (8, '2022-09-01', 900),
    (9, '2022-09-01', 900),
    (10, '2022-09-01', 900);
    
INSERT INTO fgts(idInformacaoTrabalhista, dataFgts, valorFgts) VALUES
	(1, '2020-09-10', 400),
    (2, '2020-09-23', 600),
    (3, '2021-09-15', 500),
    (4, '2021-09-07', 800),
    (5, '2022-09-01', 900),
    (6, '2022-09-08', 300),
    (7, '2020-09-10', 400),
    (8, '2020-09-10', 400),
    (9, '2020-09-10', 400),
    (10, '2020-09-10', 400);

INSERT INTO ferias(idInformacaoTrabalhista, anoFerias, valorFerias)
	VALUES(1, '2020', 1000),
    (2, '2020', 1000),
    (3, '2021', 1000),
    (4, '2021', 1000),
    (5, '2022', 1000),
    (6, '2022', 1000),
    (8, '2022', 1000),
    (9, '2022', 1000),
    (7, '2022', 1000),
    (10, '2022', 1000);
    
INSERT INTO FUNCIONARIO_OFFSHORE(cpfCnpjFuncionario, tipoFuncionarioOffshore, valor, tipoData)
	VALUES('11773490192', 'Meio oficial',3,'anos'),
	('67505125184', 'Servente',2,'anos'),
    ('70090599187', 'Ipermeabilizador',10,'anos'),
    ('05858004130', 'Encarregado de Obra',7,'meses'),
    ('00223187127', 'Meio oficial',12,'anos'),
    ('71954780174', 'Encarregado de Obra',7,'meses'),
    ('71954780174', 'Encarregado de Obra',7,'meses'),
    ('71954780174', 'Encarregado de Obra',7,'meses'),
    ('71954780174', 'Encarregado de Obra',7,'meses'),
    ('05858004130', 'Encarregado de Obra',7,'meses'),;
    
    
    ('71954780174', 'Abraão Medeiros Nobre',  '65756h756', 'DF', '721445999132', 'Ensino Médio', 'CLT', 'Quadra QS 16', 11, 'Riacho Fundo II', 'Brasília', 'DF', 71884278, 'Bloco C', 'Almoxerife', 2, 11),
	('71954780174', 'Eduarda Caroline Marciel', '456756757', 'DF', '721466650132', 'Ensino Médio', 'CLT', 'Quadra QS 15', 11, 'Riacho Fundo II', 'Brasília', 'DF', 71884278, 'Bloco C', 'Meio oficial', 2, 12),
	('71954780174', 'Emanuele Braz Mendes', '567456745', 'DF', '721445854442', 'Ensino Médio', 'CLT', 'Quadra QS 14', 11, 'Riacho Fundo II', 'Brasília', 'DF', 71884278, 'Bloco C', 'Meio oficial', 2, 13),
	('71954780174', 'Felipe Alberto Brás', '345656345', 'DF', '721445850444', 'Ensino Médio', 'CLT', 'Quadra QS 13', 11, 'Riacho Fundo II', 'Brasília', 'DF', 71884278, 'Bloco C', 'Almoxerife', 2, 14),
	('71954780174', 'Gabriela Laje Vitoria', '687684676', 'DF', '721445850777', 'Ensino Médio', 'CLT', 'Quadra QS 12', 11, 'Riacho Fundo II', 'Brasília', 'DF', 71884278, 'Bloco C', 'Contador', 2, 15),
	('71954780174', 'Giovana Cunha Silva', '234523452', 'DF', '744445850132', 'Ensino Superior', 'CLT', 'Quadra QS 11', 11, 'Riacho Fundo II', 'Brasília', 'DF', 71884278, 'Bloco C', 'Almoxerife', 2, 16),
	('71954780174', 'Guilherme da Silva', '409384752', 'DF', '725555850132', 'Ensino Superior', 'CLT', 'Quadra QS 10', 11, 'Riacho Fundo II', 'Brasília', 'DF', 71884278, 'Bloco C', 'Contador', 2, 17),
	('71954780174', 'Gustavo Emanoel Sousa', '843089475', 'DF', '726665850132', 'Ensino Médio', 'CLT', 'Quadra QS 9', 11, 'Riacho Fundo II', 'Brasília', 'DF', 71884278, 'Bloco C', 'Meio oficial', 2, 18),
	('71954780174', 'Higor de Azevedo Nascimento', '456457643', 'DF', '721777850132', 'Ensino Médio', 'CLT', 'Quadra QS 8', 11, 'Riacho Fundo II', 'Brasília', 'DF', 71884278, 'Bloco C', 'Almoxerife', 2, 19),
	('71954780174', 'Isabela Chaves da Costa', '657567845', 'DF', '721445899932', 'Ensino Superior', 'CLT', 'Quadra QS 7', 11, 'Riacho Fundo II', 'Brasília', 'DF', 71884278, 'Bloco C', 'Contador', 2, 20);
INSERT INTO projetoFuncionarioOffshore(cpfCnpjFuncionario, codProjeto) VALUES
    ('11773490192', 1),
    ('67505125184', 2),
    ('70090599187', 3),
    ('05858004130', 4),
    ('00223187127', 5);

INSERT INTO FUNCIONARIO_ONSHORE(cpfCnpjFuncionario, tipoFuncionarioOnshore, tituloGraduacao)
	VALUES('71954780176', 'Almoxerifado', 'Letras'),
    ('71954780171', 'Contabilidade', 'Contabilidade'),
    ('71954780173', 'Contabilidade', 'Contabilidade'),
    ('71954780174', 'Contabilidade', 'Contabilidade'),
    ('71954780172', 'RH', 'Psicologia');

INSERT INTO projetoFuncionarioOnshore(cpfCnpjFuncionario, codProjeto)
	VALUES('71954780176', 1),
    ('71954780171', 2),
    ('71954780172', 4),
    ('71954780174', 5),
    ('71954780173', 3);

INSERT INTO IMPOSTO(enumTipoImposto, descricao, numeroBanco, numeroConta)
	VALUES('ICMS', 'imposto sobre operações relativas à circulação de mercadorias', '008', '61720'),
    ('ICMS', 'imposto sobre operações relativas à circulação de mercadorias', '009', '61721'),
    ('ISS', 'Imposto Sobre Serviços', '010', '61722'),
    ('ISS', 'Imposto Sobre Serviços', '011', '61723'),
    ('IRPJ', 'Imposto de Renda de Pessoa Jurídica', '012', '61724'),
    ('IRPJ', 'Imposto de Renda de Pessoa Jurídica', '011', '45672'),
    ('ISS', 'Imposto Sobre Serviços', '013', '34566'),
    ('CSLL', 'Contribuição Social Sobre Lucro Líquido', '065', '78767'),
    ('CSLL', 'Contribuição Social Sobre Lucro Líquido', '231', '34534');
    
INSERT INTO CONTAS_RECEBER(cpfCnpjCliente, codProjeto, dataContaReceber)
	VALUES('77196920000151', 1, '2022-09-08'),
    ('87658551082', 2, '2022-09-08'),
    ('17934294000121', 3,'2022-09-08'),
    ('03571910052', 4, '2022-09-08'),
    ('61344464000100', 5, '2022-09-08');

INSERT INTO CONTAS_PAGAR(cpfCnpjFuncionario, cnpjFornecedor, codImposto, enumTipoRecebedor, valorPagamento, nomeConta, descricaoConta, formaPagamento, dataContaPagar)
	VALUES('11773490192', null, null, 'FUNCIONÁRIO', 1110.9, 'PAGAMENTO', 'SALÁRIO', 'PIX', '2022-09-08'),
    (null, '71238187000104', null, 'FORNECEDOR', 1110.9, 'PAGAMENTO', 'SALÁRIO', 'PIX', '2022-09-08'),
    (null, null, 1, 'IMPOSTO', 1110.9, 'PAGAMENTO', 'SALÁRIO', 'PIX', '2022-09-08'),
    (null, '02633426000108', null, 'FORNECEDOR', 1110.9, 'PAGAMENTO', 'SALÁRIO', 'PIX', '2022-09-08'),
    ('00223187127', null, null, 'FUNCIONÁRIO', 1110.9, 'PAGAMENTO', 'SALÁRIO', 'PIX', '2022-09-08'),
    (null, null, 2, 'IMPOSTO', 1110.9, 'PAGAMENTO', 'SALÁRIO', 'PIX', '2022-09-08'),
    ('71954780171', null, null, 'FUNCIONÁRIO', 1110.9, 'PAGAMENTO', 'SALÁRIO', 'PIX', '2022-10-08'),
    ('71954780173', null, null, 'FUNCIONÁRIO', 1110.9, 'PAGAMENTO', 'SALÁRIO', 'PIX', '2022-11-08'),
    ('71954780174', null, null, 'FUNCIONÁRIO', 1110.9, 'PAGAMENTO', 'SALÁRIO', 'PIX', '2022-07-08'),
    ('71954780172', null, null, 'FUNCIONÁRIO', 1110.9, 'PAGAMENTO', 'SALÁRIO', 'PIX', '2021-09-08');
