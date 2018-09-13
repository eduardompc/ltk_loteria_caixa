/**
  Autor: Fábio Moura de Oliveira
  Neste arquivo, irei implementar a lógica da frequência relativa a concursos anteriores.
  Quantas vezes a bola está se repetindo;
  Quantas vezes a bola ainda não saiu;
  Se a bola deixou de saiu desde o último concurso;
  Se a bola nunca saiu desde os concursos anteriores;

 */
DROP TABLE IF EXISTS d_sorte.d_sorte_resultado_num_frequencia;
CREATE TABLE d_sorte.d_sorte_resultado_num_frequencia (
  concurso_anterior NUMERIC NOT NULL,
  concurso          NUMERIC NOT NULL,

  freq_1            NUMERIC DEFAULT 0,
  freq_2            NUMERIC DEFAULT 0,
  freq_3            NUMERIC DEFAULT 0,
  freq_4            NUMERIC DEFAULT 0,
  freq_5            NUMERIC DEFAULT 0,
  freq_6            NUMERIC DEFAULT 0,
  freq_7            NUMERIC DEFAULT 0,
  freq_8            NUMERIC DEFAULT 0,
  freq_9            NUMERIC DEFAULT 0,
  freq_10           NUMERIC DEFAULT 0,
  freq_11           NUMERIC DEFAULT 0,
  freq_12           NUMERIC DEFAULT 0,
  freq_13           NUMERIC DEFAULT 0,
  freq_14           NUMERIC DEFAULT 0,
  freq_15           NUMERIC DEFAULT 0,
  freq_16           NUMERIC DEFAULT 0,
  freq_17           NUMERIC DEFAULT 0,
  freq_18           NUMERIC DEFAULT 0,
  freq_19           NUMERIC DEFAULT 0,
  freq_20           NUMERIC DEFAULT 0,
  freq_21           NUMERIC DEFAULT 0,
  freq_22           NUMERIC DEFAULT 0,
  freq_23           NUMERIC DEFAULT 0,
  freq_24           NUMERIC DEFAULT 0,
  freq_25           NUMERIC DEFAULT 0,
  freq_26           NUMERIC DEFAULT 0,
  freq_27           NUMERIC DEFAULT 0,
  freq_28           NUMERIC DEFAULT 0,
  freq_29           NUMERIC DEFAULT 0,
  freq_30           NUMERIC DEFAULT 0,
  freq_31           NUMERIC DEFAULT 0,

  CONSTRAINT d_sorte_resultado_num_frequencia_fk FOREIGN KEY (concurso) REFERENCES d_sorte.d_sorte_resultado_num (concurso)
  ON UPDATE CASCADE ON DELETE CASCADE,
  CONSTRAINT d_sorte_resultado_num_frequencia_chk CHECK (concurso_anterior <= concurso)
);

/**
  Esta tabela é semelhante à tabela d_sorte_resultado_num_frequência, entretanto,
  nesta tabela haverá um registro pra cada bola, ao invés de ter um único registro
  com 31 bolas.
  Isto servirá quando formos implementar uma view indicando se a bola ainda não saiu,
  está repetindo, se a bola é nova ou a bola deixou de sair.

  Obs: Toda vez que a tabela de resultado tiver algum registro deletado, atualizado ou inserido
  devemos atualizar a tabela de frequencia.
 */
DROP TABLE IF EXISTS d_sorte.d_sorte_resultado_num_bolas_frequencia;
CREATE TABLE d_sorte.d_sorte_resultado_num_bolas_frequencia (
  concurso_anterior NUMERIC  NOT NULL,
  concurso          NUMERIC  NOT NULL,
  bola              SMALLINT NOT NULL CHECK (bola BETWEEN 1 AND 31),
  frequencia        NUMERIC  NOT NULL CHECK (frequencia <> 0),
  CONSTRAINT d_sorte_resultado_num_bolas_frequencia_unk UNIQUE (concurso, bola),
  CONSTRAINT d_sorte_resultado_num_frequencia_fk FOREIGN KEY (concurso) REFERENCES d_sorte.d_sorte_resultado_num (concurso)
  ON UPDATE CASCADE ON DELETE CASCADE,
  CONSTRAINT d_sorte_resultado_num_frequencia_fk_2 FOREIGN KEY (concurso_anterior) REFERENCES d_sorte.d_sorte_resultado_num (concurso)
  ON UPDATE CASCADE ON DELETE CASCADE
);


/**
  
 */
DROP FUNCTION IF EXISTS d_sorte.fn_d_sorte_resultado_num_frequencia();
CREATE FUNCTION d_sorte.fn_d_sorte_resultado_num_frequencia()
  RETURNS VOID
LANGUAGE plpgsql
AS $$
DECLARE
  d_sorte_resultado_num_atual d_sorte.d_sorte_resultado_num%ROWTYPE;
  frequencia_num_anterior     NUMERIC [32];
  frequencia_num_atual        NUMERIC [32];
  resultado_num_atual         NUMERIC [32];
  b_primeira_vez              BOOLEAN;

BEGIN
  -- Deleta as tabelas.
  DELETE FROM d_sorte.d_sorte_resultado_num_frequencia;
  DELETE FROM d_sorte.d_sorte_resultado_num_bolas_frequencia;

  b_primeira_vez := TRUE;
  FOR d_sorte_resultado_num_atual IN SELECT *
                                     FROM d_sorte.d_sorte_resultado_num
                                     ORDER BY concurso ASC
  LOOP
    -- Se é a primeira vez do loop, devemos zera a variável frequencia_anterior e 
    -- em seguida, atribuir à frequência o valor do campo num das bolas e em seguida,
    -- definir como -1, as bolas que não saíram.
    IF b_primeira_vez = TRUE
    THEN
      b_primeira_vez := FALSE;

      frequencia_num_anterior [0] := d_sorte_resultado_num_atual.concurso;
      frequencia_num_anterior [1] := d_sorte_resultado_num_atual.num_1;
      frequencia_num_anterior [2] := d_sorte_resultado_num_atual.num_2;
      frequencia_num_anterior [3] := d_sorte_resultado_num_atual.num_3;
      frequencia_num_anterior [4] := d_sorte_resultado_num_atual.num_4;
      frequencia_num_anterior [5] := d_sorte_resultado_num_atual.num_5;
      frequencia_num_anterior [6] := d_sorte_resultado_num_atual.num_6;
      frequencia_num_anterior [7] := d_sorte_resultado_num_atual.num_7;
      frequencia_num_anterior [8] := d_sorte_resultado_num_atual.num_8;
      frequencia_num_anterior [9] := d_sorte_resultado_num_atual.num_9;
      frequencia_num_anterior [10] := d_sorte_resultado_num_atual.num_10;
      frequencia_num_anterior [11] := d_sorte_resultado_num_atual.num_11;
      frequencia_num_anterior [12] := d_sorte_resultado_num_atual.num_12;
      frequencia_num_anterior [13] := d_sorte_resultado_num_atual.num_13;
      frequencia_num_anterior [14] := d_sorte_resultado_num_atual.num_14;
      frequencia_num_anterior [15] := d_sorte_resultado_num_atual.num_15;
      frequencia_num_anterior [16] := d_sorte_resultado_num_atual.num_16;
      frequencia_num_anterior [17] := d_sorte_resultado_num_atual.num_17;
      frequencia_num_anterior [18] := d_sorte_resultado_num_atual.num_18;
      frequencia_num_anterior [19] := d_sorte_resultado_num_atual.num_19;
      frequencia_num_anterior [20] := d_sorte_resultado_num_atual.num_20;
      frequencia_num_anterior [21] := d_sorte_resultado_num_atual.num_21;
      frequencia_num_anterior [22] := d_sorte_resultado_num_atual.num_22;
      frequencia_num_anterior [23] := d_sorte_resultado_num_atual.num_23;
      frequencia_num_anterior [24] := d_sorte_resultado_num_atual.num_24;
      frequencia_num_anterior [25] := d_sorte_resultado_num_atual.num_25;
      frequencia_num_anterior [26] := d_sorte_resultado_num_atual.num_26;
      frequencia_num_anterior [27] := d_sorte_resultado_num_atual.num_27;
      frequencia_num_anterior [28] := d_sorte_resultado_num_atual.num_28;
      frequencia_num_anterior [29] := d_sorte_resultado_num_atual.num_29;
      frequencia_num_anterior [30] := d_sorte_resultado_num_atual.num_30;
      frequencia_num_anterior [31] := d_sorte_resultado_num_atual.num_31;

      -- Nos atribuimentos acima, cada célula do arranjo frequencia_num_anterior, terá
      -- o valor 0 ou 1, 0 se a bola não saiu e 1 se saiu, entretanto, no arranjo
      -- frequencia_num_anterior, só pode ter números diferentes de zero, pois isto
      -- indica a quantidade de concurso que a bola saiu ou está se repetindo.
      -- Então, no arranjo 'frequencia_num_anterior', as bolas que não saíram terão um
      -- valor negativo de menos -1, como é a primeira terá este valor:
      FOR uA IN 1..31 LOOP

        IF frequencia_num_anterior [uA] = 0
        THEN
          frequencia_num_anterior [uA] := -1;
        END IF;

        -- Vamos aproveitar o loop e já inserir na tabela de frequencia: d_sorte_resultado_num_bolas_frequencia.
        INSERT INTO d_sorte.d_sorte_resultado_num_bolas_frequencia
        (
          concurso_anterior,
          concurso,
          bola,
          frequencia
        )
        VALUES
          (d_sorte_resultado_num_atual.concurso,
           d_sorte_resultado_num_atual.concurso,
           uA,
           frequencia_num_anterior[uA]
          );
      END LOOP;

      INSERT INTO d_sorte.d_sorte_resultado_num_frequencia (concurso_anterior, concurso, freq_1, freq_2, freq_3, freq_4, freq_5, freq_6, freq_7, freq_8, freq_9, freq_10, freq_11, freq_12, freq_13, freq_14, freq_15, freq_16, freq_17, freq_18, freq_19, freq_20, freq_21, freq_22, freq_23, freq_24, freq_25, freq_26, freq_27, freq_28, freq_29, freq_30, freq_31)
      VALUES (
        d_sorte_resultado_num_atual.concurso,
        d_sorte_resultado_num_atual.concurso,
        frequencia_num_anterior [1],
        frequencia_num_anterior [2], frequencia_num_anterior [3],
        frequencia_num_anterior [4], frequencia_num_anterior [5],
        frequencia_num_anterior [6], frequencia_num_anterior [7],
        frequencia_num_anterior [8], frequencia_num_anterior [9],
        frequencia_num_anterior [10], frequencia_num_anterior [11],
        frequencia_num_anterior [12], frequencia_num_anterior [13],
        frequencia_num_anterior [14], frequencia_num_anterior [15],
        frequencia_num_anterior [16], frequencia_num_anterior [17],
        frequencia_num_anterior [18], frequencia_num_anterior [19],
        frequencia_num_anterior [20], frequencia_num_anterior [21],
        frequencia_num_anterior [22], frequencia_num_anterior [23],
        frequencia_num_anterior [24], frequencia_num_anterior [25],
        frequencia_num_anterior [26], frequencia_num_anterior [27],
        frequencia_num_anterior [28], frequencia_num_anterior [29],
        frequencia_num_anterior [30], frequencia_num_anterior [31]
      );

      CONTINUE;
    END IF;
    
    -- Armazena o resultado dos campos num atual no vetor 'resultado_num_atual', isto serve
    -- pra ficar mais fácil manipular os dados.
    resultado_num_atual[0] := d_sorte_resultado_num_atual.concurso;
    resultado_num_atual[1] := d_sorte_resultado_num_atual.num_1;
    resultado_num_atual[2] := d_sorte_resultado_num_atual.num_2;
    resultado_num_atual[3] := d_sorte_resultado_num_atual.num_3;
    resultado_num_atual[4] := d_sorte_resultado_num_atual.num_4;
    resultado_num_atual[5] := d_sorte_resultado_num_atual.num_5;
    resultado_num_atual[6] := d_sorte_resultado_num_atual.num_6;
    resultado_num_atual[7] := d_sorte_resultado_num_atual.num_7;
    resultado_num_atual[8] := d_sorte_resultado_num_atual.num_8;
    resultado_num_atual[9] := d_sorte_resultado_num_atual.num_9;
    resultado_num_atual[10] := d_sorte_resultado_num_atual.num_10;
    resultado_num_atual[11] := d_sorte_resultado_num_atual.num_11;
    resultado_num_atual[12] := d_sorte_resultado_num_atual.num_12;
    resultado_num_atual[13] := d_sorte_resultado_num_atual.num_13;
    resultado_num_atual[14] := d_sorte_resultado_num_atual.num_14;
    resultado_num_atual[15] := d_sorte_resultado_num_atual.num_15;
    resultado_num_atual[16] := d_sorte_resultado_num_atual.num_16;
    resultado_num_atual[17] := d_sorte_resultado_num_atual.num_17;
    resultado_num_atual[18] := d_sorte_resultado_num_atual.num_18;
    resultado_num_atual[19] := d_sorte_resultado_num_atual.num_19;
    resultado_num_atual[20] := d_sorte_resultado_num_atual.num_20;
    resultado_num_atual[21] := d_sorte_resultado_num_atual.num_21;
    resultado_num_atual[22] := d_sorte_resultado_num_atual.num_22;
    resultado_num_atual[23] := d_sorte_resultado_num_atual.num_23;
    resultado_num_atual[24] := d_sorte_resultado_num_atual.num_24;
    resultado_num_atual[25] := d_sorte_resultado_num_atual.num_25;
    resultado_num_atual[26] := d_sorte_resultado_num_atual.num_26;
    resultado_num_atual[27] := d_sorte_resultado_num_atual.num_27;
    resultado_num_atual[28] := d_sorte_resultado_num_atual.num_28;
    resultado_num_atual[29] := d_sorte_resultado_num_atual.num_29;
    resultado_num_atual[30] := d_sorte_resultado_num_atual.num_30;
    resultado_num_atual[31] := d_sorte_resultado_num_atual.num_31;

    -- Percorre todos as bolas, se a bola saiu, iremos verificar a frequência anterior
    -- e atualizar o campo frequencia_num_atual.

    -- No índice 0, será armazenado o número do concurso.
    frequencia_num_atual[0] := d_sorte_resultado_num_atual.concurso;
    for uA in 1..31 LOOP

      -- Se é igual a 1, quer dizer que a bola saiu.
      if resultado_num_atual[uA] = 1 then

        -- Frequência anterior negativa quer dizer que número não está saindo.
        if sign(frequencia_num_anterior[uA]) = -1 then
          frequencia_num_atual[uA] := 1;

        -- Esta frequência nunca ocorrerá.
        ELSEIF sign(frequencia_num_anterior[uA]) = 0 THEN
          frequencia_num_atual[uA] := 1;

        -- Frequencia anterior positiva quer dizer que número não está saindo,
        -- então, a frequencia atual será o incremento do valor da frequencia
        -- anterior.
        elseif sign(frequencia_num_anterior[uA]) = 1 THEN
          frequencia_num_atual[uA] := frequencia_num_anterior[uA] + 1;
        end if;

      -- A condição abaixo quer dizer que o número não saiu.
      Elseif resultado_num_atual[uA] = 0 then
        -- Frequencia anterior negativa, quer dizer que o número não está saindo
        -- e como no resultado atual a bola ainda não saiu,
        -- a frequência atual será o incremento da frequência anterior com o valor -1.
        if sign(frequencia_num_anterior[uA]) = -1 then
          frequencia_num_atual[uA] := frequencia_num_anterior[uA] - 1;

        -- Esta frequência nunca ocorrerá.
        ELSEIF sign(frequencia_num_anterior[uA]) = 0 THEN
          frequencia_num_atual[uA] := -1;

        -- Frequencia anterior positiva quer dizer que número está saindo,
        -- neste caso, a bola atual não saiu então o valor será -1.
        elseif sign(frequencia_num_anterior[uA]) = 1 THEN
          frequencia_num_atual[uA] := -1;
        end if;
      END IF;

      -- Já iremos inserir os valores pra a tabela 'd_sorte_resultado_num_bolas_frequencia'.
      -- O número do concurso está armazenado no índice 0 dos vetores 'frequencia_num_anterior'
      -- e 'frequencia_num_atual'.

      Insert into d_sorte.d_sorte_resultado_num_bolas_frequencia(concurso_anterior, concurso, bola, frequencia) VALUES
        (frequencia_num_anterior[0], frequencia_num_atual[0], uA, frequencia_num_atual[uA]);

      -- Aqui, passamos o valor atual da célula da 'frequencia_num_atual' pra 'frequencia_num_anterior'.
      -- Observe que na posição 0 do vetor estão os concurso, não podemos sobrescrever ainda 'frequencia_num_anterior'.
      frequencia_num_anterior[uA] := frequencia_num_atual[uA];

    END LOOP;
    
    -- Agora, iremos inserir na tabela 'd_sorte_resultado_num_frequencia'.
    INSERT INTO d_sorte.d_sorte_resultado_num_frequencia (concurso_anterior, concurso, freq_1, freq_2, freq_3, freq_4, freq_5, freq_6, freq_7, freq_8, freq_9, freq_10, freq_11, freq_12, freq_13, freq_14, freq_15, freq_16, freq_17, freq_18, freq_19, freq_20, freq_21, freq_22, freq_23, freq_24, freq_25, freq_26, freq_27, freq_28, freq_29, freq_30, freq_31)
          VALUES (
            frequencia_num_anterior[0],
            frequencia_num_atual[0],
            frequencia_num_atual[1],
            frequencia_num_atual[2], frequencia_num_atual[3],
            frequencia_num_atual[4], frequencia_num_atual[5],
            frequencia_num_atual[6], frequencia_num_atual[7],
            frequencia_num_atual[8], frequencia_num_atual[9],
            frequencia_num_atual[10], frequencia_num_atual[11],
            frequencia_num_atual[12], frequencia_num_atual[13],
            frequencia_num_atual[14], frequencia_num_atual[15],
            frequencia_num_atual[16], frequencia_num_atual[17],
            frequencia_num_atual[18], frequencia_num_atual[19],
            frequencia_num_atual[20], frequencia_num_atual[21],
            frequencia_num_atual[22], frequencia_num_atual[23],
            frequencia_num_atual[24], frequencia_num_atual[25],
            frequencia_num_atual[26], frequencia_num_atual[27],
            frequencia_num_atual[28], frequencia_num_atual[29],
            frequencia_num_atual[30], frequencia_num_atual[31]
          );

    -- Agora, sim, não precisamos mais de frequencia_num_anterior, então, devemos
    -- copiar o número do concurso da frequencia atual pra a frequencia anterior
    -- pois quando formos iterar no próximo loop teremos a frequência que estava
    -- na última iteração.
    frequencia_num_anterior[0] := frequencia_num_atual[0];

  END LOOP;
END;
$$;

Select from d_sorte.fn_d_sorte_resultado_num_frequencia();

Drop view if exists d_sorte.v_d_sorte_resultado_num_bolas_frequencia;
Create View d_sorte.v_d_sorte_resultado_num_bolas_frequencia AS
SELECT concurso_anterior, concurso, bola, frequencia,
  case
  when frequencia < -1 THEN
    'ainda_nao_saiu'
  when frequencia = -1 then
    'deixou_de_sair'
  when frequencia = 1 then
    'novo'
  when frequencia > 1 then
    'repetindo'
  end as frequencia_status
  from d_sorte.d_sorte_resultado_num_bolas_frequencia
  order by concurso desc, frequencia desc, bola asc;



