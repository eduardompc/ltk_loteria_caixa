/**
  Nesta tabela iremos armazenar dados consolidados
 */

Drop table if exists lotofacil.lotofacil_frequencia;
create table lotofacil.lotofacil_frequencia(
  ltf_id numeric not null,
  concurso numeric not null,  -- Indica qual concurso se relaciona.
  sm_df numeric not null default 0,
  qt_ainda_nao_saiu numeric default 0,
  qt_novo numeric default 0,
  qt_repetindo numeric default 0,
  qt_deixou_de_sair numeric default 0
);

Select sm_df, count(*) as qt_vz from lotofacil.lotofacil_frequencia
group by sm_df,qt_repetindo