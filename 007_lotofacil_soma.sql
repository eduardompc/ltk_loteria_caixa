/**
  Tabela com a soma dos campos num_1 com valor 1.
 */
drop table if exists lotofacil.lotofacil_soma;
create table lotofacil.lotofacil_soma(
  ltf_id numeric not null,
  ltf_qt numeric not null,
  bola_soma numeric not null,
  CONSTRAINT lotofacil_soma_FK FOREIGN KEY (ltf_id) REFERENCES lotofacil.lotofacil_num(ltf_id)
);
alter table lotofacil.lotofacil_soma drop CONSTRAINT lotofacil_soma_FK;

/**
  Aqui, deve-se importar o arquivo csv: lotofacil_soma.csv.
 */

alter table lotofacil.lotofacil_soma add CONSTRAINT lotofacil_soma_FK FOREIGN KEY (ltf_id) REFERENCES lotofacil.lotofacil_num(ltf_id);
create index lotofacil_soma_idx_1 on lotofacil.lotofacil_soma(bola_soma);

Drop View if EXISTS lotofacil.v_lotofacil_soma_por_bola;
Create View lotofacil.v_lotofacil_soma_por_bola AS
  Select ltf_qt, bola_soma, count(*) as qt_vezes
  from lotofacil.lotofacil_soma
  group by ltf_qt, bola_soma
order by ltf_qt asc, qt_vezes desc;

/**
  Cria a tabela lotofacil.lotofacil_soma_agrupado_por_bola
 */
drop table if exists lotofacil.lotofacil_soma_agrupado_por_bola;
create table lotofacil.lotofacil_soma_agrupado_por_bola(
  ltf_qt numeric not null,
  bola_soma numeric not null,
  qt_vezes numeric not null
);

Insert into lotofacil.lotofacil_soma_agrupado_por_bola(ltf_qt, bola_soma, qt_vezes)
    Select ltf_qt, bola_soma, qt_vezes FROM lotofacil.v_lotofacil_soma_por_bola
order by ltf_qt, qt_vezes desc;


Drop View if EXISTS lotofacil.v_lotofacil_soma;
Create View lotofacil.v_lotofacil_soma AS
  Select bola_soma, count(*) as qt_vezes
  from lotofacil.lotofacil_soma
  group by bola_soma
order by qt_vezes desc;

drop table if exists lotofacil.lotofacil_soma_agrupado;
create table lotofacil.lotofacil_soma_agrupado(
  bola_soma numeric not null,
  qt_vezes numeric not null
);

Insert into lotofacil.lotofacil_soma_agrupado(bola_soma, qt_vezes)
  SELECT bola_soma, qt_vezes from lotofacil.v_lotofacil_soma;












/**
  Cria uma view comparando com os resultados da lotofacil.
 */
Drop view if exists lotofacil.v_lotofacil_resultado_soma;
create view lotofacil.v_lotofacil_resultado_soma as
  Select
    ltf_soma.bola_soma,
    ltf_soma.ltf_qt ltf_qt,
    ltf_soma.qt_vezes ltf_qt_vezes,
    case
      when res_soma.qt_vezes is null THEN
        0
      else res_soma.qt_vezes
    end res_qt_vezes
from
  (Select
     ltf_qt,
     bola_soma,
     qt_vezes as qt_vezes
   from lotofacil.lotofacil_soma_agrupado_por_bola) ltf_soma
    left join
  (
    Select 15 as ltf_qt, bola_soma, count(*) as qt_vezes from lotofacil.lotofacil_resultado_soma
    group by bola_soma
  ) res_soma
on ltf_soma.bola_soma = res_soma.bola_soma

order by ltf_soma.ltf_qt asc, res_qt_vezes desc, ltf_soma.qt_vezes desc;

Drop view if exists lotofacil.v_lotofacil_resultado_soma_comum;
create view lotofacil.v_lotofacil_resultado_soma_comum as
  Select
    ltf_soma.bola_soma,
    ltf_soma.qt_vezes ltf_qt_vezes,
    case
      when res_soma.qt_vezes is null THEN
        0
      else res_soma.qt_vezes
    end res_qt_vezes
from
  (Select
     ltf_qt,
     bola_soma,
     qt_vezes as qt_vezes
   from lotofacil.lotofacil_soma_agrupado_por_bola) ltf_soma
    left join
  (
    Select 15 as ltf_qt, bola_soma, count(*) as qt_vezes from lotofacil.lotofacil_resultado_soma
    group by bola_soma
  ) res_soma
on ltf_soma.bola_soma = res_soma.bola_soma

order by ltf_soma.ltf_qt asc, res_qt_vezes desc, ltf_soma.qt_vezes desc;




