/*


/**
  Função pra atualizar o campo ltf_id da tabela lotofacil.lotofacil_num.
 */
drop function lotofacil.fn_atualizar_lotofacil_num_ltf_id();
create function lotofacil.fn_atualizar_lotofacil_num_ltf_id()
  RETURNS void
  LANGUAGE plpgsql
  as $$
    DECLARE
      reg_ltf_res_num lotofacil.lotofacil_resultado_num%rowtype;
  BEGIN
    for reg_ltf_res_num IN
      Select * from lotofacil.lotofacil_resultado_num
      order by concurso desc LOOP
      if reg_ltf_res_num.ltf_id is null then
        Raise Notice 'Atualizado concurso: %', reg_ltf_res_num.concurso;
        Update lotofacil.lotofacil_resultado_num set concurso = reg_ltf_res_num.concurso
          where concurso = reg_ltf_res_num.concurso;
      END IF;
    END LOOP;
  END;$$;

Drop TRIGGER if exists tg_lotofacil_resultado_num_antes on lotofacil.lotofacil_resultado_num;
Drop function if exists lotofacil.fn_lotofacil_resultado_num_antes();

create function lotofacil.fn_lotofacil_resultado_num_antes()
  returns TRIGGER
  LANGUAGE plpgsql
  as $$
  declare
     ltf_id_concurso numeric default 0;
  BEGIN
    if tg_op = 'INSERT' or tg_op = 'UPDATE' then
    Select ltf_id into New.ltf_id from lotofacil.lotofacil_num
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
        num_20 = NEW.num_20 AND
        num_21 = NEW.num_21 and
        num_22 = NEW.num_22 and
        num_23 = NEW.num_23 and
        num_24 = NEW.num_24 and
        num_25 = NEW.num_25 AND
        ltf_qt = 15;

      return new;
    ELSE
      return old;
    end if;

  END;
  $$;

create TRIGGER tg_lotofacil_resultado_num_antes
  before insert or delete or UPDATE
  on lotofacil.lotofacil_resultado_num
  for each ROW
  execute procedure lotofacil.fn_lotofacil_resultado_num_antes();
*/


/**
  As funções abaixo não são mais usadas por os dados eram inseridas em várias tabelas,
  agora, há somente uma tabela pra todas as combinações.
 */

/**
  Sempre que a tabela lotofacil_num, é inserida, atualizada ou deletada, esta função
  é chamada pra inserir, atualizar ou deletar os dados da tabelas relacionados a campos.
 */

/*
drop function if exists lotofacil.fn_lotofacil_resultado_b1_ate_b15(numeric, numeric[]);
create function lotofacil.fn_lotofacil_resultado_b1_ate_b15(concurso_novo numeric, resultado_bolas numeric[]) returns void
LANGUAGE plpgsql
as $$
DECLARE
BEGIN
  Insert into lotofacil.lotofacil_resultado_b1 (concurso, b1_id)
    Select concurso_novo, b1_id from lotofacil.lotofacil_id_b1
    where b1 = resultado_bolas[1];

  Insert into lotofacil.lotofacil_resultado_b1_b15 (concurso, b1_b15_id)
    Select concurso_novo, b1_b15_id from lotofacil.lotofacil_id_b1_b15
    where b1 = resultado_bolas[1] and
          b15 = resultado_bolas[15];

  Insert into lotofacil.lotofacil_resultado_b1_b8_b15 (concurso, b1_b8_b15_id)
    Select concurso_novo, b1_b8_b15_id from lotofacil.lotofacil_id_b1_b8_b15
    where b1 = resultado_bolas[1] and b8 = resultado_bolas[8] and b15 = resultado_bolas[15];

  Insert into lotofacil.lotofacil_resultado_b1_b4_b8_b12_b15 (concurso, b1_b4_b8_b12_b15_id)
    Select concurso_novo, b1_b4_b8_b12_b15_id from lotofacil.lotofacil_id_b1_b4_b8_b12_b15
    where b1 = resultado_bolas[1] and
          b4 = resultado_bolas[4] and
          b8 = resultado_bolas[8] and
          b12 = resultado_bolas[12] and
          b15 = resultado_bolas[15];

END;
$$;


drop function if exists lotofacil.fn_lotofacil_resultado_par_impar(numeric, numeric[]);
create function lotofacil.fn_lotofacil_resultado_par_impar(concurso_novo numeric, resultado_num numeric[]) returns void
  LANGUAGE plpgsql
  as $$
  DECLARE
    qt_pares numeric default 0;
    qt_impares numeric default 0;
  BEGIN
    qt_pares := resultado_num[2] + resultado_num[4] + resultado_num[6] + resultado_num[8] +
                resultado_num[10] + resultado_num[12] + resultado_num[14] + resultado_num[16] + resultado_num[18] +
                resultado_num[20] + resultado_num[22] + resultado_num[24];
    qt_impares := resultado_num[1] + resultado_num[3] + resultado_num[5] + resultado_num[7] + resultado_num[9] +
                 resultado_num[11] + resultado_num[13] + resultado_num[15] + resultado_num[17] + resultado_num[19] +
                 resultado_num[21] + resultado_num[23] + resultado_num[25];

    Raise Notice 'Par: %, Impar: %', qt_pares, qt_impares;

    if qt_pares + qt_impares <> 15 THEN
      raise EXCEPTION 'Quantidade de pares e impares é diferente de 15';
    END IF;

    Insert into lotofacil.lotofacil_resultado_par_impar (concurso, par_impar_id)
      Select concurso_novo, par_impar_id from lotofacil.lotofacil_id_par_impar
    where par = qt_pares and impar = qt_impares;
  END;$$;



drop function if exists lotofacil.fn_lotofacil_resultado_externo_interno(numeric, numeric[]);
create function lotofacil.fn_lotofacil_resultado_externo_interno(concurso_novo numeric, resultado_num numeric[]) returns VOID
 LANGUAGE plpgsql
AS $$
DECLARE
  qt_externo numeric default 0;
  qt_interno numeric default 0;
begin
  qt_externo := 0;
  qt_externo := qt_externo + resultado_num[1] + resultado_num[2] + resultado_num[3] + resultado_num[4] + resultado_num[5];
  qt_externo := qt_externo + resultado_num[6] + resultado_num[10];
  qt_externo := qt_externo + resultado_num[11] + resultado_num[15];
  qt_externo := qt_externo + resultado_num[16] + resultado_num[20];
  qt_externo := qt_externo + resultado_num[21] + resultado_num[22] + resultado_num[23] + resultado_num[24] + resultado_num[25];

  qt_interno := 0;
  qt_interno := qt_interno + resultado_num[7] + resultado_num[8] + resultado_num[9];
  qt_interno := qt_interno + resultado_num[12] + resultado_num[13] + resultado_num[14];
  qt_interno := qt_interno + resultado_num[17] + resultado_num[18] + resultado_num[19];

  Insert into lotofacil.lotofacil_resultado_externo_interno (concurso, ext_int_id)
    Select concurso_novo, ext_int_id from lotofacil.lotofacil_id_externo_interno
  where externo = qt_externo and interno = qt_interno
  and ext_int_qt = 15;

end $$;



drop function if exists lotofacil.fn_lotofacil_resultado_horizontal(numeric, numeric[]);
create function lotofacil.fn_lotofacil_resultado_horizontal(concurso_novo numeric, resultado_num numeric[]) returns VOID
 LANGUAGE plpgsql
AS $$
DECLARE
  qt_hrz_1 numeric default 0;
  qt_hrz_2 numeric default 0;
  qt_hrz_3 numeric default 0;
  qt_hrz_4 numeric default 0;
  qt_hrz_5 numeric default 0;
begin
  qt_hrz_1 := resultado_num[1] + resultado_num[2] + resultado_num[3] + resultado_num[4] + resultado_num[5];
  qt_hrz_2 := resultado_num[6] + resultado_num[7] + resultado_num[8] + resultado_num[9] + resultado_num[10];
  qt_hrz_3 := resultado_num[11] + resultado_num[12] + resultado_num[13] + resultado_num[14] + resultado_num[15];
  qt_hrz_4 := resultado_num[16] + resultado_num[17] + resultado_num[18] + resultado_num[19] + resultado_num[20];
  qt_hrz_5 := resultado_num[21] + resultado_num[22] + resultado_num[23] + resultado_num[24] + resultado_num[25];

  Insert into lotofacil.lotofacil_resultado_horizontal (concurso, hrz_id)
    Select concurso_novo, hrz_id from lotofacil.lotofacil_id_horizontal
  where hrz_1 = qt_hrz_1 and hrz_2 = qt_hrz_2 and hrz_3 = qt_hrz_3 and hrz_4 = qt_hrz_4 and hrz_5 = qt_hrz_5
  and hrz_qt = 15;

end $$;


drop function if exists lotofacil.fn_lotofacil_resultado_vertical(numeric, numeric[]);
create function lotofacil.fn_lotofacil_resultado_vertical(concurso_novo numeric, resultado_num numeric[]) returns VOID
 LANGUAGE plpgsql
AS $$
DECLARE
  qt_vrt_1 numeric default 0;
  qt_vrt_2 numeric default 0;
  qt_vrt_3 numeric default 0;
  qt_vrt_4 numeric default 0;
  qt_vrt_5 numeric default 0;
begin

  qt_vrt_1 := resultado_num[1] + resultado_num[6] + resultado_num[11] + resultado_num[16] + resultado_num[21];
  qt_vrt_2 := resultado_num[2] + resultado_num[7] + resultado_num[12] + resultado_num[17] + resultado_num[22];
  qt_vrt_3 := resultado_num[3] + resultado_num[8] + resultado_num[13] + resultado_num[18] + resultado_num[23];
  qt_vrt_4 := resultado_num[4] + resultado_num[9] + resultado_num[14] + resultado_num[19] + resultado_num[24];
  qt_vrt_5 := resultado_num[5] + resultado_num[10] + resultado_num[15] + resultado_num[20] + resultado_num[25];

  Insert into lotofacil.lotofacil_resultado_vertical (concurso, vrt_id)
    Select concurso_novo, vrt_id from lotofacil.lotofacil_id_vertical
  where vrt_1 = qt_vrt_1 and vrt_2 = qt_vrt_2 and vrt_3 = qt_vrt_3 and vrt_4 = qt_vrt_4 and vrt_5 = qt_vrt_5
  and vrt_qt = 15;

end $$;

drop function if exists lotofacil.fn_lotofacil_resultado_diagonal(numeric, numeric[]);
create function lotofacil.fn_lotofacil_resultado_diagonal(concurso_novo numeric, resultado_num numeric[]) returns VOID
 LANGUAGE plpgsql
AS $$
DECLARE
  qt_dg_1 numeric default 0;
  qt_dg_2 numeric default 0;
  qt_dg_3 numeric default 0;
  qt_dg_4 numeric default 0;
  qt_dg_5 numeric default 0;
begin
  qt_dg_1 := resultado_num[1] + resultado_num[7] + resultado_num[13] + resultado_num[19] + resultado_num[25];
  qt_dg_2 := resultado_num[2] + resultado_num[8] + resultado_num[14] + resultado_num[20] + resultado_num[21];
  qt_dg_3 := resultado_num[3] + resultado_num[9] + resultado_num[15] + resultado_num[16] + resultado_num[22];
  qt_dg_4 := resultado_num[4] + resultado_num[10] + resultado_num[11] + resultado_num[17] + resultado_num[23];
  qt_dg_5 := resultado_num[5] + resultado_num[6] + resultado_num[12] + resultado_num[18] + resultado_num[24];

  Insert into lotofacil.lotofacil_resultado_diagonal (concurso, dg_id)
    Select concurso_novo, dg_id from lotofacil.lotofacil_id_diagonal
  where dg_1 = qt_dg_1 and dg_2 = qt_dg_2 and dg_3 = qt_dg_3 and dg_4 = qt_dg_4 and dg_5 = qt_dg_5
  and dg_qt = 15;

end $$;

drop function if exists lotofacil.fn_lotofacil_resultado_cruzeta(numeric, numeric[]);
create function lotofacil.fn_lotofacil_resultado_cruzeta(concurso_novo numeric, resultado_num numeric[]) returns VOID
 LANGUAGE plpgsql
AS $$
DECLARE
  qt_crz_1 numeric default 0;
  qt_crz_2 numeric default 0;
  qt_crz_3 numeric default 0;
  qt_crz_4 numeric default 0;
  qt_crz_5 numeric default 0;
begin
  qt_crz_1 := resultado_num[1] + resultado_num[2] + resultado_num[6] + resultado_num[7] + resultado_num[11];
  qt_crz_2 := resultado_num[4] + resultado_num[5] + resultado_num[9] + resultado_num[10] + resultado_num[15];
  qt_crz_3 := resultado_num[3] + resultado_num[8] + resultado_num[13] + resultado_num[18] + resultado_num[23];
  qt_crz_4 := resultado_num[12] + resultado_num[16] + resultado_num[17] + resultado_num[21] + resultado_num[22];
  qt_crz_5 := resultado_num[14] + resultado_num[19] + resultado_num[20] + resultado_num[24] + resultado_num[25];

  if qt_crz_1 + qt_crz_2 + qt_crz_3 + qt_crz_4 + qt_crz_5  <> 15 THEN
    raise EXCEPTION 'Erro, quarteto, concurso: %, quantidade diferente de 15';
    exit;
  END IF;


  Insert into lotofacil.lotofacil_resultado_cruzeta (concurso, crz_id)
    Select concurso_novo, crz_id from lotofacil.lotofacil_id_cruzeta
  where crz_1 = qt_crz_1 and crz_2 = qt_crz_2 and crz_3 = qt_crz_3 and crz_4 = qt_crz_4 and crz_5 = qt_crz_5
  and crz_qt = 15;
end $$;

drop function if exists lotofacil.fn_lotofacil_resultado_quarteto(numeric, numeric[]);
create function lotofacil.fn_lotofacil_resultado_quarteto(concurso_novo numeric, resultado_num numeric[]) returns VOID
 LANGUAGE plpgsql
AS $$
DECLARE
  qt_qrt_1 numeric default 0;
  qt_qrt_2 numeric default 0;
  qt_qrt_3 numeric default 0;
  qt_qrt_4 numeric default 0;
  qt_qrt_5 numeric default 0;
  qt_qrt_6 numeric default 0;
begin
  qt_qrt_1 := resultado_num[1] + resultado_num[2] + resultado_num[13] + resultado_num[14];
  qt_qrt_2 := resultado_num[3] + resultado_num[4] + resultado_num[15] + resultado_num[16];
  qt_qrt_3 := resultado_num[5] + resultado_num[6] + resultado_num[17] + resultado_num[18];
  qt_qrt_4 := resultado_num[7] + resultado_num[8] + resultado_num[19] + resultado_num[20];
  qt_qrt_5 := resultado_num[9] + resultado_num[10] + resultado_num[21] + resultado_num[22];
  qt_qrt_6 := resultado_num[11] + resultado_num[12] + resultado_num[23] + resultado_num[24] + resultado_num[25];

  if qt_qrt_1 + qt_qrt_2 + qt_qrt_3 + qt_qrt_4 + qt_qrt_5 + qt_qrt_6 <> 15 THEN
    raise EXCEPTION 'Erro, quarteto, concurso: %, quantidade diferente de 15';
    exit;
  END IF;



  Insert into lotofacil.lotofacil_resultado_quarteto (concurso, qrt_id)
    Select concurso_novo, qrt_id from lotofacil.lotofacil_id_quarteto
  where qrt_1 = qt_qrt_1 and qrt_2 = qt_qrt_2 and qrt_3 = qt_qrt_3 and
        qrt_4 = qt_qrt_4 and qrt_5 = qt_qrt_5 and qrt_6 = qt_qrt_6 and
        qrt_qt = 15;
end $$;

drop function if exists lotofacil.fn_lotofacil_resultado_trio(numeric, numeric[]);
create function lotofacil.fn_lotofacil_resultado_trio(concurso_novo numeric, resultado_num numeric[]) returns void
  LANGUAGE plpgsql
as $$
  DECLARE
    trio_1 numeric default 0;
    trio_2 numeric default 0;
    trio_3 numeric default 0;
    trio_4 numeric default 0;
    trio_5 numeric default 0;
    trio_6 numeric default 0;
    trio_7 numeric default 0;
    trio_8 numeric default 0;
    trio_soma numeric default 0;
  BEGIN
    trio_1 := resultado_num[1] + resultado_num[2] + resultado_num[6];
    trio_2 := resultado_num[3] + resultado_num[7] + resultado_num[8];
    trio_3 := resultado_num[4] + resultado_num[5] + resultado_num[10];
    trio_4 := resultado_num[9] + resultado_num[14] + resultado_num[15];
    trio_5 := resultado_num[19] + resultado_num[20] + resultado_num[25];
    trio_6 := resultado_num[18] + resultado_num[23] + resultado_num[24];
    trio_7 := resultado_num[12] + resultado_num[13] + resultado_num[17];
    trio_8 := resultado_num[11] + resultado_num[16] + resultado_num[21] + resultado_num[22];

    trio_soma := trio_1 + trio_2 + trio_3 + trio_4 + trio_5 + trio_6 + trio_7 + trio_8;

    if trio_soma <> 15 THEN
      raise EXCEPTION 'Erro, concurso: % quantidade diferente de 15';
      exit;
    END IF;

    Insert into lotofacil.lotofacil_resultado_trio(concurso, trio_id)
      Select concurso_novo, trio_id from lotofacil.lotofacil_id_trio
    where trio_1 = tr_1 AND
      trio_2 = tr_2 AND
      trio_3 = tr_3 AND
      trio_4 = tr_4 AND
      trio_5 = tr_5 AND
      trio_6 = tr_6 AND
      trio_7 = tr_7 AND
      trio_8 = tr_8;
  END;$$;


drop function if exists lotofacil.fn_lotofacil_resultado_primo(numeric, numeric[]);
create function lotofacil.fn_lotofacil_resultado_primo(concurso_novo numeric, resultado_num numeric[]) returns VOID
 LANGUAGE plpgsql
AS $$
DECLARE
  qt_primo numeric default 0;
  qt_nao_primo numeric default 0;
begin
  qt_primo := resultado_num[2] + resultado_num[3] + resultado_num[5] + resultado_num[7] + resultado_num[11] +
              resultado_num[13] + resultado_num[17] + resultado_num[19] + resultado_num[23];
  qt_nao_primo := resultado_num[1] + resultado_num[4] + resultado_num[6] + resultado_num[8] +
              resultado_num[9] + resultado_num[10] + resultado_num[12] + resultado_num[14] + resultado_num[15] +
              resultado_num[16] + resultado_num[18] + resultado_num[20] + resultado_num[21] + resultado_num[22] +
              resultado_num[24] + resultado_num[25];

  if qt_primo + qt_nao_primo <> 15 THEN
    raise EXCEPTION 'Erro, concurso: %, quantidade diferente de 15';
    exit;
  END IF;


  Insert into lotofacil.lotofacil_resultado_primo(concurso, prm_id)
    Select concurso_novo, prm_id from lotofacil.lotofacil_id_primo
  where primo = qt_primo and nao_primo = qt_nao_primo;
end;$$

*/