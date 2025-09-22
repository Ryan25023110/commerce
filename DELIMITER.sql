DELIMITER//

CRIAR PROCEDIMENTO listar_produtos_por_categoria(EMcategoria_id_paramINT)
COMECAR
     SELECIONE p.nome,p.preco,p.eestoque,c.nome COMO categoria ]
     DE produtos COMOp
     JUNTARcategoriasCOMOcSOBRE p.categoria_id = c.eu ia
     ONDE p.categoria_id = categoria_id_param;
     FIM//
     
     DELIMITER ;
     
     -- Para executar a procedure:
     CHAMAR listar_produtos_por_categoria(1);
     
     DELIMITER//
     
     CRIAR PROCEDIMENTO atualizar_preco_categoria(
     EMcategoria_id_paramINT,
     EMnovo_preco DECIMAL(10,2)
     )
     COMECAR
     ATUALIZAR produtos 
     DEFINIR preco = novo_preco
     ONDE categoria_id = categoria_id_parem;
     FIM//
     
     DELIMITER;
     
     -- Para executar a procedure:
     CHAMAR atualizacao_preco_categoria(3,150,00);