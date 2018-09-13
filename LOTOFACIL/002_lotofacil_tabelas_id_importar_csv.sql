/**
  Aqui, vc deve importar todas as tabelas, que tem o nome 'id' no nome, em breve incluo os scripts.
 */
copy lotofacil.lotofacil_id(ltf_id,
  ltf_qt,
  par_impar_id,
  ext_int_id,
  prm_id,
  hrz_id,
  vrt_id,
  dg_id,
  crz_id,
  qrt_id,
  trio_id,
  b1_id,
  b1_b2_id,
  b1_b2_b3_id,
  b1_b2_b3_b4_id,
  b1_b2_b3_b4_b5_id,
  b1_b15_id,
  b1_b8_b15_id,
  b1_b4_b8_b12_b15_id) from './lotofacil_id.csv' with (DELIMITER ';', header true, format csv);
