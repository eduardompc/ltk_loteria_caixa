/**
  Neste arquivos, há tabelas, views e funções, que servem pra outros própositos,
  talvez, nem interferindo nas análises.
  Servindo basicamente, pra dar maiores informações acerca de algo.
 */
/*
  Esta view retorna o ínicio, fim e a quantidade de combinações pra
  cada quantidade de bolas.
 */
Create View lotofacil.v_lotofacil_inicio_fim_qt_de_itens(ltf_qt, Inicio, Fim, qt_itens) as
Select ltf_qt, min(ltf_id) as Inicio, max(ltf_id) as Fim, count(*)  as qt_itens
from lotofacil.lotofacil_bolas
group by ltf_qt
order by ltf_qt asc;