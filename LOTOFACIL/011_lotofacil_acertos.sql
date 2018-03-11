/**
  Indica a quantidade de acertos com 11, 12, 13, 14 ou 15
  números de todas as combinações que saíram até hoje.
  O objetivo disto é detectar, quais são as melhores combinações pra jogar.
 */
drop table if exists lotofacil.lotofacil_acertos_ate_hoje;
create table lotofacil.lotofacil_acertos_ate_hoje(
  ltf_id numeric not null,
  ltf_qt numeric not null,
  acertos_temp numeric default 0,
  acertos_11 numeric default 0,
  acertos_12 numeric default 0,
  acertos_13 numeric default 0,
  acertos_14 numeric default 0,
  acertos_15 numeric default 0
);

Insert into lotofacil.lotofacil_acertos_ate_hoje(ltf_id, ltf_qt)
    Select ltf_id, ltf_qt from lotofacil.lotofacil_bolas
  order by ltf_id;

drop function if exists lotofacil.fn_atualizar_acertos_ate_hoje;
create function lotofacil.fn_atualizar_acertos_ate_hoje() returns VOID
  LANGUAGE plpgsql
  as $$
  declare

  BEGIN
    Update lotofacil.lotofacil_acertos_ate_hoje
      set acertos_temp = 0, acertos_11 = 0, acertos_12 = 0, acertos_13 = 0,
        acertos_14 = 0, acertos_15;


  END;
  $$;