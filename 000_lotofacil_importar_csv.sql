/**
  Tempo pra importar: 35 minutos, com indíces ativados, pode ser mais rápido sem índices criados.
 */

drop index if exists lotofacil_num_idx_0;
drop index if exists lotofacil_num_idx_1;
drop index if exists lotofacil_num_idx_2;
drop index if exists lotofacil_num_idx_3;
drop index if exists lotofacil_num_idx_4;
drop index if exists lotofacil_num_idx_5;
drop index if exists lotofacil_num_idx_6;
drop index if exists lotofacil_num_idx_7;
drop index if exists lotofacil_num_idx_8;
drop index if exists lotofacil_num_idx_9;
drop index if exists lotofacil_num_idx_10;
drop index if exists lotofacil_num_idx_11;
drop index if exists lotofacil_num_idx_12;
drop index if exists lotofacil_num_idx_13;
drop index if exists lotofacil_num_idx_14;
drop index if exists lotofacil_num_idx_15;
drop index if exists lotofacil_num_idx_16;
drop index if exists lotofacil_num_idx_17;
drop index if exists lotofacil_num_idx_18;
drop index if exists lotofacil_num_idx_19;
drop index if exists lotofacil_num_idx_20;
drop index if exists lotofacil_num_idx_21;
drop index if exists lotofacil_num_idx_22;
drop index if exists lotofacil_num_idx_23;
drop index if exists lotofacil_num_idx_24;
drop index if exists lotofacil_num_idx_25;
drop index if exists lotofacil_num_idx_26;

copy lotofacil.lotofacil_num(ltf_id, ltf_qt, num_1, num_2, num_3, num_4, num_5, num_6, num_7, num_8,
                             num_9, num_10, num_11, num_12, num_13, num_14, num_15, num_16, num_17,
                             num_18, num_19, num_20, num_21, num_22, num_23, num_24, num_25)
FROM './lotofacil_num.csv' with (FORMAT CSV, DELIMITER ';', HEADER true);

create index lotofacil_num_idx_0 on lotofacil.lotofacil_num(ltf_id);
create index lotofacil_num_idx_1 on lotofacil.lotofacil_num(num_1);
create index lotofacil_num_idx_2 on lotofacil.lotofacil_num(num_2);
create index lotofacil_num_idx_3 on lotofacil.lotofacil_num(num_3);
create index lotofacil_num_idx_4 on lotofacil.lotofacil_num(num_4);
create index lotofacil_num_idx_5 on lotofacil.lotofacil_num(num_5);
create index lotofacil_num_idx_6 on lotofacil.lotofacil_num(num_6);
create index lotofacil_num_idx_7 on lotofacil.lotofacil_num(num_7);
create index lotofacil_num_idx_8 on lotofacil.lotofacil_num(num_8);
create index lotofacil_num_idx_9 on lotofacil.lotofacil_num(num_9);
create index lotofacil_num_idx_10 on lotofacil.lotofacil_num(num_10);
create index lotofacil_num_idx_11 on lotofacil.lotofacil_num(num_11);
create index lotofacil_num_idx_12 on lotofacil.lotofacil_num(num_12);
create index lotofacil_num_idx_13 on lotofacil.lotofacil_num(num_13);
create index lotofacil_num_idx_14 on lotofacil.lotofacil_num(num_14);
create index lotofacil_num_idx_15 on lotofacil.lotofacil_num(num_15);
create index lotofacil_num_idx_16 on lotofacil.lotofacil_num(num_16);
create index lotofacil_num_idx_17 on lotofacil.lotofacil_num(num_17);
create index lotofacil_num_idx_18 on lotofacil.lotofacil_num(num_18);
create index lotofacil_num_idx_19 on lotofacil.lotofacil_num(num_19);
create index lotofacil_num_idx_20 on lotofacil.lotofacil_num(num_20);
create index lotofacil_num_idx_21 on lotofacil.lotofacil_num(num_21);
create index lotofacil_num_idx_22 on lotofacil.lotofacil_num(num_22);
create index lotofacil_num_idx_23 on lotofacil.lotofacil_num(num_23);
create index lotofacil_num_idx_24 on lotofacil.lotofacil_num(num_24);
create index lotofacil_num_idx_25 on lotofacil.lotofacil_num(num_25);
create index lotofacil_num_idx_26 on lotofacil.lotofacil_num(
  num_1, num_2, num_3, num_4, num_5, num_6, num_7, num_8, num_9, num_10,
  num_11, num_12, num_13, num_14, num_15, num_16, num_17, num_18, num_19, num_20,
  num_21, num_22, num_23, num_24, num_25);


/**
  LOTOFACIL_BOLAS
 */
drop index if exists  lotofacil_bolas_idx_1;
drop index if exists  lotofacil_bolas_idx_2;
drop index if exists  lotofacil_bolas_idx_3;
drop index if exists  lotofacil_bolas_idx_4;
drop index if exists  lotofacil_bolas_idx_5;
drop index if exists  lotofacil_bolas_idx_6;
drop index if exists  lotofacil_bolas_idx_7;
drop index if exists  lotofacil_bolas_idx_8;
drop index if exists  lotofacil_bolas_idx_9;
drop index if exists  lotofacil_bolas_idx_10;
drop index if exists  lotofacil_bolas_idx_11;
drop index if exists  lotofacil_bolas_idx_12;
drop index if exists  lotofacil_bolas_idx_13;
drop index if exists  lotofacil_bolas_idx_14;
drop index if exists  lotofacil_bolas_idx_15;
drop index if exists  lotofacil_bolas_idx_16;
drop index if exists  lotofacil_bolas_idx_17;
drop index if exists  lotofacil_bolas_idx_18;
drop index if exists  lotofacil_bolas_idx_19;

copy lotofacil.lotofacil_bolas (ltf_id, ltf_qt, b_1, b_2, b_3, b_4, b_5, b_6, b_7,
                                        b_8, b_9, b_10, b_11, b_12, b_13, b_14, b_15, b_16,
                                        b_17, b_18)  from
'./lotofacil_bolas.csv' with (format csv, DELIMITER ';', HEADER  true);

create index lotofacil_bolas_idx_1 on lotofacil.lotofacil_bolas(b_1);
create index lotofacil_bolas_idx_2 on lotofacil.lotofacil_bolas(b_2);
create index lotofacil_bolas_idx_3 on lotofacil.lotofacil_bolas(b_3);
create index lotofacil_bolas_idx_4 on lotofacil.lotofacil_bolas(b_4);
create index lotofacil_bolas_idx_5 on lotofacil.lotofacil_bolas(b_5);
create index lotofacil_bolas_idx_6 on lotofacil.lotofacil_bolas(b_6);
create index lotofacil_bolas_idx_7 on lotofacil.lotofacil_bolas(b_7);
create index lotofacil_bolas_idx_8 on lotofacil.lotofacil_bolas(b_8);
create index lotofacil_bolas_idx_9 on lotofacil.lotofacil_bolas(b_9);
create index lotofacil_bolas_idx_10 on lotofacil.lotofacil_bolas(b_10);
create index lotofacil_bolas_idx_11 on lotofacil.lotofacil_bolas(b_11);
create index lotofacil_bolas_idx_12 on lotofacil.lotofacil_bolas(b_12);
create index lotofacil_bolas_idx_13 on lotofacil.lotofacil_bolas(b_13);
create index lotofacil_bolas_idx_14 on lotofacil.lotofacil_bolas(b_14);
create index lotofacil_bolas_idx_15 on lotofacil.lotofacil_bolas(b_15);
create index lotofacil_bolas_idx_16 on lotofacil.lotofacil_bolas(b_16);
create index lotofacil_bolas_idx_17 on lotofacil.lotofacil_bolas(b_17);
create index lotofacil_bolas_idx_18 on lotofacil.lotofacil_bolas(b_18);
create index lotofacil_bolas_idx_19 on lotofacil.lotofacil_bolas(
  b_1, b_2, b_3, b_4, b_5, b_6, b_7, b_8, b_9, b_10,
  b_11, b_12, b_13, b_14, b_15, b_16, b_17, b_18);



Insert into lotofacil.lotofacil_aleatorio (ltf_id, ltf_qt, ltf_aleatorio_seq)
    Select ltf_id, ltf_qt, 0 from lotofacil.lotofacil_num
order by ltf_qt asc, ltf_id asc;


