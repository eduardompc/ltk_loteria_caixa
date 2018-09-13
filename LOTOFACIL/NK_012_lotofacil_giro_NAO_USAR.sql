/**
  Autor: Fábio Moura de Oliveira.
  Há na lotofacil, 25 bolas
 */

drop table if exists lotofacil.lotofacil_giro;
create table lotofacil.lotofacil_giro(
  ltf_id numeric not null,
  ltf_qt numeric not null,
  ltf_id_girado numeric not null,
  giro_tipo numeric not null check (giro_tipo in (90, 180, 270)),
  qt_bolas_em_comum numeric not null,

  CONSTRAINT lotofacil_giro_fk FOREIGN KEY (ltf_id) REFERENCES lotofacil.lotofacil_num(ltf_id) on delete cascade,
  constraint lotofacil_giro_unk UNIQUE (ltf_id, ltf_qt, giro_tipo)
);