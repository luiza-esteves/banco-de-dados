-- --------  << TF_2C_luizasantos >>  ----------
--
--      SCRIPT DE POPULA (DML)
--
-- Data Criacao ...........: 31/08/2022
-- Autor(es) ..............: Gustavo Martins Ribeiro, Kayro Cesar Silva Machado, Kess Jhones Gomes Tavares, Júlio César Martins França, Letícia Karla Araújo, Luíza Esteves dos Santos
-- Banco de Dados .........: MySQL 8.0
-- Base de Dados (nome) ...: TF_2C_luizasantos
--
-- PROJETO => 01 Base de dados
-- 	       => 31 Tabelas
--
-- ---------------------------------------------------------

USE TF_2C_luizasantos;

-- 1 (ok)
INSERT INTO TIPO_EXAME(tipoExame) VALUES 
('Admissional'),
('Periódico'),
('Complementar'),
('Mudança de função'),
('Retorno ao trabalho'),
('Demissional'),
('Ocular'),
('Dentário'),
('Sangue'),
('Psicoténico');

-- 2 (ok)
INSERT INTO EXAME(dsExame, dtExame, valorExame, validadeExame, estadoCrm, numeroCrm, idTipoExame) VALUES 
('Exame para comprovar a aptidão do candidato à função designada,devendo ser emitido sempre antes da contratação.','2020-01-01', 500, '2022-01-01', 'DF', '543456', '1'),
('Exame feito no decorrer do contrato de trabalho,a fim de verificar o desenvolvimento do mesmo e a existência de alterações no quadro de saúde do funcionário.', '2020-01-01', 400, '2020-04-01', 'DF', '543456', '2'),
('Exame feito para atestar a qualificação médica do funcionário para exercer uma nova função dentro da empresa.', '2019-01-01', 350, '2019-04-01', 'DF', '543456', '3'),
('Exame  realizado para atestar a saáde dos colaboradores que ficaram afastados por 30 dias ou mais, antes de retornarem às suas atividades.', '2020-01-01', 200, '2020-06-01', 'DF', '543456', '4'),
('Exame realizado  para comprovar objetivo comprovar que, durante o período no qual o colaborador esteve a serviço da empresa,não foi verificada nenhuma doença ocupacional ou modificação das condições de saúde', '2020-01-01', 300, '2022-01-01', 'DF', '543456', '5'),
 ('O exame demissional é uma consulta médica que deve ser feita pelo colaborador após o seu desligamento na empresa', '2020-02-03', 400,'2024-01-01', 'DF', '543456',6),
 ('Os exames oculares são a principal forma de garantir a saúde dos olhos. Eles são uma peça essencial para prevenir e diagnosticar diversos problemas e doenças oftalmológicas, desde as mais simples (como o grau de vista) até as mais graves e sérias', '2020-01-01',500, '2022-01-01', 'DF', '444456', '7'),
 ('O exame dentário clínico é aquele que o dentista faz direto na boca do paciente durante a consulta.','2021-01-01',500, '2023-01-01', 'DF', '334456', '8'),
 ('Qual é o exame de sangue completo? Resultado de imagem para EXAME de sangue. O hemograma, também conhecido por hemograma completo, é um tipo de exame que analisa informações específicas sobre os tipos e quantidades dos componentes no sangue', '2020-01-01',500, '2022-01-01', 'DF', '444456', '9'),
 ('No Brasil, o exame ou teste psicotécnico é uma avaliação realizada por um psicólogo a fim de aprovar ou não um candidato a concurso ou à obtenção de determinada autorização','2022-03-03',1000, '2023-01-01', 'DF', '334456', '10');

-- 3 (ok)
INSERT INTO CONTRATANTE(estado,complemento,rua,numero,cep,cidade,nome ) VALUES 
('GO','ao lado de um deposito','Rua da Pescada','39','72145780','Goiânia','Solução Construções'),
('GO','ao lado de um predio','Rua da conceicao','45','72145790','Goiânia','Laboral Construções'),
('GO','proxima a uma escola','Rua da Fernando silva','15','72145710','Goiânia','Rede  Construções'),
('GO','proximo a um restaurante','Rua Pato branco','423','72145719','Goiânia','Fernado Silva Construções'),
('DF','Perto de uma padaria','Rua Verde ','89','72145783','Goiânia','Aparecido Construções'),
('DF','Em frente ao Park Shopping','Rua Pedro Camargo','132','89945783','Brasilia','Casa Forte'),
('DF','Em frente a loja de conveniência','Rua Jorge Cabral ','17','98755783','Brasilia','Oficina de Ipermeabilizantes'),
('SP','No centro','Rua Verde ','89','72145783','Curitiba','Jorge Construções'),
('SP','Do lado do rio Tietê','Rua Brasileirinho','98','72145783','Curitiba','Aroldo Firma Forte'),
('RJ','Perto de uma padaria','Rua Do Acarajé','63','70900083','Morro do dendê','Leroy Merlim');

-- 4 (ok)
INSERT INTO EMPRESA(cnpjEmpresa,nome,numero,estado,rua,cep,complemento,cidade) VALUES 
('66058116000190','Espaço terra Impermeabilizadora',80,'DF','Conjunto A',72145716,'proximo a um viaduto','Brasilia'),
('66058116000145','Espaço Impermeabilizadora',45,'GO','Boa viagem',72145735,'proximo a um hotel','Goiânia'),
('54058116000190','Ceu azul Impermeabilizadora',96,'GO','Bom Jesus',72145705,'proximo a um estacionamento','Goiânia'),
('16058116000190','Conceicao Impermeabilizadora',56,'GO','Bela Vista',72165715,'proximo predio','Goiânia'),
('63058116000190','Terra Construção',23,'GO','Ceu Verde',72140715,'proximo clube','Goiânia'),
('25058116000190','Silva Empreendimentos',20,'GO','Capivarianopolis',72145115,'proximo a um viaduto','Goiânia'),
('10068844000128','Sarah e Paulo Mudanças ME',467,'SP','Jardim Itacolomi',13843200,NULL,'Mogi Guaçu'),
('89882567000142','Analu e Liz Ferragens ME',312,'GO','Travessa Tapayuna',09980750,NULL,'Diadema'),
('18434847000140','Carla e Felipe Casa Noturna ME',609,'DF','Rua Domingos Angeli',13278012,NULL,'Valinhos'),
('24079164000114','Renato e Vitor Casa Noturna Ltda',941,'SP','Rua Ambrósio dos Santos',13562000 ,NULL,'São Carlos');

-- 5 (ok)
INSERT INTO ORCAMENTO(diasValidade,mesesGarantia,formaPagamento,diasExecucao,dtOrcamento,observacoes,cnpjEmpresa,idContratante) VALUES 
(100,50,"Dinheiro",00150,"2022-09-12",null,66058116000190,1),
(200,50,"Transferência Bancaria",00250,"2022-09-12",null,66058116000145,2),
(300,50,"Transferência Bancaria",00350,"2022-09-12",null,54058116000190,3),
(400,50,"Transferência Bancaria",00450,"2022-09-12",null,16058116000190,4),
(500,50,"Transferência Bancaria",00550,"2022-09-12",null,63058116000190,5),
(100,50,"Transferência Bancaria",00550,"2022-09-12",null,63058116000190,6),
(200,50,"Transferência Bancaria",00250,"2022-09-12",null,63058116000190,7),
(200,50,"Transferência Bancaria",00250,"2022-09-12",null,63058116000190,8),
(300,50,"Transferência Bancaria",00150,"2022-09-12",null,63058116000190,9),
(500,50,"Transferência Bancaria",00550,"2022-09-12",null,63058116000190,10);

-- 6 (ok)
INSERT INTO CONTRATO
(objetoContrato,
condicoesPagamento,
obrigacoesContratado,
obrigacoesContratante,
prestacaoServicos,
prazo,
valorContrato,
dtContrato,
idContratante,
cnpjEmpresa,
idOrcamento)
VALUES 
 (
        'Cláusula 1ª. É objeto do presente contrato a prestação do serviço de Contratação de empresa especializada na prestação de serviços de
         Impermeabilização , selagem de trincas, aplicação de manta liquida em toda extensão da laje calha.',
        
        ' Cláusula 2ª. O presente serviço será remunerado pela quantia de R$ 1000
        referente aos serviços efetivamente prestados, devendo ser pago em dinheiro ou cheque, ou outra forma de pagamento em que ocorra a prévia concordância de ambas as partes.',
        
        'Cláusula 3ª. É dever do CONTRATADO oferecer ao contratante a cópia do presente instrumento, contendo todas as especificidades da prestação de serviço contratada.
         Cláusula 4ª. O CONTRATADO deverá fornecer Nota Fiscal de Serviços, referente ao(s) pagamento(s) efetuado(s) pelo CONTRATANTE.',
       
        'Cláusula 5ª. O CONTRATANTE deverá fornecer ao CONTRATADO todas as informações necessárias à realização do serviço, devendo especificar os detalhes necessários à perfeita consecução do mesmo, e a forma de como ele deve ser entregue.
         Cláusula 6ª. O CONTRATANTE deverá efetuar o pagamento na forma e condições estabelecidas na cláusula 2ª.',
        
        'Cláusula 7ª. Fica compactuado entre as partes a total inexistência de vínculo trabalhista entre as partes contratantes, excluindo as obrigações previdenciárias e os encargos sociais, não havendo entre CONTRATADO e CONTRATANTE qualquer tipo de relação de subordinação.
         Cláusula 8ª. Salvo com a expressa autorização do CONTRATANTE, não pode o CONTRATADO transferir ou subcontratar os serviços previstos neste instrumento, sob o risco de ocorrer a rescisão imediata.
         Cláusula 9ª. Este contrato deverá ser registrado no Cartório de Registro de Títulos e Documentos.',
        
        'Cláusula 10ª. O CONTRATADO assume o compromisso de realizar o serviço dentro do prazo de 1 ano, de acordo com a forma estabelecida no presente contrato.', 
         '1000', 
        '2022-09-12',
        1, 
        66058116000190, 
        1),
        
        (
        'Cláusula 1ª. É objeto do presente contrato a prestação do serviço de Contratação de empresa especializada na prestação de serviços de
         Impermeabilização , selagem de trincas, aplicação de manta liquida em toda extensão da laje calha.',
        
        ' Cláusula 2ª. O presente serviço será remunerado pela quantia de R$ 2000
        referente aos serviços efetivamente prestados, devendo ser pago em dinheiro ou cheque, ou outra forma de pagamento em que ocorra a prévia concordância de ambas as partes.',
        
        'Cláusula 3ª. É dever do CONTRATADO oferecer ao contratante a cópia do presente instrumento, contendo todas as especificidades da prestação de serviço contratada.
       Cláusula 4ª. O CONTRATADO deverá fornecer Nota Fiscal de Serviços, referente ao(s) pagamento(s) efetuado(s) pelo CONTRATANTE.',
       
        'Cláusula 5ª. O CONTRATANTE deverá fornecer ao CONTRATADO todas as informações necessárias à realização do serviço, devendo especificar os detalhes necessários à perfeita consecução do mesmo, e a forma de como ele deve ser entregue.
         Cláusula 6ª. O CONTRATANTE deverá efetuar o pagamento na forma e condições estabelecidas na cláusula 2ª.',
        
        'Cláusula 7ª. Fica compactuado entre as partes a total inexistência de vínculo trabalhista entre as partes contratantes, excluindo as obrigações previdenciárias e os encargos sociais, não havendo entre CONTRATADO e CONTRATANTE qualquer tipo de relação de subordinação.
         Cláusula 8ª. Salvo com a expressa autorização do CONTRATANTE, não pode o CONTRATADO transferir ou subcontratar os serviços previstos neste instrumento, sob o risco de ocorrer a rescisão imediata.
         Cláusula 9ª. Este contrato deverá ser registrado no Cartório de Registro de Títulos e Documentos.',
        
        'Cláusula 10ª. O CONTRATADO assume o compromisso de realizar o serviço dentro do prazo de 6 meses, de acordo com a forma estabelecida no presente contrato.', 
        2000,
       '2022-09-05',
        2, 
        66058116000145,
        2),
        
        (
        'Cláusula 1ª. É objeto do presente contrato a prestação do serviço de Contratação de empresa especializada na prestação de serviços de
         Impermeabilização , selagem de trincas, aplicação de manta liquida em toda extensão da laje calha.',
        
        ' Cláusula 2ª. O presente serviço será remunerado pela quantia de R$ 3000,
        referente aos serviços efetivamente prestados, devendo ser pago em dinheiro ou cheque, ou outra forma de pagamento em que ocorra a prévia concordância de ambas as partes.',
        
        'Cláusula 3ª. É dever do CONTRATADO oferecer ao contratante a cópia do presente instrumento, contendo todas as especificidades da prestação de serviço contratada.
         Cláusula 4ª. O CONTRATADO deverá fornecer Nota Fiscal de Serviços, referente ao(s) pagamento(s) efetuado(s) pelo CONTRATANTE.',
       
        'Cláusula 5ª. O CONTRATANTE deverá fornecer ao CONTRATADO todas as informações necessárias à realização do serviço, devendo especificar os detalhes necessários à perfeita consecução do mesmo, e a forma de como ele deve ser entregue.
         Cláusula 6ª. O CONTRATANTE deverá efetuar o pagamento na forma e condições estabelecidas na cláusula 2ª.',
        
        'Cláusula 7ª. Fica compactuado entre as partes a total inexistência de vínculo trabalhista entre as partes contratantes, excluindo as obrigações previdenciárias e os encargos sociais, não havendo entre CONTRATADO e CONTRATANTE qualquer tipo de relação de subordinação.
         Cláusula 8ª. Salvo com a expressa autorização do CONTRATANTE, não pode o CONTRATADO transferir ou subcontratar os serviços previstos neste instrumento, sob o risco de ocorrer a rescisão imediata.
         Cláusula 9ª. Este contrato deverá ser registrado no Cartório de Registro de Títulos e Documentos.',
        
        'Cláusula 10ª. O CONTRATADO assume o compromisso de realizar o serviço dentro do prazo de 2 meses, de acordo com a forma estabelecida no presente contrato.', 
        3000, 
       '2022-09-02',
        3, 
        54058116000190, 
        3),
		(
       'Cláusula 1ª. É objeto do presente contrato a prestação do serviço de Contratação de empresa especializada na prestação de serviços de
         Impermeabilização , selagem de trincas, aplicação de manta liquida em toda extensão da laje calha.',
        
        ' Cláusula 2ª. O presente serviço será remunerado pela quantia de R$ 4000, 
        referente aos serviços efetivamente prestados, devendo ser pago em dinheiro ou cheque, ou outra forma de pagamento em que ocorra a prévia concordância de ambas as partes.',
        
        'Cláusula 3ª. É dever do CONTRATADO oferecer ao contratante a cópia do presente instrumento, contendo todas as especificidades da prestação de serviço contratada.
         Cláusula 4ª. O CONTRATADO deverá fornecer Nota Fiscal de Serviços, referente ao(s) pagamento(s) efetuado(s) pelo CONTRATANTE.',
       
        'Cláusula 5ª. O CONTRATANTE deverá fornecer ao CONTRATADO todas as informações necessárias à realização do serviço, devendo especificar os detalhes necessários à perfeita consecução do mesmo, e a forma de como ele deve ser entregue.
         Cláusula 6ª. O CONTRATANTE deverá efetuar o pagamento na forma e condições estabelecidas na cláusula 2ª.',
        
        'Cláusula 7ª. Fica compactuado entre as partes a total inexistência de vínculo trabalhista entre as partes contratantes, excluindo as obrigações previdenciárias e os encargos sociais, não havendo entre CONTRATADO e CONTRATANTE qualquer tipo de relação de subordinação.
         Cláusula 8ª. Salvo com a expressa autorização do CONTRATANTE, não pode o CONTRATADO transferir ou subcontratar os serviços previstos neste instrumento, sob o risco de ocorrer a rescisão imediata.
         Cláusula 9ª. Este contrato deverá ser registrado no Cartório de Registro de Títulos e Documentos.',
        
        'Cláusula 10ª. O CONTRATADO assume o compromisso de realizar o serviço dentro do prazo de 4 meses, de acordo com a forma estabelecida no presente contrato.', 
        4000, 
        '2022-09-26',
        4, 
        16058116000190, 
        4),
      (
       'Cláusula 1ª. É objeto do presente contrato a prestação do serviço de Contratação de empresa especializada na prestação de serviços de
         Impermeabilização , selagem de trincas, aplicação de manta liquida em toda extensão da laje calha.',
        
        ' Cláusula 2ª. O presente serviço será remunerado pela quantia de R$ 5000
        referente aos serviços efetivamente prestados, devendo ser pago em dinheiro ou cheque, ou outra forma de pagamento em que ocorra a prévia concordância de ambas as partes.',
        
        'Cláusula 3ª. É dever do CONTRATADO oferecer ao contratante a cópia do presente instrumento, contendo todas as especificidades da prestação de serviço contratada.
       Cláusula 4ª. O CONTRATADO deverá fornecer Nota Fiscal de Serviços, referente ao(s) pagamento(s) efetuado(s) pelo CONTRATANTE.',
       
        'Cláusula 5ª. O CONTRATANTE deverá fornecer ao CONTRATADO todas as informações necessárias à realização do serviço, devendo especificar os detalhes necessários à perfeita consecução do mesmo, e a forma de como ele deve ser entregue.
         Cláusula 6ª. O CONTRATANTE deverá efetuar o pagamento na forma e condições estabelecidas na cláusula 2ª.',
        
        'Cláusula 7ª. Fica compactuado entre as partes a total inexistência de vínculo trabalhista entre as partes contratantes, excluindo as obrigações previdenciárias e os encargos sociais, não havendo entre CONTRATADO e CONTRATANTE qualquer tipo de relação de subordinação.
         Cláusula 8ª. Salvo com a expressa autorização do CONTRATANTE, não pode o CONTRATADO transferir ou subcontratar os serviços previstos neste instrumento, sob o risco de ocorrer a rescisão imediata.
         Cláusula 9ª. Este contrato deverá ser registrado no Cartório de Registro de Títulos e Documentos.',
        
        'Cláusula 10ª. O CONTRATADO assume o compromisso de realizar o serviço dentro do prazo de 3 meses, de acordo com a forma estabelecida no presente contrato.', 
        5000,
       '2022-09-21',
        5, 
        63058116000190,
        5),
        (
       'Cláusula 1ª. É objeto do presente contrato a prestação do serviço de Contratação de empresa especializada na prestação de serviços de
         Impermeabilização , selagem de trincas, aplicação de manta liquida em toda extensão da laje calha.',
        
        ' Cláusula 2ª. O presente serviço será remunerado pela quantia de R$ 6000
        referente aos serviços efetivamente prestados, devendo ser pago em dinheiro ou cheque, ou outra forma de pagamento em que ocorra a prévia concordância de ambas as partes.',
        
        'Cláusula 3ª. É dever do CONTRATADO oferecer ao contratante a cópia do presente instrumento, contendo todas as especificidades da prestação de serviço contratada.
       Cláusula 4ª. O CONTRATADO deverá fornecer Nota Fiscal de Serviços, referente ao(s) pagamento(s) efetuado(s) pelo CONTRATANTE.',
       
        'Cláusula 5ª. O CONTRATANTE deverá fornecer ao CONTRATADO todas as informações necessárias à realização do serviço, devendo especificar os detalhes necessários à perfeita consecução do mesmo, e a forma de como ele deve ser entregue.
         Cláusula 6ª. O CONTRATANTE deverá efetuar o pagamento na forma e condições estabelecidas na cláusula 2ª.',
        
        'Cláusula 7ª. Fica compactuado entre as partes a total inexistência de vínculo trabalhista entre as partes contratantes, excluindo as obrigações previdenciárias e os encargos sociais, não havendo entre CONTRATADO e CONTRATANTE qualquer tipo de relação de subordinação.
         Cláusula 8ª. Salvo com a expressa autorização do CONTRATANTE, não pode o CONTRATADO transferir ou subcontratar os serviços previstos neste instrumento, sob o risco de ocorrer a rescisão imediata.
         Cláusula 9ª. Este contrato deverá ser registrado no Cartório de Registro de Títulos e Documentos.',
        
        'Cláusula 10ª. O CONTRATADO assume o compromisso de realizar o serviço dentro do prazo de 3 meses, de acordo com a forma estabelecida no presente contrato.', 
        6000,
       '2022-09-10',
        6, 
        25058116000190,
        6),
		(
       'Cláusula 1ª. É objeto do presente contrato a prestação do serviço de Contratação de empresa especializada na prestação de serviços de
         Impermeabilização , selagem de trincas, aplicação de manta liquida em toda extensão da laje calha.',
        
        ' Cláusula 2ª. O presente serviço será remunerado pela quantia de R$ 7000
        referente aos serviços efetivamente prestados, devendo ser pago em dinheiro ou cheque, ou outra forma de pagamento em que ocorra a prévia concordância de ambas as partes.',
        
        'Cláusula 3ª. É dever do CONTRATADO oferecer ao contratante a cópia do presente instrumento, contendo todas as especificidades da prestação de serviço contratada.
       Cláusula 4ª. O CONTRATADO deverá fornecer Nota Fiscal de Serviços, referente ao(s) pagamento(s) efetuado(s) pelo CONTRATANTE.',
       
        'Cláusula 5ª. O CONTRATANTE deverá fornecer ao CONTRATADO todas as informações necessárias à realização do serviço, devendo especificar os detalhes necessários à perfeita consecução do mesmo, e a forma de como ele deve ser entregue.
         Cláusula 6ª. O CONTRATANTE deverá efetuar o pagamento na forma e condições estabelecidas na cláusula 2ª.',
        
        'Cláusula 7ª. Fica compactuado entre as partes a total inexistência de vínculo trabalhista entre as partes contratantes, excluindo as obrigações previdenciárias e os encargos sociais, não havendo entre CONTRATADO e CONTRATANTE qualquer tipo de relação de subordinação.
         Cláusula 8ª. Salvo com a expressa autorização do CONTRATANTE, não pode o CONTRATADO transferir ou subcontratar os serviços previstos neste instrumento, sob o risco de ocorrer a rescisão imediata.
         Cláusula 9ª. Este contrato deverá ser registrado no Cartório de Registro de Títulos e Documentos.',
        
        'Cláusula 10ª. O CONTRATADO assume o compromisso de realizar o serviço dentro do prazo de 3 meses, de acordo com a forma estabelecida no presente contrato.', 
        7000,
       '2022-09-12',
        7, 
        10068844000128,
        7),
        (
       'Cláusula 1ª. É objeto do presente contrato a prestação do serviço de Contratação de empresa especializada na prestação de serviços de
         Impermeabilização , selagem de trincas, aplicação de manta liquida em toda extensão da laje calha.',
        
        ' Cláusula 2ª. O presente serviço será remunerado pela quantia de R$ 8000
        referente aos serviços efetivamente prestados, devendo ser pago em dinheiro ou cheque, ou outra forma de pagamento em que ocorra a prévia concordância de ambas as partes.',
        
        'Cláusula 3ª. É dever do CONTRATADO oferecer ao contratante a cópia do presente instrumento, contendo todas as especificidades da prestação de serviço contratada.
       Cláusula 4ª. O CONTRATADO deverá fornecer Nota Fiscal de Serviços, referente ao(s) pagamento(s) efetuado(s) pelo CONTRATANTE.',
       
        'Cláusula 5ª. O CONTRATANTE deverá fornecer ao CONTRATADO todas as informações necessárias à realização do serviço, devendo especificar os detalhes necessários à perfeita consecução do mesmo, e a forma de como ele deve ser entregue.
         Cláusula 6ª. O CONTRATANTE deverá efetuar o pagamento na forma e condições estabelecidas na cláusula 2ª.',
        
        'Cláusula 7ª. Fica compactuado entre as partes a total inexistência de vínculo trabalhista entre as partes contratantes, excluindo as obrigações previdenciárias e os encargos sociais, não havendo entre CONTRATADO e CONTRATANTE qualquer tipo de relação de subordinação.
         Cláusula 8ª. Salvo com a expressa autorização do CONTRATANTE, não pode o CONTRATADO transferir ou subcontratar os serviços previstos neste instrumento, sob o risco de ocorrer a rescisão imediata.
         Cláusula 9ª. Este contrato deverá ser registrado no Cartório de Registro de Títulos e Documentos.',
        
        'Cláusula 10ª. O CONTRATADO assume o compromisso de realizar o serviço dentro do prazo de 3 meses, de acordo com a forma estabelecida no presente contrato.', 
        8000,
       '2022-09-16',
        8, 
        89882567000142,
        8),
        (
       'Cláusula 1ª. É objeto do presente contrato a prestação do serviço de Contratação de empresa especializada na prestação de serviços de
         Impermeabilização , selagem de trincas, aplicação de manta liquida em toda extensão da laje calha.',
        
        ' Cláusula 2ª. O presente serviço será remunerado pela quantia de R$ 9000
        referente aos serviços efetivamente prestados, devendo ser pago em dinheiro ou cheque, ou outra forma de pagamento em que ocorra a prévia concordância de ambas as partes.',
        
        'Cláusula 3ª. É dever do CONTRATADO oferecer ao contratante a cópia do presente instrumento, contendo todas as especificidades da prestação de serviço contratada.
       Cláusula 4ª. O CONTRATADO deverá fornecer Nota Fiscal de Serviços, referente ao(s) pagamento(s) efetuado(s) pelo CONTRATANTE.',
       
        'Cláusula 5ª. O CONTRATANTE deverá fornecer ao CONTRATADO todas as informações necessárias à realização do serviço, devendo especificar os detalhes necessários à perfeita consecução do mesmo, e a forma de como ele deve ser entregue.
         Cláusula 6ª. O CONTRATANTE deverá efetuar o pagamento na forma e condições estabelecidas na cláusula 2ª.',
        
        'Cláusula 7ª. Fica compactuado entre as partes a total inexistência de vínculo trabalhista entre as partes contratantes, excluindo as obrigações previdenciárias e os encargos sociais, não havendo entre CONTRATADO e CONTRATANTE qualquer tipo de relação de subordinação.
         Cláusula 8ª. Salvo com a expressa autorização do CONTRATANTE, não pode o CONTRATADO transferir ou subcontratar os serviços previstos neste instrumento, sob o risco de ocorrer a rescisão imediata.
         Cláusula 9ª. Este contrato deverá ser registrado no Cartório de Registro de Títulos e Documentos.',
        
        'Cláusula 10ª. O CONTRATADO assume o compromisso de realizar o serviço dentro do prazo de 3 meses, de acordo com a forma estabelecida no presente contrato.', 
        9000,
       '2022-09-01',
        9, 
        18434847000140,
        9),
         (
       'Cláusula 1ª. É objeto do presente contrato a prestação do serviço de Contratação de empresa especializada na prestação de serviços de
         Impermeabilização , selagem de trincas, aplicação de manta liquida em toda extensão da laje calha.',
        
        ' Cláusula 2ª. O presente serviço será remunerado pela quantia de R$ 10000
        referente aos serviços efetivamente prestados, devendo ser pago em dinheiro ou cheque, ou outra forma de pagamento em que ocorra a prévia concordância de ambas as partes.',
        
        'Cláusula 3ª. É dever do CONTRATADO oferecer ao contratante a cópia do presente instrumento, contendo todas as especificidades da prestação de serviço contratada.
       Cláusula 4ª. O CONTRATADO deverá fornecer Nota Fiscal de Serviços, referente ao(s) pagamento(s) efetuado(s) pelo CONTRATANTE.',
       
        'Cláusula 5ª. O CONTRATANTE deverá fornecer ao CONTRATADO todas as informações necessárias à realização do serviço, devendo especificar os detalhes necessários à perfeita consecução do mesmo, e a forma de como ele deve ser entregue.
         Cláusula 6ª. O CONTRATANTE deverá efetuar o pagamento na forma e condições estabelecidas na cláusula 2ª.',
        
        'Cláusula 7ª. Fica compactuado entre as partes a total inexistência de vínculo trabalhista entre as partes contratantes, excluindo as obrigações previdenciárias e os encargos sociais, não havendo entre CONTRATADO e CONTRATANTE qualquer tipo de relação de subordinação.
         Cláusula 8ª. Salvo com a expressa autorização do CONTRATANTE, não pode o CONTRATADO transferir ou subcontratar os serviços previstos neste instrumento, sob o risco de ocorrer a rescisão imediata.
         Cláusula 9ª. Este contrato deverá ser registrado no Cartório de Registro de Títulos e Documentos.',
        
        'Cláusula 10ª. O CONTRATADO assume o compromisso de realizar o serviço dentro do prazo de 3 meses, de acordo com a forma estabelecida no presente contrato.', 
        10000,
       '2022-09-25',
        10, 
        24079164000114,
        10);
        
-- 7 (ok)
INSERT INTO PESSOA_JURIDICA(cnpjPJ, idContratante) VALUES 
("25160122000176",1),
("35160122000175",2),
("45160122000174",3),
("55160122000173",4),
("75160122000172",5),
("25058116000190",6),
("10068844000128",7),
("89882567000142",8),
("18434847000140",9),
("24079164000114",10);

-- 8 (ok)
INSERT INTO PESSOA_FISICA(idContratante, cpf, dtNascimento, sexo) VALUES 
(1, 76397834026, "1990-03-01", "M"),
(2, 62685951067, "1980-03-01", "M"),
(3, 53148990005, "1970-03-01", "M"),
(4, 54136082096, "1968-03-01", "M"),
(5, 53204819000, "2001-03-01", "M"),
(6, 47818947043, "1988-03-01", "M"),
(7, 06702065043, "1983-03-01", "M"),
(8, 78854059072, "1994-03-01", "M"),
(9, 26137153088, "1995-03-01", "M"),
(10, 93522045068, "1990-03-01", "M");

-- 9 (ok)
INSERT INTO ENCARREGADO(cnpjEncarregado,remuneracao,nome,cnpjEmpresa) VALUES 
(25160122000176,10000,"Gilson Mendes Moreira", 66058116000190),
(35160122000175,6000.500,"Arlindo Mendes Silva", 66058116000190),
(45160122000174,11000,"Claudia Menrelis Oliveira", 66058116000190),
(55160122000173,10300,"Albert Aisten Bittencurt", 66058116000190),
(75160122000172,10400,"Rafa Moreira Trancaut", 66058116000190),
(25058116000190,11000,"Gustavo Martins Ribeiro",66058116000190),
(10068844000128,11000,"Gabriel Martins Ribeiro",66058116000190),
(89882567000142,11000,"Kayro Machado Dias",66058116000190),
(18434847000140,11000,"Vanderley Silva Jorge",66058116000190),
(24079164000114,11000,"Silvo Arruda Monetiz",66058116000190);

-- 10 (ok)
INSERT INTO OBRA(area,rua,complemento,numero,estado,cidade,cep,cnpjEncarregado,idContrato) VALUES 
(5422, "Rua das flores", "Do lado do poste", 12, "SP","Brasilandia", 61620444, 25160122000176, 1),
(443, "Rua das Fontes", "Na favela do rodo", 11, "RJ","Candangolandia", 51620442, 35160122000175, 2),
(124, "Rua do Mato", "Do lado da Praia", 32, "SP","Guaratuba", 41620440, 45160122000174, 3),
(31, "Rua Villa Mimosa", "Do lado do hotel", 555, "CE","Gama", 31620440, 55160122000173, 4),
(501, "Rua Marechal", "Do lado do feira", 15, "SP","Brasilinha", 21620441, 75160122000172, 5),
(321, "Rua Timotti", NULL, 15, "SP","Brasilinha", 21620441, 25058116000190, 6),
(443, "Rua Das Rosas", NULL, 65, "DF","Guará II", 13566781, 10068844000128, 7),
(755, "Rua Pedro Silva", NULL, 21, "DF","Candangolândia", 67880441, 89882567000142, 8),
(478, "Rua Jorge Amardo",NULL, 42, "DF","Santa Maria", 10620441, 18434847000140, 9),
(980, "Rua Jesus", NULL, 46, "SP","Guarujá", 45620441, 24079164000114, 10);

-- 11 (ok)
INSERT INTO TIPO_CURSO(tipoCurso) VALUES
("Aplicação de Manta"),
("Impermeabilização"),
("Segurança do trabalho"),
("Primeiros Socorros"),
("Equilíbrio Elevado"),
("Engenharia de Estruturas em Concreto"),
("Sistemas Construtivos de Edificações"),
("Engenharia Civil e Arquitetura Sustentável"),
("Avaliação e Perícia na Construção Civil"),
("Diretor de operações");

-- 12 (ok)
INSERT INTO CURSO(dsCurso,cargaHoraria,validadeCurso,nomeCurso,modalidade,valorCurso,dtCurso,idTipoCurso) VALUES
("Curso para aplicação de manta",60,"2025-01-01","IPROTEC","presencial",1000,"2022-08-31",1),
("Curso para parender a ipermeabilizar areas",60,"2025-01-01","CURSERA AVANTE","semi-presencial",1500,"2022-08-31",2),
("Curso para aprender a usar a balancinha",60,"2025-01-01","APRENDA A USAR A BALANCINHA","presencial",1000,"2022-08-31",3),
("Curso para aprender primeiros socorros",45,"2025-01-01", "SOBREVIVENCIALISMO","presencial",1200,"2022-08-31",4),
("Curso para aprender a se equilibrar",15,"2025-01-01", "O EQUILIBRIO POTENTE","presencial",1100,"2022-08-31",5),
("Curso para aprender como funciona a construção de estrutura de concreto na perspectiva da engenharia",60,"2025-01-01","CETEB Preparatórios","presencial",1100,"2022-08-31",6),
("Curso para aprender como modelar sistemas constritutivos em edificações",90,"2025-01-01", "Sistemas e Edificações- UNITEB","presencial",1100,"2022-08-31",7),
("Aplicações de conhecimentos de Engenharia Civil e Arquitetura Sustentável em ambientes sofisticados",60,"2025-01-01","UNB Sustentabilidade Civíl","presencial",1100,"2022-08-31",8),
("Curso preparatório para profissionais de perícia civil",90,"2025-01-01", "Peritos do futuro","presencial",2100,"2022-08-31",9),
("Curso de terinamento para diretores de operações organizacionais",90,"2025-01-01", "Smart Industry","presencial",2100,"2022-08-31",10);


-- 13 (ok)
INSERT INTO ESPECIALIDADE(nomeEspecialidade) VALUES 
('APLICADOR'),
('SERVENTE'),
('MEIO OFICIAL'),
('IMPERMEABILIZADOR'),
('PEDREIRO'),
('MESTRE DE OBRAS'),
('TECNICO DE CONSTRUÇÃO CIVIL'),
('ARMADOR'),
('CARPINTEIRO'),
('AUXILIAR DE IPERMEABILIZAÇÃO');

-- 14 (ok)
INSERT INTO FUNCIONARIO(cpf,rg,nome,sexo,dtNascimento,cep,estado,rua,cidade,numero,email,cargo,dtAdmissao,numero_pis,salarioContratacao,cargaHoraria,cnpjEmpresa,idEspecialidade)
VALUES 
('10097834026','390453146','Anderson Campos Costa','M','1978-01-05','72145710','GO','Rua dos patos','Goiania',44,'anderson21@gmail.com','PEDREIRO','2020-01-12','46250987714',1500,44,'66058116000190',4),
('22285951067','163929221','Anderson Pereira Campos Costa','M','1998-01-05','72145719','GO','Rua dos patos','Goiania',44,'andersonper21@gmail.com','PEDREIRO','2020-07-13','46250987716',1500,44,'66058116000190',1),
('33148990005','241611131','Andre Campos Silva','M','1979-01-05','72145710','GO','Rua dos patos','Goiania',44,'andre2321@gmail.com','PEDREIRO','2020-06-15','46250987711',1500,44,'66058116000190',3),
('94136082096','195594988','Agenor Campos Pereira','M','1981-10-05','72145710','GO','Rua dos patos','Goiania',44,'angenor1@gmail.com','PEDREIRO','2020-10-10','46250987712',1500,44,'66058116000190',1),
('03204819000','261164144','Antonio Campos Constantino','M','1988-01-05','72145710','GO','Rua dos patos','Goiania',44,'antonion21@gmail.com','PEDREIRO','2020-08-11','46250987713',1500,44,'66058116000190',5),
('54521493092','102004778','Ayla Bruna Rodrigues','F','1981-12-21','59625633','DF','Rua Amaral Peixoto','Núcleo Bandeirante',314,'AYLA@gmail.com','PEDREIRO','2020-10-10','87777987712',1500,44,'66058116000190',1),
('37177690069','224632401','Henrique Luiz Filipe Cavalcanti','M','1991-10-25','29153080','DF','Rua dos patos','Gama Leste',65,'Henrique@gmail.com','PEDREIRO','2020-10-10','11440987712',1500,44,'66058116000190',1),
('95241100083','480022033','Francisco Bento Davi dos Santos','M','1982-12-15','69304465','DF','Rua Amaral Peixoto','Candangolândia',11,'Bento@gmail.com','PEDREIRO','2020-10-10','67888987712',1500,44,'66058116000190',1),
('49215588094','505448713','Kaique Carlos Gabriel Cavalcanti','M','1988-10-23','57608240','GO','Rua dos patos','Goiania',413,'Kaique@gmail.com','PEDREIRO','2020-10-10','11110987312',1500,44,'66058116000190',1),
('36583980002','337392833','Calebe Sérgio Rodrigo Barbosa','M','1989-11-12','45604588','GO','Rua das Flores','Goiania',844,'Calebe@gmail.com','PEDREIRO','2020-10-10','67888987712',1500,44,'66058116000190',1);

-- 15 (ok)
INSERT INTO telefoneContratante(idContratante,telefoneContratante) VALUES
(1, 61981642418),
(2, 61972031911),
(3, 61967074576),
(4, 61932382633),
(5, 61939123712),
(6, 61981737777),
(7, 61912345555),
(8, 61917178989),
(9, 61956738131),
(10,61977428713);

-- 16 (ok)
INSERT INTO telefoneEmpresa(cnpjEmpresa,telefoneEmpresa) VALUES
(66058116000190, 61917939422),
(66058116000145, 61945332941),
(54058116000190, 61929665925),
(16058116000190, 61989788665),
(25058116000190, 61951351777),
(10068844000128, 61932166671),
(89882567000142, 61957286967),
(18434847000140, 61931234555),
(63058116000190, 61998944584);

-- 17 (ok)
INSERT INTO telefoneFuncionario(cpf,telefoneFuncionario) VALUES
(10097834026, 61917939422),
(22285951067, 61945332941),
(33148990005, 61929665925),
(94136082096, 61955688678),
(03204819000, 61978787172),
(54521493092, 61977778812),
(37177690069, 61922231322),
(95241100083, 61966565522),
(49215588094, 61917896786),
(03204819000, 61998944584);

-- 18 (ok)
INSERT INTO DEPENDENTE(nomeDependente,relacaoDependencia,cpf) VALUES 
("Arlindo Maravilha Silva", "Filho mais velho", 10097834026),
("Carlos Abraão Silva", "Filho mais novo", 22285951067),
("Victor Ribeiro Silva", "Filho mais velho", 33148990005),
("Rafael Maravilha Martins", "Filho do meio", 94136082096),
("Lúcia Priscila Dias", "Filha mais velha", 03204819000),
("Sabrina Daiane dos Santos", "Filha mais velha", 03204819000),
("Juliana Simone Oliveira", "Filha mais velha", 03204819000),
("Ricardo Filipe Gomes", "Filho mais velho", 03204819000),
("Heloisa Elza Sabrina Jesus", "Filho mais velho", 03204819000);
-- 19 (ok)
INSERT INTO participa(idCurso, cpf) VALUES 
(1, 10097834026),
(2, 22285951067),
(3, 33148990005),
(4, 94136082096),
(5, 03204819000),
(6, 54521493092),
(7, 37177690069),
(8, 95241100083),
(9, 49215588094),
(10, 36583980002);

-- 20 (ok) 
INSERT INTO faz(idExame, cpf) VALUES
(1, 10097834026),
(2, 22285951067),
(3, 33148990005),
(4, 94136082096),
(5, 03204819000),
(6, 54521493092), 
(7, 37177690069), 
(8, 95241100083), 
(9, 49215588094), 
(10,36583980002);

-- 21 (ok)
INSERT INTO trabalha(idObra, cpf) VALUES
(1, 10097834026),
(2, 22285951067),
(3, 33148990005),
(4, 94136082096),
(5, 03204819000),
(6, 03204819000), 
(7, 94136082096), 
(8, 33148990005), 
(9, 22285951067), 
(10, 10097834026);

-- 22 (ok)
 INSERT INTO PROFISSIONAL(cpf,dataEspecializacao) VALUES 
('10097834026','2021-10-25'),
('22285951067','2021-09-24'),
('33148990005','2021-08-23'),
('94136082096','2021-01-13'),
('03204819000','2021-02-03'),
('54521493092','2021-04-03'), 
('37177690069','2021-09-07'), 
('95241100083','2021-10-09'), 
('49215588094','2021-11-11'), 
('36583980002','2021-03-15');

-- 23 (ok)
INSERT INTO MATERIAL(descricaoMaterial,qtdMaterial,valorMaterial,idOrcamento,cnpjEmpresa,dtCompraMaterial) VALUES   
('cano de pvc', 20, 10,1,'66058116000190',"2022-09-10"),
('cimento acii',50,25,1,'66058116000190',"2022-09-10"),
('tijolo',1000,5,1,'66058116000190',"2022-09-10"),
('manta asfaltica',100,15,1,'66058116000190',"2022-09-10"),
('cola especial',29,5,1,'66058116000190',"2022-09-10"),
('Chapa de Drywall Standard 1,80x1,20m Branca Placo', 15,38, 2,'25058116000190',"2022-08-09"), 
('Bloco de Concreto Celular Autoclavado 60x30x10cm Sical',35,13,2,'25058116000190',"2022-05-15"), 
('Argamassa Porcelanato Interno e Externo Cinza 20kg Axton',22,22,3,'25058116000190',"2022-09-16"), 
('Argamassa Piso sobre Piso Interno e Externo Cinza 20kg Votoran',10,22.9,3,'89882567000142',"2022-06-21"), 
('Emulsão Acrílica',29,5,3,'89882567000142',"2022-03-12");

-- 24 (ok)
INSERT INTO SALARIO(dtPagamento,valor,formaPagamento,gratificacao,cpf) VALUES  
('2021-10-25',1500,'Transferencia Bancaria',0,'10097834026'),
('2021-10-25',1500,'Transferencia Bancaria',0,'22285951067'),
('2021-10-25',1500,'Transferencia Bancaria',0,'33148990005'), 
('2021-10-25',1500,'Transferencia Bancaria',0,'94136082096'),
('2021-10-25',1500,'Transferencia Bancaria',0,'03204819000'),
('2021-10-25',2500,'Transferencia Bancaria',500,'03204819000'), 
('2021-10-25',2500,'Transferencia Bancaria',300,'03204819000'), 
('2021-10-25',3500,'Transferencia Bancaria',300,'03204819000'), 
('2021-10-25',2000,'Transferencia Bancaria',500,'03204819000'), 
('2021-10-25',1500,'Transferencia Bancaria',200,'03204819000');

-- 25 (ok)
INSERT INTO PAGAMENTO(dataHoraPagamento,valorPagamento,formaPagamento,idContrato) VALUES
("2022-09-10 13:10:11", 2000, 'Transferencia Bancaria', 1),
("2022-09-10 14:00:00", 2000, 'Transferencia Bancaria', 2),
("2022-09-10 15:01:56", 2000, 'Transferencia Bancaria', 3),
("2022-09-10 15:13:22", 2000, 'Transferencia Bancaria', 4),
("2022-09-10 17:10:11", 2000, 'Transferencia Bancaria', 5),
("2022-08-11 14:10:15", 3000, 'Transferencia Bancaria', 6), 
("2022-08-12 12:10:13", 4000, 'Transferencia Bancaria', 7), 
("2022-07-13 14:50:12", 3500, 'Transferencia Bancaria', 8), 
("2022-07-14 09:10:00", 5000, 'Transferencia Bancaria', 9), 
("2022-06-15 10:30:11", 3300, 'Transferencia Bancaria', 10);

-- 26 (ok)
INSERT INTO TIPO_SERVICO(nomeTipoServico) VALUES
("Ipermeabilização de Laje"),
("Ipermeabilização de Caixa D'agua"),
("Aplicação de Resina de Poliuretano"),
("Aplicação de Borracha Líquida"),
("Ipermeabilização de Manta Asfáltica"),
('Adição de Manta Y'), 
('Pintura de Superfícies da laje'), 
('Aplicação de Emulsão Acrílica'), 
('Aplicação do Hidrorrepelente'), 
('Aplicação do hidrofulgante');

-- 27 (ok)
INSERT INTO SERVICO(valorServico,descricaoServico,idTipoServico) VALUES 
(53000,"Processo de ipermeabilização de Laje de residências, prédios, etc.",1),
(60000,"Processo de ipermeabilização de Caixas D'agua para evitar vasamentos.",2),
(70000,"Aplicação de Resina de Poliuretano em superfices para hipermeabilização",3),
(45000,"Aplicação de Borracha Líquida em superfices, tais como campos de grama sintética, para evitar infiltração de água",4),
(13000,"Processo de ipermeabilização de Manta Asfáltica para evitar a infiltração de água em rodovias, por exemplo.",5),
(14000,"Processo de ipermeabilização de Manta Asfáltica para evitar a infiltração de água em rodovias, por exemplo.",6), 
(15500,"Processo de pintura da superficie da laje",7), 
(18900,"Processo de aplicação da emulsão acrílica, indicado para áreas onde não há necessidade de outros revestimentos, sendo ela mesmo o produto final.",8), 
(20500,"Processo de ipermeabilização de telhas e concreto",9), 
(31400," Processo de ipermeabilização com um impermeabilizante feito à base de solvente que é indicado para proteção e conservação de pisos e fachada de pedras",10);

-- 28 (ok)
INSERT INTO composto(idOrcamento,idServico) VALUES (1,1), (2,2), (3,3), (4,4), (5,5), (6, 6), (7, 7), (8, 8), (9, 9), (10, 10);

-- 29 (ok)

INSERT INTO FORNECEDOR(cnpjFornecedor,nomeFornecedor,cidade,estado,numero,rua,complemento,cep) VALUES
                        ('11472346000109','Construmarques','Goiania','GO',10,'Rua vila nova' ,'Ao lado da rodovia',7114400),
						('21472346000109','Rede Construir Materiais de Construção','Goiania','GO',30,'Rua Vila Velha' ,'Ao lado da rodovia',7224400),
						('31472346000109','Cartão da Construção','Goiania','GO',96,'Rua arapiraca' ,'Ao lado da rodovia',7134400),
						('91472346000109','Colombo Ferramentas','Goiania','GO',52,'Rua Pato vivo' ,'Ao lado da rodovia',7174400),
						('81472346000109','Agiplan Tecnologia Projetos Serviços e Comércio','Goiania','GO',14,'Rua vila boa' ,'Ao lado da rodovida',7134400),
                        ('28306452000115','Lux Materiais para Construção','Botucatu','SP',11,'Rua Doutor Gaspar Ricardo' ,'Ao lado da praça laurentino', 18609055), 
						('71238187000104','Teixeira Pisos','Criciúma','SC',30,'Rua 1382' ,'Ao lado do mercado atacadão', 88809427), 
						('02633426000108','Vaile Mantas','Goiânia','GO',18,'Rua Alpha' ,'Ao lado do mercado barueeri', 74393740), 
						('41561323000131','Lusol Materais para a Construção','Brasília','DF',5,'Quadra QNO' ,'Ao lado do Banco do Brasil', 72251015), 
						('58628726000153','Fudaena Tintas','Brasília','DF', 1203,'Quadra SHCES' ,'Ao lado do posto Ipiranga', 70658233);
                        
-- 30 (ok)
INSERT INTO fornece(idMaterial,cnpjFornecedor) VALUES
(1,11472346000109),
(2,21472346000109),
(3,31472346000109),
(4,91472346000109),
(5,81472346000109),
(6, 28306452000115), 
(7, 71238187000104), 
(8, 02633426000108), 
(9, 41561323000131), 
(10, 58628726000153);

-- 31 (oK)
INSERT INTO telefoneFornecedor(telefoneFornecedor,cnpjFornecedor) VALUES
(6432248515, 11472346000109),
(4731144265, 21472346000109),
(9422512771, 31472346000109),
(8639246571, 91472346000109),
(6931600727, 81472346000109),
(1123563876, 28306452000115), 
(4736482858, 71238187000104), 
(6273727271, 02633426000108), 
(6101828182, 41561323000131), 
(6101829495, 58628726000153);

