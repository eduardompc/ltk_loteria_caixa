drop table if exists lotofacil.lotofacil_grupos_2_bolas;
create table lotofacil.lotofacil_grupos_2_bolas(
  ltf_id numeric not null,
  ltf_qt numeric not null check(ltf_qt in (15, 16, 17, 18)),
  grp_id numeric not null
);

drop table if exists lotofacil.lotofacil_grupos_3_bolas;
create table lotofacil.lotofacil_grupos_3_bolas(
  ltf_id numeric not null,
  ltf_qt numeric not null check(ltf_qt in (15, 16, 17, 18)),
  grp_id numeric not null
);

drop table if exists lotofacil.lotofacil_grupos_4_bolas;
create table lotofacil.lotofacil_grupos_4_bolas(
  ltf_id numeric not null,
  ltf_qt numeric not null check(ltf_qt in (15, 16, 17, 18)),
  grp_id numeric not null
);

delete from lotofacil.lotofacil_grupos_2_bolas;