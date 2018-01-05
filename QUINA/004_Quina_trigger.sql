/**
  Gatilhos (triggers) que são disparados quando houver algum inserção na tabela lotofacil_resultado_num.
 */

drop trigger if exists tg_quina_resultado_num on ltk_quina.quina_resultado_num;

drop function if exists ltk_quina.fn_quina_resultado_num();
CREATE FUNCTION ltk_quina.fn_quina_resultado_num()
  RETURNS TRIGGER
LANGUAGE plpgsql
AS $$
DECLARE
  -- Armazena as 80 bolas, colocamos 81 pois, irei começar de 1, mas o arranjo é baseado em zero.
  resultado_num numeric[81];

  -- Indica o identificador ltf_id do concurso.
  quina_id_concurso numeric;
BEGIN

  if TG_OP = 'DELETE' Or TG_OP = 'UPDATE' THEN
    Delete from ltk_quina.quina_resultado_bolas where concurso = old.concurso;
    Delete from ltk_quina.quina_resultado_par_impar where concurso = old.concurso;
    Delete from ltk_quina.quina_resultado_primo where concurso = old.concurso;

    Delete from ltk_quina.quina_resultado_horizontal where concurso = old.concurso;
    Delete from ltk_quina.quina_resultado_vertical where concurso = old.concurso;
    Delete from ltk_quina.quina_resultado_diagonal where concurso = old.concurso;
    Delete from ltk_quina.quina_resultado_quadrante where concurso = old.concurso;

    Delete from ltk_quina.quina_resultado_b1 where concurso = old.concurso;
    Delete from ltk_quina.quina_resultado_b1_b5 where concurso = old.concurso;
    Delete from ltk_quina.quina_resultado_b1_b3_b5 where concurso = old.concurso;

    Delete from ltk_quina.quina_resultado_grupo_1_bola where concurso = old.concurso;
    Delete from ltk_quina.quina_resultado_grupo_2_bolas where concurso = old.concurso;
    Delete from ltk_quina.quina_resultado_grupo_3_bolas where concurso = old.concurso;
    Delete from ltk_quina.quina_resultado_grupo_4_bolas where concurso = old.concurso;

    -- Se é delete retorna.
    if tg_op = 'DELETE' then
      return Old;
    END IF;

  END IF;

  -- Só chegaremos aqui, se for uma inserção ou atualização.
  resultado_num[1] := new.num_1;
  resultado_num[2] := new.num_2;
  resultado_num[3] := new.num_3;
  resultado_num[4] := new.num_4;
  resultado_num[5] := new.num_5;
  resultado_num[6] := new.num_6;
  resultado_num[7] := new.num_7;
  resultado_num[8] := new.num_8;
  resultado_num[9] := new.num_9;
  resultado_num[10] := new.num_10;
  resultado_num[11] := new.num_11;
  resultado_num[12] := new.num_12;
  resultado_num[13] := new.num_13;
  resultado_num[14] := new.num_14;
  resultado_num[15] := new.num_15;
  resultado_num[16] := new.num_16;
  resultado_num[17] := new.num_17;
  resultado_num[18] := new.num_18;
  resultado_num[19] := new.num_19;
  resultado_num[20] := new.num_20;
  resultado_num[21] := new.num_21;
  resultado_num[22] := new.num_22;
  resultado_num[23] := new.num_23;
  resultado_num[24] := new.num_24;
  resultado_num[25] := new.num_25;
  resultado_num[26] := new.num_26;
  resultado_num[27] := new.num_27;
  resultado_num[28] := new.num_28;
  resultado_num[29] := new.num_29;
  resultado_num[30] := new.num_30;
  resultado_num[31] := new.num_31;
  resultado_num[32] := new.num_32;
  resultado_num[33] := new.num_33;
  resultado_num[34] := new.num_34;
  resultado_num[35] := new.num_35;
  resultado_num[36] := new.num_36;
  resultado_num[37] := new.num_37;
  resultado_num[38] := new.num_38;
  resultado_num[39] := new.num_39;
  resultado_num[40] := new.num_40;
  resultado_num[41] := new.num_41;
  resultado_num[42] := new.num_42;
  resultado_num[43] := new.num_43;
  resultado_num[44] := new.num_44;
  resultado_num[45] := new.num_45;
  resultado_num[46] := new.num_46;
  resultado_num[47] := new.num_47;
  resultado_num[48] := new.num_48;
  resultado_num[49] := new.num_49;
  resultado_num[50] := new.num_50;
  resultado_num[51] := new.num_51;
  resultado_num[52] := new.num_52;
  resultado_num[53] := new.num_53;
  resultado_num[54] := new.num_54;
  resultado_num[55] := new.num_55;
  resultado_num[56] := new.num_56;
  resultado_num[57] := new.num_57;
  resultado_num[58] := new.num_58;
  resultado_num[59] := new.num_59;
  resultado_num[60] := new.num_60;
  resultado_num[61] := new.num_61;
  resultado_num[62] := new.num_62;
  resultado_num[63] := new.num_63;
  resultado_num[64] := new.num_64;
  resultado_num[65] := new.num_65;
  resultado_num[66] := new.num_66;
  resultado_num[67] := new.num_67;
  resultado_num[68] := new.num_68;
  resultado_num[69] := new.num_69;
  resultado_num[70] := new.num_70;
  resultado_num[71] := new.num_71;
  resultado_num[72] := new.num_72;
  resultado_num[73] := new.num_73;
  resultado_num[74] := new.num_74;
  resultado_num[75] := new.num_75;
  resultado_num[76] := new.num_76;
  resultado_num[77] := new.num_77;
  resultado_num[78] := new.num_78;
  resultado_num[79] := new.num_79;
  resultado_num[80] := new.num_80;

  Raise Notice 'quina_id: %, concurso: %', new.quina_id, quina_id_concurso;

  EXECUTE ltk_quina.fn_quina_resultado_bolas(new.concurso, resultado_num);
  EXECUTE ltk_quina.fn_quina_resultado_par_impar(new.concurso, resultado_num);
  EXECUTE ltk_quina.fn_quina_resultado_primo(new.concurso, resultado_num);

  EXECUTE ltk_quina.fn_quina_resultado_horizontal(new.concurso, resultado_num);
  EXECUTE ltk_quina.fn_quina_resultado_vertical(new.concurso, resultado_num);
  EXECUTE ltk_quina.fn_quina_resultado_diagonal(new.concurso, resultado_num);

  EXECUTE ltk_quina.fn_quina_resultado_quadrante(new.concurso, resultado_num);

  Raise Notice 'Concurso: %', new.concurso;
    RETURN new;
END $$;

-- Cria o trigger
CREATE TRIGGER tg_quina_resultado_num
AFTER INSERT OR DELETE OR UPDATE
  ON ltk_quina.quina_resultado_num
FOR EACH ROW
EXECUTE PROCEDURE ltk_quina.fn_quina_resultado_num();


Drop TRIGGER if exists tg_quina_resultado_num_antes on ltk_quina.quina_resultado_num;
Drop function if exists ltk_quina.fn_quina_resultado_num_antes();

/**
  Recupera o identificador quina_id, antes de inserir dados na tabela quina_resultado_num.
 */
create function ltk_quina.fn_quina_resultado_num_antes()
  returns TRIGGER
  LANGUAGE plpgsql
  as $$
  declare
  BEGIN
    if tg_op = 'INSERT' or tg_op = 'UPDATE' then
    Select quina_id into New.quina_id from ltk_quina.quina_num
      WHERE
        num_1 = NEW.num_1 and
        num_2 = NEW.num_2 and
        num_3 = NEW.num_3 and
        num_4 = NEW.num_4 and
        num_5 = NEW.num_5 and
        num_6 = NEW.num_6 and
        num_7 = NEW.num_7 and
        num_8 = NEW.num_8 and
        num_9 = NEW.num_9 and
        num_10 = NEW.num_10 and
        num_11 = NEW.num_11 and
        num_12 = NEW.num_12 and
        num_13 = NEW.num_13 and
        num_14 = NEW.num_14 and
        num_15 = NEW.num_15 and
        num_16 = NEW.num_16 and
        num_17 = NEW.num_17 and
        num_18 = NEW.num_18 and
        num_19 = NEW.num_19 and
        num_20 = NEW.num_20 and
        num_21 = NEW.num_21 and
        num_22 = NEW.num_22 and
        num_23 = NEW.num_23 and
        num_24 = NEW.num_24 and
        num_25 = NEW.num_25 and
        num_26 = NEW.num_26 and
        num_27 = NEW.num_27 and
        num_28 = NEW.num_28 and
        num_29 = NEW.num_29 and
        num_30 = NEW.num_30 and
        num_31 = NEW.num_31 and
        num_32 = NEW.num_32 and
        num_33 = NEW.num_33 and
        num_34 = NEW.num_34 and
        num_35 = NEW.num_35 and
        num_36 = NEW.num_36 and
        num_37 = NEW.num_37 and
        num_38 = NEW.num_38 and
        num_39 = NEW.num_39 and
        num_40 = NEW.num_40 and
        num_41 = NEW.num_41 and
        num_42 = NEW.num_42 and
        num_43 = NEW.num_43 and
        num_44 = NEW.num_44 and
        num_45 = NEW.num_45 and
        num_46 = NEW.num_46 and
        num_47 = NEW.num_47 and
        num_48 = NEW.num_48 and
        num_49 = NEW.num_49 and
        num_50 = NEW.num_50 and
        num_51 = NEW.num_51 and
        num_52 = NEW.num_52 and
        num_53 = NEW.num_53 and
        num_54 = NEW.num_54 and
        num_55 = NEW.num_55 and
        num_56 = NEW.num_56 and
        num_57 = NEW.num_57 and
        num_58 = NEW.num_58 and
        num_59 = NEW.num_59 and
        num_60 = NEW.num_60 and
        num_61 = NEW.num_61 and
        num_62 = NEW.num_62 and
        num_63 = NEW.num_63 and
        num_64 = NEW.num_64 and
        num_65 = NEW.num_65 and
        num_66 = NEW.num_66 and
        num_67 = NEW.num_67 and
        num_68 = NEW.num_68 and
        num_69 = NEW.num_69 and
        num_70 = NEW.num_70 and
        num_71 = NEW.num_71 and
        num_72 = NEW.num_72 and
        num_73 = NEW.num_73 and
        num_74 = NEW.num_74 and
        num_75 = NEW.num_75 and
        num_76 = NEW.num_76 and
        num_77 = NEW.num_77 and
        num_78 = NEW.num_78 and
        num_79 = NEW.num_79 and
        num_80 = NEW.NUM_80 and
        quina_qt = 5;

      return new;
    ELSE
      return old;
    end if;

  END;
  $$;

create TRIGGER tg_quina_resultado_num_antes
  before insert or delete or UPDATE
  on ltk_quina.quina_resultado_num
  for each ROW
  execute procedure ltk_quina.fn_quina_resultado_num_antes();

/**

 */

/**
  Função pra atualizar o campo ltf_id da tabela ltk_quina.quina_num.
 */

drop function if exists ltk_quina.fn_atualizar_quina_num_ltf_id();
create function ltk_quina.fn_atualizar_quina_num_ltf_id()
  RETURNS void
  LANGUAGE plpgsql
  as $$
    DECLARE
      reg_ltf_res_num ltk_quina.quina_resultado_num%rowtype;
  BEGIN
    for reg_ltf_res_num IN
      Select * from ltk_quina.quina_resultado_num
      order by concurso desc LOOP
      if reg_ltf_res_num.quina_id is null then
        Raise Notice 'Atualizado concurso: %', reg_ltf_res_num.concurso;
        Update ltk_quina.quina_resultado_num set concurso = reg_ltf_res_num.concurso
          where concurso = reg_ltf_res_num.concurso;
      END IF;
    END LOOP;
  END;$$;

drop function if exists ltk_quina.fn_atualizar_quina_num_quina_id();
create function ltk_quina.fn_atualizar_quina_num_quina_id()
  returns void
  LANGUAGE plpgsql
as $$
  DECLARE
  BEGIN
    Update ltk_quina.quina_resultado_num quina_res set quina_id = quina_num.quina_id
  from ltk_quina.quina_num
    where
      quina_num.num_1 = quina_res.num_1 and
        quina_num.num_2 = quina_res.num_2 and
        quina_num.num_3 = quina_res.num_3 and
        quina_num.num_4 = quina_res.num_4 and
        quina_num.num_5 = quina_res.num_5 and
        quina_num.num_6 = quina_res.num_6 and
        quina_num.num_7 = quina_res.num_7 and
        quina_num.num_8 = quina_res.num_8 and
        quina_num.num_9 = quina_res.num_9 and
        quina_num.num_10 = quina_res.num_10 and
        quina_num.num_11 = quina_res.num_11 and
        quina_num.num_12 = quina_res.num_12 and
        quina_num.num_13 = quina_res.num_13 and
        quina_num.num_14 = quina_res.num_14 and
        quina_num.num_15 = quina_res.num_15 and
        quina_num.num_16 = quina_res.num_16 and
        quina_num.num_17 = quina_res.num_17 and
        quina_num.num_18 = quina_res.num_18 and
        quina_num.num_19 = quina_res.num_19 and
        quina_num.num_20 = quina_res.num_20 and
        quina_num.num_21 = quina_res.num_21 and
        quina_num.num_22 = quina_res.num_22 and
        quina_num.num_23 = quina_res.num_23 and
        quina_num.num_24 = quina_res.num_24 and
        quina_num.num_25 = quina_res.num_25 and
        quina_num.num_26 = quina_res.num_26 and
        quina_num.num_27 = quina_res.num_27 and
        quina_num.num_28 = quina_res.num_28 and
        quina_num.num_29 = quina_res.num_29 and
        quina_num.num_30 = quina_res.num_30 and
        quina_num.num_31 = quina_res.num_31 and
        quina_num.num_32 = quina_res.num_32 and
        quina_num.num_33 = quina_res.num_33 and
        quina_num.num_34 = quina_res.num_34 and
        quina_num.num_35 = quina_res.num_35 and
        quina_num.num_36 = quina_res.num_36 and
        quina_num.num_37 = quina_res.num_37 and
        quina_num.num_38 = quina_res.num_38 and
        quina_num.num_39 = quina_res.num_39 and
        quina_num.num_40 = quina_res.num_40 and
        quina_num.num_41 = quina_res.num_41 and
        quina_num.num_42 = quina_res.num_42 and
        quina_num.num_43 = quina_res.num_43 and
        quina_num.num_44 = quina_res.num_44 and
        quina_num.num_45 = quina_res.num_45 and
        quina_num.num_46 = quina_res.num_46 and
        quina_num.num_47 = quina_res.num_47 and
        quina_num.num_48 = quina_res.num_48 and
        quina_num.num_49 = quina_res.num_49 and
        quina_num.num_50 = quina_res.num_50 and
        quina_num.num_51 = quina_res.num_51 and
        quina_num.num_52 = quina_res.num_52 and
        quina_num.num_53 = quina_res.num_53 and
        quina_num.num_54 = quina_res.num_54 and
        quina_num.num_55 = quina_res.num_55 and
        quina_num.num_56 = quina_res.num_56 and
        quina_num.num_57 = quina_res.num_57 and
        quina_num.num_58 = quina_res.num_58 and
        quina_num.num_59 = quina_res.num_59 and
        quina_num.num_60 = quina_res.num_60 and
        quina_num.num_61 = quina_res.num_61 and
        quina_num.num_62 = quina_res.num_62 and
        quina_num.num_63 = quina_res.num_63 and
        quina_num.num_64 = quina_res.num_64 and
        quina_num.num_65 = quina_res.num_65 and
        quina_num.num_66 = quina_res.num_66 and
        quina_num.num_67 = quina_res.num_67 and
        quina_num.num_68 = quina_res.num_68 and
        quina_num.num_69 = quina_res.num_69 and
        quina_num.num_70 = quina_res.num_70 and
        quina_num.num_71 = quina_res.num_71 and
        quina_num.num_72 = quina_res.num_72 and
        quina_num.num_73 = quina_res.num_73 and
        quina_num.num_74 = quina_res.num_74 and
        quina_num.num_75 = quina_res.num_75 and
        quina_num.num_76 = quina_res.num_76 and
        quina_num.num_77 = quina_res.num_77 and
        quina_num.num_78 = quina_res.num_78 and
        quina_num.num_79 = quina_res.num_79 and
        quina_num.num_80 = quina_res.NUM_80
        and quina_num.quina_qt = 5;

  END;
  $$;


/*
  Esta função é chamada, quando qualquer registro for inserido na tabela ltk_quina.quina_num.
 */
drop function if exists ltk_quina.fn_quina_resultado_bolas(numeric, numeric[]);
create function ltk_quina.fn_quina_resultado_bolas(concurso_novo numeric, resultado_num numeric[]) returns VOID
  LANGUAGE plpgsql
  as $$
  DECLARE
    -- Cada vez que uma bola é sorteada, incrementa esta variável.
    contador_bolas numeric;

    -- Serve para armazenar as bolas, para poder inserir dentro das tabelas
    resultado_bolas numeric[81];

    -- Pra percorrer o arranjo resultado_num
    indice_num numeric;

    -- Serve pra armazenar o sql dinâmicamente.
    strSqlInsertBolas CHARACTER VARYING;
  BEGIN
    strSqlInsertBolas := '';
    contador_bolas := 0;

    for indice_num in 1..80 LOOP

        if resultado_num[indice_num] = 1 THEN
          contador_bolas := contador_bolas + 1;
          if contador_bolas > 5 THEN
            Raise EXCEPTION 'Erro, há mais de 5 bolas sorteadas';
          end if;
          strSqlInsertBolas := strSqlInsertBolas || ', ' || indice_num;
          resultado_bolas[contador_bolas] := indice_num;
        END IF;
      END LOOP;

      -- Executa a inserção na tabela.
      execute 'Insert into ltk_quina.quina_resultado_bolas (concurso, b1, b2, b3, b4, b5) values ('
        || concurso_novo || strSqlInsertBolas || ')';

      execute ltk_quina.fn_quina_resultado_b1_ate_b15(concurso_novo, resultado_bolas);

      execute ltk_quina.fn_quina_resultado_grupos(concurso_novo, resultado_bolas);

    END;
  $$;

/**
  Após inserir dados na tabela quina_resultado_bolas,
  devemos atualizar a tabela quina_resultado_quina_id, pra que a
  tabela tem o campo quina_id corresponde a combinação inserida.
 */
drop TRIGGER if EXISTS tg_quina_resultado_bolas on ltk_quina.quina_resultado_bolas;
drop function if exists ltk_quina.fn_quina_resultado_bolas_atualizar_quina_id();
create function ltk_quina.fn_quina_resultado_bolas_atualizar_quina_id()
  returns TRIGGER
  language plpgsql
  as $$
  declare
    novo_quina_id numeric default 0;
  begin
    if tg_op = 'INSERT' or tg_op = 'UPDATE' then
      Insert into ltk_quina.quina_resultado_quina_id (concurso, quina_id)
      Select new.concurso, quina_id from ltk_quina.quina_bolas
      where b1 = new.b1 and
        b2 = new.b2 AND
        b3 = new.b3 AND
        b4 = new.b4 AND
        b5 = new.b5;
      return New;
    else
      if tg_op = 'DELETE' then
        Delete from ltk_quina.quina_resultado_quina_id where concurso = old.concurso;
        return old;
      end if;
    END IF;
  END;
  $$;

create TRIGGER tg_quina_resultado_bolas
  after insert or update or delete
  on ltk_quina.quina_resultado_bolas
  for each ROW EXECUTE PROCEDURE  ltk_quina.fn_quina_resultado_bolas_atualizar_quina_id();







/**
  Sempre que a tabela quina_num, é inserida, atualizada ou deletada, esta função
  é chamada pra inserir, atualizar ou deletar os dados da tabelas relacionados a campos.
 */
drop function if exists ltk_quina.fn_quina_resultado_b1_ate_b15(numeric, numeric[]);
create function ltk_quina.fn_quina_resultado_b1_ate_b15(concurso_novo numeric, resultado_bolas numeric[]) returns void
  LANGUAGE plpgsql
  as $$
  DECLARE
  BEGIN
    Insert into ltk_quina.quina_resultado_b1 (concurso, b1_id)
      Select concurso_novo, b1_id from ltk_quina.quina_id_b1
    where b1 = resultado_bolas[1];

    Insert into ltk_quina.quina_resultado_b1_b5 (concurso, b1_b5_id)
      Select concurso_novo, b1_b5_id from ltk_quina.quina_id_b1_b5
    where b1 = resultado_bolas[1] and
          b5 = resultado_bolas[5];

    Insert into ltk_quina.quina_resultado_b1_b3_b5 (concurso, b1_b3_b5_id)
      Select concurso_novo, b1_b3_b5_id from ltk_quina.quina_id_b1_b3_b5
    where b1 = resultado_bolas[1] and b3 = resultado_bolas[3] and b5 = resultado_bolas[5];


  END;
  $$;

drop function if exists ltk_quina.fn_quina_resultado_grupos(numeric, numeric[]);
create function ltk_quina.fn_quina_resultado_grupos(concurso_novo numeric, resultado_bolas numeric[])
  returns void
  LANGUAGE plpgsql
  as $$
  DECLARE
    uA numeric default 0;
    uB numeric default 0; -- 2 colunas
    uC numeric default 0; -- 3 bolas
    uD numeric default 0; -- 4 bolas
  BEGIN

    for uA in 1..5 LOOP
        Insert into ltk_quina.quina_resultado_grupo_1_bola(concurso, grp_id)
          Select concurso_novo, grp_id from ltk_quina.quina_id_grupo_1_bola
            where bola1 = resultado_bolas[uA];
    END LOOP;


    for uA in 1..5 LOOP
      for uB in (uA + 1)..5 loop
        Insert into ltk_quina.quina_resultado_grupo_2_bolas(concurso, grp_id)
          Select concurso_novo, grp_id from ltk_quina.quina_id_grupo_2_bolas
            where bola1 = resultado_bolas[uA] AND
              bola2 = resultado_bolas[uB];
      END LOOP;
    END LOOP;



    for uA in 1..5 LOOP
      for uB in (uA + 1)..5 loop
        for uC in (uB + 1)..5 loop
          Insert into ltk_quina.quina_resultado_grupo_3_bolas(concurso, grp_id)
            Select concurso_novo, grp_id from ltk_quina.quina_id_grupo_3_bolas
            where bola1 = resultado_bolas[uA] AND
              bola2 = resultado_bolas[uB] AND
              bola3 = resultado_bolas[uC];
        END LOOP ;
      END LOOP;
    END LOOP;


    for uA in 1..5 LOOP
      for uB in (uA + 1)..5 loop
        for uC in (uB + 1)..5 loop
          for uD in (uC + 1)..5 loop
            Insert into ltk_quina.quina_resultado_grupo_4_bolas(concurso, grp_id)
            Select concurso_novo, grp_id from ltk_quina.quina_id_grupo_4_bolas
            where bola1 = resultado_bolas[uA] AND
              bola2 = resultado_bolas[uB] AND
              bola3 = resultado_bolas[uC] and
              bola4 = resultado_bolas[uD];

          END LOOP;
        END LOOP ;
      END LOOP;
    END LOOP;
  END;$$;


drop function if exists ltk_quina.fn_quina_resultado_par_impar(numeric, numeric[]);
create function ltk_quina.fn_quina_resultado_par_impar(concurso_novo numeric, resultado_num numeric[]) returns void
  LANGUAGE plpgsql
  as $$
  DECLARE
    qt_pares numeric default 0;
    qt_impares numeric default 0;
    uA numeric default 0;
  BEGIN
    qt_pares := 0;
    qt_impares := 0;
    
    uA := 1;
    for uA in 1..80 LOOP
      if mod(uA, 2) = 0 THEN 
        qt_pares := qt_pares + resultado_num[uA];
      ELSE 
        qt_impares := qt_impares + resultado_num[uA];
      End if;
    END LOOP;

    Raise Notice 'Par: %, Impar: %', qt_pares, qt_impares;

    if qt_pares + qt_impares <> 5 THEN
      raise EXCEPTION 'Quantidade de pares e impares é diferente de 5';
    END IF;

    Insert into ltk_quina.quina_resultado_par_impar (concurso, par_impar_id)
      Select concurso_novo, par_impar_id from ltk_quina.quina_id_par_impar
    where par = qt_pares and impar = qt_impares;
  END;$$;

drop function if exists ltk_quina.fn_quina_resultado_primo(numeric, numeric[]);
create function ltk_quina.fn_quina_resultado_primo(concurso_novo numeric, resultado_num numeric[]) returns VOID
 LANGUAGE plpgsql
AS $$
DECLARE
  qt_primo numeric default 0;
  qt_nao_primo numeric default 0;
  uA numeric default 0;
  texto_primo text;
begin
  qt_primo := resultado_num[2] + resultado_num[3] + resultado_num[5] + resultado_num[7] + resultado_num[11] +
              resultado_num[13] + resultado_num[17] + resultado_num[19] + resultado_num[23] + resultado_num[29] +
              resultado_num[31] + resultado_num[37] + resultado_num[41] + resultado_num[43] + resultado_num[47] +
              resultado_num[53] + resultado_num[59] + resultado_num[61] + resultado_num[67] + resultado_num[71] +
              resultado_num[73] + resultado_num[79];

  qt_nao_primo := resultado_num[1] + resultado_num[4] + resultado_num[6] + resultado_num[8] +
              resultado_num[9] + resultado_num[10] + resultado_num[12] + resultado_num[14] + resultado_num[15] +
              resultado_num[16] + resultado_num[18] + resultado_num[20] + resultado_num[21] + resultado_num[22] +
              resultado_num[24] + resultado_num[25] + resultado_num[26] + resultado_num[27] + resultado_num[28] +
              resultado_num[30] + resultado_num[32] + resultado_num[33] + resultado_num[34] + resultado_num[35] +
              resultado_num[36] + resultado_num[38] + resultado_num[39] + resultado_num[40] +
              resultado_num[42] + resultado_num[44] + resultado_num[45] + resultado_num[46] + resultado_num[48] +
              resultado_num[49] + resultado_num[50] + resultado_num[51] + resultado_num[52] + resultado_num[54] +
              resultado_num[55] + resultado_num[56] + resultado_num[57] + resultado_num[58] + resultado_num[60] +
              resultado_num[62] + resultado_num[63] + resultado_num[64] + resultado_num[65] + resultado_num[66] +
              resultado_num[68] + resultado_num[69] + resultado_num[70] + resultado_num[72] + resultado_num[74] +
              resultado_num[75] + resultado_num[76] + resultado_num[77] + resultado_num[78] + resultado_num[80];

  texto_primo := '';
  for uA in 1..80 LOOP
    if resultado_num[uA] = 1 then
      if texto_primo <> '' THEN
        texto_primo := texto_primo || ', ';
      END IF;
      texto_primo := texto_primo || uA;
    END IF;
  END LOOP;

  if qt_primo + qt_nao_primo <> 5 THEN
    Raise Notice 'Primos: %, x _nao_primos: %, números: %', qt_primo, qt_nao_primo, texto_primo;
    raise EXCEPTION 'Erro, primo, concurso: %, quantidade diferente de 5', concurso_novo;

    exit;
  END IF;


  Insert into ltk_quina.quina_resultado_primo(concurso, prm_id)
    Select concurso_novo, prm_id from ltk_quina.quina_id_primo
  where primo = qt_primo and nao_primo = qt_nao_primo;
end;$$;


drop function if exists ltk_quina.fn_quina_resultado_horizontal(numeric, numeric[]);
create function ltk_quina.fn_quina_resultado_horizontal(concurso_novo numeric, resultado_num numeric[]) returns VOID
 LANGUAGE plpgsql
AS $$
DECLARE
  qt_hrz_1 numeric default 0;
  qt_hrz_2 numeric default 0;
  qt_hrz_3 numeric default 0;
  qt_hrz_4 numeric default 0;
begin
  qt_hrz_1 :=  resultado_num[1] +  resultado_num[2] +  resultado_num[3] + 	resultado_num[4] +
               resultado_num[5] +  resultado_num[6] +  resultado_num[7] + 	resultado_num[8] +
               resultado_num[9] +  resultado_num[10] + resultado_num[11] + 	resultado_num[12] +
               resultado_num[13] + resultado_num[14] + resultado_num[15] + 	resultado_num[16] +
               resultado_num[17] + resultado_num[18] + resultado_num[19] + 	resultado_num[20];

  qt_hrz_2 :=	 resultado_num[21] + resultado_num[22] + resultado_num[23] + 	resultado_num[24] +
               resultado_num[25] + resultado_num[26] + resultado_num[27] + 	resultado_num[28] +
               resultado_num[29] + resultado_num[30] + resultado_num[31] + 	resultado_num[32] +
               resultado_num[33] + resultado_num[34] + resultado_num[35] + 	resultado_num[36] +
               resultado_num[37] + resultado_num[38] + resultado_num[39] + 	resultado_num[40];

  qt_hrz_3 :=	 resultado_num[41] + 	resultado_num[42] + resultado_num[43] + resultado_num[44] +
               resultado_num[45] + 	resultado_num[46] + resultado_num[47] + resultado_num[48] +
               resultado_num[49] + 	resultado_num[50] + resultado_num[51] + resultado_num[52] +
               resultado_num[53] + 	resultado_num[54] + resultado_num[55] + resultado_num[56] +
               resultado_num[57] + 	resultado_num[58] + resultado_num[59] + resultado_num[60];

  qt_hrz_4 :=	 resultado_num[61] + 	resultado_num[62] + resultado_num[63] + resultado_num[64] +
               resultado_num[65] + 	resultado_num[66] + resultado_num[67] + resultado_num[68] +
               resultado_num[69] + 	resultado_num[70] + resultado_num[71] + resultado_num[72] +
               resultado_num[73] + 	resultado_num[74] + resultado_num[75] + resultado_num[76] +
               resultado_num[77] + 	resultado_num[78] + 	resultado_num[79] + 	resultado_num[80];

  Insert into ltk_quina.quina_resultado_horizontal (concurso, hrz_id)
    Select concurso_novo, hrz_id from ltk_quina.quina_id_horizontal
  where hrz_1 = qt_hrz_1 and hrz_2 = qt_hrz_2 and hrz_3 = qt_hrz_3 and hrz_4 = qt_hrz_4
  and hrz_qt = 5;

end $$;


drop function if exists ltk_quina.fn_quina_resultado_vertical(numeric, numeric[]);
create function ltk_quina.fn_quina_resultado_vertical(concurso_novo numeric, resultado_num numeric[]) returns VOID
 LANGUAGE plpgsql
AS $$
DECLARE
  qt_vrt_1 numeric default 0;
  qt_vrt_2 numeric default 0;
  qt_vrt_3 numeric default 0;
  qt_vrt_4 numeric default 0;
  qt_vrt_5 numeric default 0;
begin
  qt_vrt_1 :=
    resultado_num[1] +	resultado_num[2] +
    resultado_num[11] +	resultado_num[12] +
    resultado_num[21] +	resultado_num[22] +
    resultado_num[31] +	resultado_num[32] +
    resultado_num[41] +	resultado_num[42] +
    resultado_num[51] +	resultado_num[52] +
    resultado_num[61] +	resultado_num[62] +
    resultado_num[71] +	resultado_num[72];

  qt_vrt_2 :=
    resultado_num[3] +	resultado_num[4] +
    resultado_num[13] +	resultado_num[14] +
    resultado_num[23] +	resultado_num[24] +
    resultado_num[33] +	resultado_num[34] +
    resultado_num[43] +	resultado_num[44] +
    resultado_num[53] +	resultado_num[54] +
    resultado_num[63] +	resultado_num[64] +
    resultado_num[73] +	resultado_num[74];

  qt_vrt_3 :=
    resultado_num[5] +	resultado_num[6] +
    resultado_num[15] +	resultado_num[16] +
    resultado_num[25] +	resultado_num[26] +
    resultado_num[35] +	resultado_num[36] +
    resultado_num[45] +	resultado_num[46] +
    resultado_num[55] +	resultado_num[56] +
    resultado_num[65] +	resultado_num[66] +
    resultado_num[75] +	resultado_num[76];

  qt_vrt_4 :=
    resultado_num[7] +	resultado_num[8] +
    resultado_num[17] +	resultado_num[18] +
    resultado_num[27] +	resultado_num[28] +
    resultado_num[37] +	resultado_num[38] +
    resultado_num[47] +	resultado_num[48] +
    resultado_num[57] +	resultado_num[58] +
    resultado_num[67] +	resultado_num[68] +
    resultado_num[77] +	resultado_num[78];

  qt_vrt_5 :=
    resultado_num[9] +	resultado_num[10] +
    resultado_num[19] +	resultado_num[20] +
    resultado_num[29] +	resultado_num[30] +
    resultado_num[39] +	resultado_num[40] +
    resultado_num[49] +	resultado_num[50] +
    resultado_num[59] +	resultado_num[60] +
    resultado_num[69] +	resultado_num[70] +
    resultado_num[79] +	resultado_num[80];



  Insert into ltk_quina.quina_resultado_vertical (concurso, vrt_id)
    Select concurso_novo, vrt_id from ltk_quina.quina_id_vertical
  where vrt_1 = qt_vrt_1 and vrt_2 = qt_vrt_2 and vrt_3 = qt_vrt_3 and vrt_4 = qt_vrt_4 and vrt_5 = qt_vrt_5
  and vrt_qt = 5;

end $$;

drop function if exists ltk_quina.fn_quina_resultado_diagonal(numeric, numeric[]);
create function ltk_quina.fn_quina_resultado_diagonal(concurso_novo numeric, resultado_num numeric[]) returns VOID
 LANGUAGE plpgsql
AS $$
DECLARE
  qt_dg_1 numeric default 0;
  qt_dg_2 numeric default 0;
  qt_dg_3 numeric default 0;
  qt_dg_4 numeric default 0;
  qt_dg_5 numeric default 0;
begin
  qt_dg_1 := resultado_num[1 ] + resultado_num[2 ] +
                 resultado_num[12] + resultado_num[13] +
                 resultado_num[23] + resultado_num[24] +
                 resultado_num[34] + resultado_num[35] +
                 resultado_num[45] + resultado_num[46] +
                 resultado_num[56] + resultado_num[57] +
                 resultado_num[67] + resultado_num[68] +
                 resultado_num[78] + resultado_num[79];
  qt_dg_2 := resultado_num[3 ] + resultado_num[4 ] +
                 resultado_num[14] + resultado_num[15] +
                 resultado_num[25] + resultado_num[26] +
                 resultado_num[36] + resultado_num[37] +
                 resultado_num[47] + resultado_num[48] +
                 resultado_num[58] + resultado_num[59] +
                 resultado_num[69] + resultado_num[70] +
                 resultado_num[80] + resultado_num[71];
  qt_dg_3 := resultado_num[5 ] + resultado_num[6 ] +
                 resultado_num[16] + resultado_num[17] +
                 resultado_num[27] + resultado_num[28] +
                 resultado_num[38] + resultado_num[39] +
                 resultado_num[49] + resultado_num[50] +
                 resultado_num[51] + resultado_num[60] +
                 resultado_num[61] + resultado_num[62] +
                 resultado_num[72] + resultado_num[73];
  qt_dg_4 := resultado_num[7 ] + resultado_num[8 ] +
                 resultado_num[18] + resultado_num[19] +
                 resultado_num[29] + resultado_num[30] +
                 resultado_num[31] + resultado_num[40] +
                 resultado_num[41] + resultado_num[42] +
                 resultado_num[52] + resultado_num[53] +
                 resultado_num[63] + resultado_num[64] +
                 resultado_num[74] + resultado_num[75]; 
  qt_dg_5 := resultado_num[9 ] + resultado_num[10] +
                 resultado_num[11] + resultado_num[20] +
                 resultado_num[21] + resultado_num[22] +
                 resultado_num[32] + resultado_num[33] +
                 resultado_num[43] + resultado_num[44] +
                 resultado_num[54] + resultado_num[55] +
                 resultado_num[65] + resultado_num[66] +
                 resultado_num[76] + resultado_num[77];

  Insert into ltk_quina.quina_resultado_diagonal (concurso, dg_id)
    Select concurso_novo, dg_id from ltk_quina.quina_id_diagonal
  where dg_1 = qt_dg_1 and dg_2 = qt_dg_2 and dg_3 = qt_dg_3 and dg_4 = qt_dg_4 and dg_5 = qt_dg_5
  and dg_qt = 5;

end $$;

drop function if exists ltk_quina.fn_quina_resultado_quadrante(numeric, numeric[]);
create function ltk_quina.fn_quina_resultado_quadrante(concurso_novo numeric, resultado_num numeric[]) returns VOID
 LANGUAGE plpgsql
AS $$
DECLARE
  qt_qd_1 numeric default 0;
  qt_qd_2 numeric default 0;
  qt_qd_3 numeric default 0;
  qt_qd_4 numeric default 0;
  qt_qd_5 numeric default 0;
begin
  qt_qd_1 := resultado_num[ 1] + resultado_num[ 2] + resultado_num[ 3] + resultado_num[ 4] + resultado_num[ 5] +
                 resultado_num[11] + resultado_num[12] + resultado_num[13] + resultado_num[14] + resultado_num[15] +
                 resultado_num[21] + resultado_num[22] + resultado_num[23] + resultado_num[24] + resultado_num[25] +
                 resultado_num[31] + resultado_num[32] + resultado_num[33] + resultado_num[34] + resultado_num[35];

      qt_qd_2 := resultado_num[ 6] + resultado_num[ 7] + resultado_num[ 8] + resultado_num[ 9] + resultado_num[10] +
                 resultado_num[16] + resultado_num[17] + resultado_num[18] + resultado_num[19] + resultado_num[20] +
                 resultado_num[26] + resultado_num[27] + resultado_num[28] + resultado_num[29] + resultado_num[30] +
                 resultado_num[36] + resultado_num[37] + resultado_num[38] + resultado_num[39] + resultado_num[40];

      qt_qd_3 := resultado_num[41] + resultado_num[42] + resultado_num[43] + resultado_num[44] + resultado_num[45] +
                 resultado_num[51] + resultado_num[52] + resultado_num[53] + resultado_num[54] + resultado_num[55] +
                 resultado_num[61] + resultado_num[62] + resultado_num[63] + resultado_num[64] + resultado_num[65] +
                 resultado_num[71] + resultado_num[72] + resultado_num[73] + resultado_num[74] + resultado_num[75];

      qt_qd_4 := resultado_num[46] + resultado_num[47] + resultado_num[48] + resultado_num[49] + resultado_num[50] +
                 resultado_num[56] + resultado_num[57] + resultado_num[58] + resultado_num[59] + resultado_num[60] +
                 resultado_num[66] + resultado_num[67] + resultado_num[68] + resultado_num[69] + resultado_num[70] +
                 resultado_num[76] + resultado_num[77] + resultado_num[78] + resultado_num[79] + resultado_num[80];  

  if qt_qd_1 + qt_qd_2 + qt_qd_3 + qt_qd_4 + qt_qd_5 <> 5 THEN
    raise EXCEPTION 'Erro, quadrante, concurso: %, quantidade diferente de 5', concurso_novo;
    exit;
  END IF;

  Insert into ltk_quina.quina_resultado_quadrante (concurso, qd_id)
    Select concurso_novo, qd_id from ltk_quina.quina_id_quadrante
  where qd_1 = qt_qd_1 and qd_2 = qt_qd_2 and qd_3 = qt_qd_3 and
        qd_4 = qt_qd_4 and
        qd_qt = 5;
end $$;




