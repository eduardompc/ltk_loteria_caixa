/**
  Esta tabela armazena a quantidade de acertos de cada combinação
  em relação a todas as combinações já sorteadas.
  Nesta tabela, se o acerto é 15 bolas, automaticamente, os
  acertos de 5 a 15 bolas, são contabilizados, afinal, se uma
  combinação tem 15 acertos, então, haverá subconjuntos de acertos
  com 14, 13, 12, até 5 acertos.
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

