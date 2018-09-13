/**
  O conteúdo deste arquivo foi atualizado e está no outro arquivo
  de nome:
  016-


  Autor: Fábio Moura de Oliveira.
  
  Tabela que armazena a comparação de bolas da mesma coluna em duas combinações.
  Compara na mesma coluna do concurso_1 e concurso_2,
  da tabela lotofacil.lotofacil_bolas, a bola de ambas os concursos
  armazenando a comparação na coluna corresponde.
  A comparação é do concurso_1 pra o concurso_2, ou seja,
  o valor da bola no concurso_1 é subtraído do valor da bola no concurso_2 que estão 
  na mesma coluna.
  O resultado será 0, se a bola que está na mesma coluna de ambas as combinações são iguais,
  será um número negativo, se a bola do concurso_1 for menor que a bola do concurso_2 ou 
  será um número positivo, maior que 1, se a bola do concurso_1 for maior que a bola do concurso_2.

  Obs.: Todas as combinações tem uma tabela que armazena um identificador exclusivo e único
  de todas as combinações.
  Então, quando a tabela é relacionada, não precisamos armazenar informações redundantes, somente
  o identificador.
 */
drop table if exists lotofacil.lotofacil_id_comparacao_de_bolas_na_mesma_coluna;
create table lotofacil.lotofacil_id_comparacao_de_bolas_na_mesma_coluna(
  cmp_b_id numeric not null,
  qt_bolas_comuns_b1_a_b15 numeric not null,
  qt_bolas_subindo_b1_a_b15 numeric not null,
  qt_bolas_descendo_b1_a_b15 numeric not null,
  constraint lotofacil_id_comparacao_de_bolas_na_mesma_coluna_pk PRIMARY KEY (cmp_b_id)
);


drop table if exists lotofacil.lotofacil_resultado_comparacao_de_bolas_na_mesma_coluna;
create table lotofacil.lotofacil_resultado_comparacao_de_bolas_na_mesma_coluna(
  concurso_1 numeric not null,
  concurso_2 numeric not null,
  cmp_b_id numeric not null,
  cmp_b1                    NUMERIC DEFAULT 0,
  cmp_b2                    NUMERIC DEFAULT 0,
  cmp_b3                    NUMERIC DEFAULT 0,
  cmp_b4                    NUMERIC DEFAULT 0,
  cmp_b5                    NUMERIC DEFAULT 0,
  cmp_b6                    NUMERIC DEFAULT 0,
  cmp_b7                    NUMERIC DEFAULT 0,
  cmp_b8                    NUMERIC DEFAULT 0,
  cmp_b9                    NUMERIC DEFAULT 0,
  cmp_b10                   NUMERIC DEFAULT 0,
  cmp_b11                   NUMERIC DEFAULT 0,
  cmp_b12                   NUMERIC DEFAULT 0,
  cmp_b13                   NUMERIC DEFAULT 0,
  cmp_b14                   NUMERIC DEFAULT 0,
  cmp_b15                   NUMERIC DEFAULT 0,


  constraint lotofacil_comparacao_de_bolas_na_mesma_coluna_fk_1 FOREIGN KEY (concurso_1)
    REFERENCES lotofacil.lotofacil_resultado_bolas(concurso),
  constraint lotofacil_comparacao_de_bolas_na_mesma_coluna_fk_2 FOREIGN KEY (concurso_1)
    REFERENCES lotofacil.lotofacil_resultado_bolas(concurso),
  constraint lotofacil_comparacao_de_bolas_na_mesma_coluna_fk_3 FOREIGN KEY (cmp_b1)
    REFERENCES lotofacil.lotofacil_id_comparacao_de_bolas_na_mesma_coluna on update cascade on delete cascade
);


Select lotofacil.fn_ltf_resultado_atualizar_comparacao_de_bolas_na_mesma_coluna();

/**
  Autor: Fábio Moura de Oliveira
  Descrição: Esta função percorre todas as combinações dos concursos já sorteados na lotofacil
  em ordem crescente de concurso, comparando a combinação do concurso atual com o próximo concurso,
  neste caso, a comparação é a bola da mesma coluna em ambas as combinações.
  A comparação é realizada subtraindo uma bola do concurso atual com a bola do concurso seguinte que
  estão na mesma coluna.
  O valor da diferença será armazenado na coluna correspondente na tabela
  lotofacil.lotofacil_comparacao_de_bolas_na_mesma_coluna.
  Se a diferença é negativa, quer dizer, que a bola é menor que a bola do outro concurso.
  Se a diferença é zero, quer dizer, que a bola é igual em ambas as combinações na mesma coluna.
  Se a diferença é positiva, quer dizer, que a bola é maior que a bola do outro concurso
 */
drop function if exists lotofacil.fn_ltf_resultado_atualizar_comparacao_de_bolas_na_mesma_coluna();
create function lotofacil.fn_ltf_resultado_atualizar_comparacao_de_bolas_na_mesma_coluna()
  returns void
  LANGUAGE plpgsql
  AS
  $$
  DECLARE
    ltf_bolas lotofacil.lotofacil_resultado_bolas%rowtype;
    ltf_concurso_atual numeric[26];
    ltf_concurso_anterior numeric[26];
    ltf_diferenca_entre_anterior_com_atual numeric[26];
    b_primeira_vez boolean;

    qt_de_bolas_comuns_b1_a_b15 numeric;
    qt_de_bolas_subindo_b1_a_b15 numeric;
    qt_de_bolas_descendo_b1_a_b15 numeric;

    identificador_cmp_b_id numeric;

    valor_atual numeric;

  BEGIN
    -- Deleta todos os registros de lotofacil.lotofacil_comparacaode_de_bolas_na_mesma_coluna
    Delete from lotofacil.lotofacil_resultado_comparacao_de_bolas_na_mesma_coluna;

    b_primeira_vez := true;
    for ltf_bolas in
      Select * from lotofacil.lotofacil_resultado_bolas
      order by concurso asc
    LOOP

      if b_primeira_vez = true then
        
        b_primeira_vez := false;
        ltf_concurso_anterior[0] := ltf_bolas.concurso;
        ltf_concurso_anterior[1] := ltf_bolas.b_1;
        ltf_concurso_anterior[2] := ltf_bolas.b_2;
        ltf_concurso_anterior[3] := ltf_bolas.b_3;
        ltf_concurso_anterior[4] := ltf_bolas.b_4;
        ltf_concurso_anterior[5] := ltf_bolas.b_5;
        ltf_concurso_anterior[6] := ltf_bolas.b_6;
        ltf_concurso_anterior[7] := ltf_bolas.b_7;
        ltf_concurso_anterior[8] := ltf_bolas.b_8;
        ltf_concurso_anterior[9] := ltf_bolas.b_9;
        ltf_concurso_anterior[10] := ltf_bolas.b_10;
        ltf_concurso_anterior[11] := ltf_bolas.b_11;
        ltf_concurso_anterior[12] := ltf_bolas.b_12;
        ltf_concurso_anterior[13] := ltf_bolas.b_13;
        ltf_concurso_anterior[14] := ltf_bolas.b_14;
        ltf_concurso_anterior[15] := ltf_bolas.b_15;

      END IF;

        -- Aqui, praticamente, estamos comparando simplesmente fazendo a diferença entre duas bolas
        -- Se a bola é menor que a outra, será negativa,
        -- Se a bola é igual a outra bola, terá o valor zero,
        -- Se a bola é maior que a outra, será positiva.
      /*
        ltf_diferenca_entre_anterior_com_atual[1] := ltf_concurso_anterior[1] - ltf_bolas.b_1;
        ltf_diferenca_entre_anterior_com_atual[2] := ltf_concurso_anterior[2] - ltf_bolas.b_2;
        ltf_diferenca_entre_anterior_com_atual[3] := ltf_concurso_anterior[3] - ltf_bolas.b_3;
        ltf_diferenca_entre_anterior_com_atual[4] := ltf_concurso_anterior[4] - ltf_bolas.b_4;
        ltf_diferenca_entre_anterior_com_atual[5] := ltf_concurso_anterior[5] - ltf_bolas.b_5;
        ltf_diferenca_entre_anterior_com_atual[6] := ltf_concurso_anterior[6] - ltf_bolas.b_6;
        ltf_diferenca_entre_anterior_com_atual[7] := ltf_concurso_anterior[7] - ltf_bolas.b_7;
        ltf_diferenca_entre_anterior_com_atual[8] := ltf_concurso_anterior[8] - ltf_bolas.b_8;
        ltf_diferenca_entre_anterior_com_atual[9] := ltf_concurso_anterior[9] - ltf_bolas.b_9;
        ltf_diferenca_entre_anterior_com_atual[10] := ltf_concurso_anterior[10] - ltf_bolas.b_10;
        ltf_diferenca_entre_anterior_com_atual[11] := ltf_concurso_anterior[11] - ltf_bolas.b_11;
        ltf_diferenca_entre_anterior_com_atual[12] := ltf_concurso_anterior[12] - ltf_bolas.b_12;
        ltf_diferenca_entre_anterior_com_atual[13] := ltf_concurso_anterior[13] - ltf_bolas.b_13;
        ltf_diferenca_entre_anterior_com_atual[14] := ltf_concurso_anterior[14] - ltf_bolas.b_14;
        ltf_diferenca_entre_anterior_com_atual[15] := ltf_concurso_anterior[15] - ltf_bolas.b_15;
        */

        ltf_diferenca_entre_anterior_com_atual[1] :=  ltf_bolas.b_1 - ltf_concurso_anterior[1];
        ltf_diferenca_entre_anterior_com_atual[2] := ltf_bolas.b_2 - ltf_concurso_anterior[2];
        ltf_diferenca_entre_anterior_com_atual[3] := ltf_bolas.b_3 - ltf_concurso_anterior[3];
        ltf_diferenca_entre_anterior_com_atual[4] := ltf_bolas.b_4 - ltf_concurso_anterior[4];
        ltf_diferenca_entre_anterior_com_atual[5] := ltf_bolas.b_5 - ltf_concurso_anterior[5];
        ltf_diferenca_entre_anterior_com_atual[6] := ltf_bolas.b_6 - ltf_concurso_anterior[6];
        ltf_diferenca_entre_anterior_com_atual[7] := ltf_bolas.b_7 - ltf_concurso_anterior[7];
        ltf_diferenca_entre_anterior_com_atual[8] := ltf_bolas.b_8 - ltf_concurso_anterior[8];
        ltf_diferenca_entre_anterior_com_atual[9] := ltf_bolas.b_9 - ltf_concurso_anterior[9];
        ltf_diferenca_entre_anterior_com_atual[10] := ltf_bolas.b_10 - ltf_concurso_anterior[10];
        ltf_diferenca_entre_anterior_com_atual[11] := ltf_bolas.b_11 - ltf_concurso_anterior[11];
        ltf_diferenca_entre_anterior_com_atual[12] := ltf_bolas.b_12 - ltf_concurso_anterior[12];
        ltf_diferenca_entre_anterior_com_atual[13] := ltf_bolas.b_13 - ltf_concurso_anterior[13];
        ltf_diferenca_entre_anterior_com_atual[14] := ltf_bolas.b_14 - ltf_concurso_anterior[14];
        ltf_diferenca_entre_anterior_com_atual[15] := ltf_bolas.b_15 - ltf_concurso_anterior[15];




        -- Verifica a quantidade de bolas repetidas na mesma coluna ou
        -- se a bola é menor ou maior que a outra bola na mesma coluna.
        qt_de_bolas_subindo_b1_a_b15 := 0;
        qt_de_bolas_descendo_b1_a_b15 := 0;
        qt_de_bolas_comuns_b1_a_b15 := 0;

        -- Aqui, estamos contabilizando a quantidade de bolas que são iguais,
        -- quais são maiores e menores que outras.
        for uA in 1..15 LOOP
          valor_atual := ltf_diferenca_entre_anterior_com_atual[ua];
          valor_atual := sign(valor_atual);

          CASE

            WHEN valor_atual = -1 then
              qt_de_bolas_descendo_b1_a_b15 := qt_de_bolas_descendo_b1_a_b15 + 1;

            when valor_atual = 0 then
              qt_de_bolas_comuns_b1_a_b15 := qt_de_bolas_comuns_b1_a_b15 + 1;

            when valor_atual = 1 THEN
              qt_de_bolas_subindo_b1_a_b15 := qt_de_bolas_subindo_b1_a_b15 + 1;

          END CASE;

        END LOOP;

        Select cmp_b_id into identificador_cmp_b_id
        from lotofacil.lotofacil_id_comparacao_de_bolas_na_mesma_coluna
          where qt_bolas_comuns_b1_a_b15 = qt_de_bolas_comuns_b1_a_b15 AND
            qt_bolas_subindo_b1_a_b15 = qt_de_bolas_subindo_b1_a_b15 AND
            qt_bolas_descendo_b1_a_b15 = qt_de_bolas_descendo_b1_a_b15;

      Raise Notice 'cmp_b_id: %', identificador_cmp_b_id;




        -- Agora, insere na tabela.
        Insert into lotofacil.lotofacil_resultado_comparacao_de_bolas_na_mesma_coluna (
          concurso_1,
          concurso_2,
          cmp_b_id,
          cmp_b1, cmp_b2, cmp_b3, cmp_b4, cmp_b5,
          cmp_b6, cmp_b7, cmp_b8, cmp_b9, cmp_b10,
          cmp_b11, cmp_b12, cmp_b13, cmp_b14, cmp_b15) VALUES
          (
            ltf_concurso_anterior[0], 
            ltf_bolas.concurso,
            identificador_cmp_b_id,
            ltf_diferenca_entre_anterior_com_atual[1],
            ltf_diferenca_entre_anterior_com_atual[2],
            ltf_diferenca_entre_anterior_com_atual[3],
            ltf_diferenca_entre_anterior_com_atual[4],
            ltf_diferenca_entre_anterior_com_atual[5],
            ltf_diferenca_entre_anterior_com_atual[6],
            ltf_diferenca_entre_anterior_com_atual[7],
            ltf_diferenca_entre_anterior_com_atual[8],
            ltf_diferenca_entre_anterior_com_atual[9],
            ltf_diferenca_entre_anterior_com_atual[10],
            ltf_diferenca_entre_anterior_com_atual[11],
            ltf_diferenca_entre_anterior_com_atual[12],
            ltf_diferenca_entre_anterior_com_atual[13],
            ltf_diferenca_entre_anterior_com_atual[14],
            ltf_diferenca_entre_anterior_com_atual[15]
          );
      
        ltf_concurso_anterior[0] := ltf_bolas.concurso;
        ltf_concurso_anterior[1] := ltf_bolas.b_1;
        ltf_concurso_anterior[2] := ltf_bolas.b_2;
        ltf_concurso_anterior[3] := ltf_bolas.b_3;
        ltf_concurso_anterior[4] := ltf_bolas.b_4;
        ltf_concurso_anterior[5] := ltf_bolas.b_5;
        ltf_concurso_anterior[6] := ltf_bolas.b_6;
        ltf_concurso_anterior[7] := ltf_bolas.b_7;
        ltf_concurso_anterior[8] := ltf_bolas.b_8;
        ltf_concurso_anterior[9] := ltf_bolas.b_9;
        ltf_concurso_anterior[10] := ltf_bolas.b_10;
        ltf_concurso_anterior[11] := ltf_bolas.b_11;
        ltf_concurso_anterior[12] := ltf_bolas.b_12;
        ltf_concurso_anterior[13] := ltf_bolas.b_13;
        ltf_concurso_anterior[14] := ltf_bolas.b_14;
        ltf_concurso_anterior[15] := ltf_bolas.b_15;

    END LOOP;
  END;
$$;


/**
  Atualiza toda as combinações da lotofacil, relativo à uma combinação de um concurso específico.
 */
drop function if exists lotofacil.fn_ltf_atualizar_comparacao_de_bolas_na_mesma_coluna(numeric);
create function lotofacil.fn_ltf_atualizar_comparacao_de_bolas_na_mesma_coluna(concurso_numero numeric)
  returns void
  LANGUAGE plpgsql
  AS
  $$
  DECLARE
    ltf_bolas lotofacil.lotofacil_resultado_bolas%rowtype;
    refcursor_ltf_resultado_bolas REFCURSOR;

    reg_ltf_resultado_bolas lotofacil.lotofacil_resultado_bolas%rowtype;
    reg_ltf_novos_repetidos lotofacil.lotofacil_novos_repetidos%rowtype;

    ltf_novos_repetidos numeric[16];

    ltf_concurso_anterior numeric[26];
    ltf_diferenca_entre_anterior_com_atual numeric[26];
    b_primeira_vez boolean;

    qt_de_bolas_comuns_b1_a_b15 numeric;
    qt_de_bolas_subindo_b1_a_b15 numeric;
    qt_de_bolas_descendo_b1_a_b15 numeric;

    identificador_cmp_b_id numeric;

    valor_atual numeric;

    qt_igual_a_zero numeric;
    qt_negativa numeric;
    qt_positiva numeric;
    uA numeric;

  BEGIN

    /**
      Reseta os campos que serão atualizados.
     */
    Raise Notice 'Resetando campos cmp_b1 a cmp_b15';

    Update lotofacil.lotofacil_novos_repetidos SET
      cmp_b1 = 0, cmp_b2 = 0, cmp_b3 = 0, cmp_b4 = 0, cmp_b5 = 0, cmp_b6 = 0,
      cmp_b7 = 0, cmp_b8 = 0, cmp_b9 = 0, cmp_b10 = 0, cmp_b11 = 0, cmp_b12 = 0,
      cmp_b13 = 0, cmp_b14 = 0, cmp_b15 = 0;

    Raise Notice 'Campos cmp_b1 a cmp_b15 resetados';
    /**
      Obtém os valores dos campos do concurso escolhido.
     */
    Select * from lotofacil.lotofacil_resultado_bolas
      where concurso = concurso_numero;

    Open refcursor_ltf_resultado_bolas FOR
      Select * from lotofacil.lotofacil_resultado_bolas
    where concurso = concurso_numero;
    fetch refcursor_ltf_resultado_bolas into reg_ltf_resultado_bolas;

    if not found then
      Return;
    end if;

    Update lotofacil.lotofacil_novos_repetidos
      set
        cmp_b1 =  lotofacil.lotofacil_bolas.b_1 - reg_ltf_resultado_bolas.b_1,
        cmp_b2 =  lotofacil.lotofacil_bolas.b_2 - reg_ltf_resultado_bolas.b_2,
        cmp_b3 =  lotofacil.lotofacil_bolas.b_3 - reg_ltf_resultado_bolas.b_3,
        cmp_b4 =  lotofacil.lotofacil_bolas.b_4 - reg_ltf_resultado_bolas.b_4,
        cmp_b5 =  lotofacil.lotofacil_bolas.b_5 - reg_ltf_resultado_bolas.b_5,
        cmp_b6 =  lotofacil.lotofacil_bolas.b_6 - reg_ltf_resultado_bolas.b_6,
        cmp_b7 =  lotofacil.lotofacil_bolas.b_7 - reg_ltf_resultado_bolas.b_7,
        cmp_b8 =  lotofacil.lotofacil_bolas.b_8 - reg_ltf_resultado_bolas.b_8,
        cmp_b9 =  lotofacil.lotofacil_bolas.b_9 - reg_ltf_resultado_bolas.b_9,
        cmp_b10 =  lotofacil.lotofacil_bolas.b_10 - reg_ltf_resultado_bolas.b_10,
        cmp_b11 =  lotofacil.lotofacil_bolas.b_11 - reg_ltf_resultado_bolas.b_11,
        cmp_b12 =  lotofacil.lotofacil_bolas.b_12 - reg_ltf_resultado_bolas.b_12,
        cmp_b13 =  lotofacil.lotofacil_bolas.b_13 - reg_ltf_resultado_bolas.b_13,
        cmp_b14 =  lotofacil.lotofacil_bolas.b_14 - reg_ltf_resultado_bolas.b_14,
        cmp_b15 =  lotofacil.lotofacil_bolas.b_15 - reg_ltf_resultado_bolas.b_15
      from lotofacil.lotofacil_bolas
    where lotofacil.lotofacil_novos_repetidos.ltf_id = lotofacil.lotofacil_bolas.ltf_id;

    for reg_ltf_novos_repetidos IN
      Select * from lotofacil.lotofacil_novos_repetidos
        order by ltf_id LOOP

      ltf_novos_repetidos[1] := reg_ltf_novos_repetidos.cmp_b1;
      ltf_novos_repetidos[2] := reg_ltf_novos_repetidos.cmp_b2;
      ltf_novos_repetidos[3] := reg_ltf_novos_repetidos.cmp_b3;
      ltf_novos_repetidos[4] := reg_ltf_novos_repetidos.cmp_b4;
      ltf_novos_repetidos[5] := reg_ltf_novos_repetidos.cmp_b5;
      ltf_novos_repetidos[6] := reg_ltf_novos_repetidos.cmp_b6;
      ltf_novos_repetidos[7] := reg_ltf_novos_repetidos.cmp_b7;
      ltf_novos_repetidos[8] := reg_ltf_novos_repetidos.cmp_b8;
      ltf_novos_repetidos[9] := reg_ltf_novos_repetidos.cmp_b9;
      ltf_novos_repetidos[10] := reg_ltf_novos_repetidos.cmp_b10;
      ltf_novos_repetidos[11] := reg_ltf_novos_repetidos.cmp_b11;
      ltf_novos_repetidos[12] := reg_ltf_novos_repetidos.cmp_b12;
      ltf_novos_repetidos[13] := reg_ltf_novos_repetidos.cmp_b13;
      ltf_novos_repetidos[14] := reg_ltf_novos_repetidos.cmp_b14;
      ltf_novos_repetidos[15] := reg_ltf_novos_repetidos.cmp_b15;

      qt_igual_a_zero := 0;
      qt_negativa := 0;
      qt_positiva := 0;

      for uA in 1..15 LOOP
        if sign(ltf_novos_repetidos[uA]) = -1 then
          qt_negativa := qt_negativa + 1;
        elseif sign(ltf_novos_repetidos[uA]) = 0 then
          qt_igual_a_zero := qt_igual_a_zero + 1;
        elseif sign(ltf_novos_repetidos[uA]) = 1 THEN
          qt_positiva := qt_positiva + 1;
        END IF;
      END LOOP;

      Raise Notice 'Atualizando tabela lotofacil_novos_repetidos, ltf_id: %', reg_ltf_novos_repetidos.ltf_id;

      Update lotofacil.lotofacil_novos_repetidos set cmp_b_id = lotofacil.lotofacil_id_comparacao_de_bolas_na_mesma_coluna.cmp_b_id
        from lotofacil.lotofacil_id_comparacao_de_bolas_na_mesma_coluna
      where qt_de_bolas_comuns_b1_a_b15 = qt_igual_a_zero
      and qt_de_bolas_subindo_b1_a_b15 = qt_positiva
      and qt_de_bolas_descendo_b1_a_b15 = qt_negativa;

      Raise Notice 'ltf_id: % atualizado.', reg_ltf_novos_repetidos.ltf_id;

    END LOOP;




    /*
    		open cursor_jogo_concurso for
			Select jogo_tipo,
				concurso
			from ltk.jogo_bolas
			where jogo_tipo = strJogo
			group by jogo_tipo, concurso;
		fetch cursor_jogo_concurso into reg_jogo_concurso;
		if not found then
			return;
			*/

  END;
$$;

Select lotofacil.fn_ltf_atualizar_comparacao_de_bolas_na_mesma_coluna(1686);


/**
  Pega as combinações de novos x repetidos
 */
Drop view if exists lotofacil.v_lotofacil_novos_repetidos_bolas_na_mesma_coluna;
Create View lotofacil.v_lotofacil_novos_repetidos_bolas_na_mesma_coluna(
  cmp_b_id, qt_bolas_descendo_b1_a_b15, qt_bolas_comuns_b1_a_b15,  qt_bolas_subindo_b1_a_b15
)
  AS
  Select
    ltf_a.cmp_b_id,
    ltf_b.qt_bolas_descendo_b1_a_b15,
    ltf_b.qt_bolas_comuns_b1_a_b15,
    ltf_b.qt_bolas_subindo_b1_a_b15,
    count (*)::numeric as qt_vezes
  from lotofacil.lotofacil_novos_repetidos ltf_a left JOIN
    lotofacil.lotofacil_id_comparacao_de_bolas_na_mesma_coluna ltf_b
    on ltf_a.cmp_b_id = ltf_b.cmp_b_id
  group by
    ltf_a.cmp_b_id,
    qt_bolas_descendo_b1_a_b15,
    qt_bolas_comuns_b1_a_b15,
    qt_bolas_subindo_b1_a_b15
  order by qt_vezes desc;


/**
  Cria a view pra retornar as combinações.
 */
Drop View if exists lotofacil.v_lotofacil_resultado_comparacao_de_bolas_na_mesma_coluna;
Create View lotofacil.v_lotofacil_resultado_comparacao_de_bolas_na_mesma_coluna(cmp_b_id, qt_bolas_descendo_b1_a_b15,
  qt_bolas_comuns_b1_a_b15,  qt_bolas_subindo_b1_a_b15
) as
Select lotofacil_id_comparacao_de_bolas_na_mesma_coluna.cmp_b_id,
  qt_bolas_descendo_b1_a_b15,
  qt_bolas_comuns_b1_a_b15,
  qt_bolas_subindo_b1_a_b15,
  count(lotofacil_resultado_comparacao_de_bolas_na_mesma_coluna.cmp_b_id) as qt_vezes from lotofacil.lotofacil_id_comparacao_de_bolas_na_mesma_coluna
  left join lotofacil.lotofacil_resultado_comparacao_de_bolas_na_mesma_coluna
  on lotofacil_id_comparacao_de_bolas_na_mesma_coluna.cmp_b_id =
    lotofacil_resultado_comparacao_de_bolas_na_mesma_coluna.cmp_b_id
group by
  qt_bolas_comuns_b1_a_b15,
  qt_bolas_subindo_b1_a_b15,
  qt_bolas_descendo_b1_a_b15,
  lotofacil_id_comparacao_de_bolas_na_mesma_coluna.cmp_b_id
order by qt_vezes desc;

Drop function if exists lotofacil.fn_lotofacil_resultado_comparacao_de_bolas_na_mesma_coluna(numeric, numeric);
Create function lotofacil.fn_lotofacil_resultado_comparacao_de_bolas_na_mesma_coluna(numeric, numeric)
  returns
    table (
      cmp_b_id numeric,
      qt_bolas_descendo_b1_a_b15 numeric,
      qt_bolas_comuns_b1_a_b15 numeric
    ) language plpgsql
  as $$
  DECLARE
  BEGIN
    Return Query

      Select lotofacil_id_comparacao_de_bolas_na_mesma_coluna.cmp_b_id,
        lotofacil_id_comparacao_de_bolas_na_mesma_coluna.qt_bolas_descendo_b1_a_b15 as "<0",
        lotofacil_id_comparacao_de_bolas_na_mesma_coluna.qt_bolas_comuns_b1_a_b15 as "=0",
        lotofacil_id_comparacao_de_bolas_na_mesma_coluna.qt_bolas_subindo_b1_a_b15 as ">0",
        count(*) as qt_vezes from lotofacil.lotofacil_resultado_comparacao_de_bolas_na_mesma_coluna,
        lotofacil.lotofacil_id_comparacao_de_bolas_na_mesma_coluna
        where lotofacil_id_comparacao_de_bolas_na_mesma_coluna.cmp_b_id =
          lotofacil_resultado_comparacao_de_bolas_na_mesma_coluna.cmp_b_id
      group by
        qt_bolas_comuns_b1_a_b15,
        qt_bolas_subindo_b1_a_b15,
        qt_bolas_descendo_b1_a_b15,
        lotofacil_id_comparacao_de_bolas_na_mesma_coluna.cmp_b_id
      order by qt_vezes desc;

  END;
  $$;


