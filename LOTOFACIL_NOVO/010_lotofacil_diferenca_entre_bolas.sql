Drop table if exists lotofacil.lotofacil_diferenca_entre_bolas;
Create table lotofacil.lotofacil_diferenca_entre_bolas(
  ltf_id numeric not null primary key,

 df_1_a smallint not null,
 df_2_a smallint not null,
 df_3_a smallint not null,
 df_4_a smallint not null,
 df_5_a smallint not null,
 df_6_a smallint not null,
 df_7_a smallint not null,
 df_8_a smallint not null,
 df_9_a smallint not null,
 df_10_a smallint not null,
 df_11_a smallint not null,
 df_12_a smallint not null,
 df_13_a smallint not null,
 df_14_a smallint not null,

 df_1_b smallint not null,
 df_2_b smallint not null,
 df_3_b smallint not null,
 df_4_b smallint not null,
 df_5_b smallint not null,
 df_6_b smallint not null,
 df_7_b smallint not null,
 df_8_b smallint not null,
 df_9_b smallint not null,
 df_10_b smallint not null,
 df_11_b smallint not null,
 df_12_b smallint not null,
 df_13_b smallint not null,

 df_1_c smallint not null,
 df_2_c smallint not null,
 df_3_c smallint not null,
 df_4_c smallint not null,
 df_5_c smallint not null,
 df_6_c smallint not null,
 df_7_c smallint not null,
 df_8_c smallint not null,
 df_9_c smallint not null,
 df_10_c smallint not null,
 df_11_c smallint not null,
 df_12_c smallint not null,

 df_1_d smallint not null,
 df_2_d smallint not null,
 df_3_d smallint not null,
 df_4_d smallint not null,
 df_5_d smallint not null,
 df_6_d smallint not null,
 df_7_d smallint not null,
 df_8_d smallint not null,
 df_9_d smallint not null,
 df_10_d smallint not null,
 df_11_d smallint not null,

 df_1_e smallint not null,
 df_2_e smallint not null,
 df_3_e smallint not null,
 df_4_e smallint not null,
 df_5_e smallint not null,
 df_6_e smallint not null,
 df_7_e smallint not null,
 df_8_e smallint not null,
 df_9_e smallint not null,
 df_10_e smallint not null,

 df_1_f smallint not null,
 df_2_f smallint not null,
 df_3_f smallint not null,
 df_4_f smallint not null,
 df_5_f smallint not null,
 df_6_f smallint not null,
 df_7_f smallint not null,
 df_8_f smallint not null,
 df_9_f smallint not null,

 df_1_g smallint not null,
 df_2_g smallint not null,
 df_3_g smallint not null,
 df_4_g smallint not null,
 df_5_g smallint not null,
 df_6_g smallint not null,
 df_7_g smallint not null,
 df_8_g smallint not null,

 df_1_h smallint not null,
 df_2_h smallint not null,
 df_3_h smallint not null,
 df_4_h smallint not null,
 df_5_h smallint not null,
 df_6_h smallint not null,
 df_7_h smallint not null,

 df_1_i smallint not null,
 df_2_i smallint not null,
 df_3_i smallint not null,
 df_4_i smallint not null,
 df_5_i smallint not null,
 df_6_i smallint not null,

 df_1_j smallint not null,
 df_2_j smallint not null,
 df_3_j smallint not null,
 df_4_j smallint not null,
 df_5_j smallint not null,

 df_1_k smallint not null,
 df_2_k smallint not null,
 df_3_k smallint not null,
 df_4_k smallint not null,

 df_1_l smallint not null,
 df_2_l smallint not null,
 df_3_l smallint not null,

 df_1_m smallint not null,
 df_2_m smallint not null,

 df_1_n smallint not null,

 sm_df_a smallint not null,
 sm_df_b smallint not null,
 sm_df_c smallint not null,
 sm_df_d smallint not null,
 sm_df_e smallint not null,
 sm_df_f smallint not null,
 sm_df_g smallint not null,
 sm_df_h smallint not null,
 sm_df_i smallint not null,
 sm_df_j smallint not null,
 sm_df_k smallint not null,
 sm_df_l smallint not null,
 sm_df_m smallint not null,
 sm_df_n smallint not null,

 sm_df_total smallint not null,

 df_menor smallint not null,
 df_maior smallint not null,
 df_menor_maior smallint not null,
 qt_df_par smallint not null,
 qt_df_impar smallint not null,
 qt_df_1 smallint not null,
 qt_df_2 smallint not null,
 qt_df_3 smallint not null,
 qt_df_4 smallint not null,
 qt_df_5 smallint not null,
 qt_df_6 smallint not null,
 qt_df_7 smallint not null,
 qt_df_8 smallint not null,
 qt_df_9 smallint not null,
 qt_df_10 smallint not null,
 qt_df_11 smallint not null
 );

copy lotofacil.lotofacil.lotofacil_diferenca_entre_bolas(ltf_id, df_1_a, df_2_a, df_3_a, df_4_a, df_5_a, df_6_a, df_7_a, df_8_a, df_9_a, df_10_a, df_11_a, df_12_a, df_13_a, df_14_a, df_1_b, df_2_b, df_3_b, df_4_b, df_5_b, df_6_b, df_7_b, df_8_b, df_9_b, df_10_b, df_11_b, df_12_b, df_13_b, df_1_c, df_2_c, df_3_c, df_4_c, df_5_c, df_6_c, df_7_c, df_8_c, df_9_c, df_10_c, df_11_c, df_12_c, df_1_d, df_2_d, df_3_d, df_4_d, df_5_d, df_6_d, df_7_d, df_8_d, df_9_d, df_10_d, df_11_d, df_1_e, df_2_e, df_3_e, df_4_e, df_5_e, df_6_e, df_7_e, df_8_e, df_9_e, df_10_e, df_1_f, df_2_f, df_3_f, df_4_f, df_5_f, df_6_f, df_7_f, df_8_f, df_9_f, df_1_g, df_2_g, df_3_g, df_4_g, df_5_g, df_6_g, df_7_g, df_8_g, df_1_h, df_2_h, df_3_h, df_4_h, df_5_h, df_6_h, df_7_h, df_1_i, df_2_i, df_3_i, df_4_i, df_5_i, df_6_i, df_1_j, df_2_j, df_3_j, df_4_j, df_5_j, df_1_k, df_2_k, df_3_k, df_4_k, df_1_l, df_2_l, df_3_l, df_1_m, df_2_m, df_1_n, sm_df_a, sm_df_b, sm_df_c, sm_df_d, sm_df_e, sm_df_f, sm_df_g, sm_df_h, sm_df_i, sm_df_j, sm_df_k, sm_df_l, sm_df_m, sm_df_n, sm_df_total, df_menor, df_maior, df_menor_maior, qt_df_par, qt_df_impar, qt_df_1, qt_df_2, qt_df_3, qt_df_4, qt_df_5, qt_df_6, qt_df_7, qt_df_8, qt_df_9, qt_df_10, qt_df_11) from '/tmp/lotofacil_diferenca_entre_bolas.csv'
with (delimiter ';', format csv, header true);

/**
 Após copiar os dados devemos criar os índices.
 */
DROP INDEX IF EXISTS lotofacil_diferenca_entre_bolas_idx_1; CREATE INDEX lotofacil_diferenca_entre_bolas_idx_1 on lotofacil.lotofacil_diferenca_entre_bolas(ltf_id);
DROP INDEX IF EXISTS lotofacil_diferenca_entre_bolas_idx_2; CREATE INDEX lotofacil_diferenca_entre_bolas_idx_2 on lotofacil.lotofacil_diferenca_entre_bolas(df_1_a);
DROP INDEX IF EXISTS lotofacil_diferenca_entre_bolas_idx_3; CREATE INDEX lotofacil_diferenca_entre_bolas_idx_3 on lotofacil.lotofacil_diferenca_entre_bolas(df_2_a);
DROP INDEX IF EXISTS lotofacil_diferenca_entre_bolas_idx_4; CREATE INDEX lotofacil_diferenca_entre_bolas_idx_4 on lotofacil.lotofacil_diferenca_entre_bolas(df_3_a);
DROP INDEX IF EXISTS lotofacil_diferenca_entre_bolas_idx_5; CREATE INDEX lotofacil_diferenca_entre_bolas_idx_5 on lotofacil.lotofacil_diferenca_entre_bolas(df_4_a);
DROP INDEX IF EXISTS lotofacil_diferenca_entre_bolas_idx_6; CREATE INDEX lotofacil_diferenca_entre_bolas_idx_6 on lotofacil.lotofacil_diferenca_entre_bolas(df_5_a);
DROP INDEX IF EXISTS lotofacil_diferenca_entre_bolas_idx_7; CREATE INDEX lotofacil_diferenca_entre_bolas_idx_7 on lotofacil.lotofacil_diferenca_entre_bolas(df_6_a);
DROP INDEX IF EXISTS lotofacil_diferenca_entre_bolas_idx_8; CREATE INDEX lotofacil_diferenca_entre_bolas_idx_8 on lotofacil.lotofacil_diferenca_entre_bolas(df_7_a);
DROP INDEX IF EXISTS lotofacil_diferenca_entre_bolas_idx_9; CREATE INDEX lotofacil_diferenca_entre_bolas_idx_9 on lotofacil.lotofacil_diferenca_entre_bolas(df_8_a);
DROP INDEX IF EXISTS lotofacil_diferenca_entre_bolas_idx_10; CREATE INDEX lotofacil_diferenca_entre_bolas_idx_10 on lotofacil.lotofacil_diferenca_entre_bolas(df_9_a);
DROP INDEX IF EXISTS lotofacil_diferenca_entre_bolas_idx_11; CREATE INDEX lotofacil_diferenca_entre_bolas_idx_11 on lotofacil.lotofacil_diferenca_entre_bolas(df_10_a);
DROP INDEX IF EXISTS lotofacil_diferenca_entre_bolas_idx_12; CREATE INDEX lotofacil_diferenca_entre_bolas_idx_12 on lotofacil.lotofacil_diferenca_entre_bolas(df_11_a);
DROP INDEX IF EXISTS lotofacil_diferenca_entre_bolas_idx_13; CREATE INDEX lotofacil_diferenca_entre_bolas_idx_13 on lotofacil.lotofacil_diferenca_entre_bolas(df_12_a);
DROP INDEX IF EXISTS lotofacil_diferenca_entre_bolas_idx_14; CREATE INDEX lotofacil_diferenca_entre_bolas_idx_14 on lotofacil.lotofacil_diferenca_entre_bolas(df_13_a);
DROP INDEX IF EXISTS lotofacil_diferenca_entre_bolas_idx_15; CREATE INDEX lotofacil_diferenca_entre_bolas_idx_15 on lotofacil.lotofacil_diferenca_entre_bolas(df_14_a);
DROP INDEX IF EXISTS lotofacil_diferenca_entre_bolas_idx_16; CREATE INDEX lotofacil_diferenca_entre_bolas_idx_16 on lotofacil.lotofacil_diferenca_entre_bolas(df_1_b);
DROP INDEX IF EXISTS lotofacil_diferenca_entre_bolas_idx_17; CREATE INDEX lotofacil_diferenca_entre_bolas_idx_17 on lotofacil.lotofacil_diferenca_entre_bolas(df_2_b);
DROP INDEX IF EXISTS lotofacil_diferenca_entre_bolas_idx_18; CREATE INDEX lotofacil_diferenca_entre_bolas_idx_18 on lotofacil.lotofacil_diferenca_entre_bolas(df_3_b);
DROP INDEX IF EXISTS lotofacil_diferenca_entre_bolas_idx_19; CREATE INDEX lotofacil_diferenca_entre_bolas_idx_19 on lotofacil.lotofacil_diferenca_entre_bolas(df_4_b);
DROP INDEX IF EXISTS lotofacil_diferenca_entre_bolas_idx_20; CREATE INDEX lotofacil_diferenca_entre_bolas_idx_20 on lotofacil.lotofacil_diferenca_entre_bolas(df_5_b);
DROP INDEX IF EXISTS lotofacil_diferenca_entre_bolas_idx_21; CREATE INDEX lotofacil_diferenca_entre_bolas_idx_21 on lotofacil.lotofacil_diferenca_entre_bolas(df_6_b);
DROP INDEX IF EXISTS lotofacil_diferenca_entre_bolas_idx_22; CREATE INDEX lotofacil_diferenca_entre_bolas_idx_22 on lotofacil.lotofacil_diferenca_entre_bolas(df_7_b);
DROP INDEX IF EXISTS lotofacil_diferenca_entre_bolas_idx_23; CREATE INDEX lotofacil_diferenca_entre_bolas_idx_23 on lotofacil.lotofacil_diferenca_entre_bolas(df_8_b);
DROP INDEX IF EXISTS lotofacil_diferenca_entre_bolas_idx_24; CREATE INDEX lotofacil_diferenca_entre_bolas_idx_24 on lotofacil.lotofacil_diferenca_entre_bolas(df_9_b);
DROP INDEX IF EXISTS lotofacil_diferenca_entre_bolas_idx_25; CREATE INDEX lotofacil_diferenca_entre_bolas_idx_25 on lotofacil.lotofacil_diferenca_entre_bolas(df_10_b);
DROP INDEX IF EXISTS lotofacil_diferenca_entre_bolas_idx_26; CREATE INDEX lotofacil_diferenca_entre_bolas_idx_26 on lotofacil.lotofacil_diferenca_entre_bolas(df_11_b);
DROP INDEX IF EXISTS lotofacil_diferenca_entre_bolas_idx_27; CREATE INDEX lotofacil_diferenca_entre_bolas_idx_27 on lotofacil.lotofacil_diferenca_entre_bolas(df_12_b);
DROP INDEX IF EXISTS lotofacil_diferenca_entre_bolas_idx_28; CREATE INDEX lotofacil_diferenca_entre_bolas_idx_28 on lotofacil.lotofacil_diferenca_entre_bolas(df_13_b);
DROP INDEX IF EXISTS lotofacil_diferenca_entre_bolas_idx_29; CREATE INDEX lotofacil_diferenca_entre_bolas_idx_29 on lotofacil.lotofacil_diferenca_entre_bolas(df_1_c);
DROP INDEX IF EXISTS lotofacil_diferenca_entre_bolas_idx_30; CREATE INDEX lotofacil_diferenca_entre_bolas_idx_30 on lotofacil.lotofacil_diferenca_entre_bolas(df_2_c);
DROP INDEX IF EXISTS lotofacil_diferenca_entre_bolas_idx_31; CREATE INDEX lotofacil_diferenca_entre_bolas_idx_31 on lotofacil.lotofacil_diferenca_entre_bolas(df_3_c);
DROP INDEX IF EXISTS lotofacil_diferenca_entre_bolas_idx_32; CREATE INDEX lotofacil_diferenca_entre_bolas_idx_32 on lotofacil.lotofacil_diferenca_entre_bolas(df_4_c);
DROP INDEX IF EXISTS lotofacil_diferenca_entre_bolas_idx_33; CREATE INDEX lotofacil_diferenca_entre_bolas_idx_33 on lotofacil.lotofacil_diferenca_entre_bolas(df_5_c);
DROP INDEX IF EXISTS lotofacil_diferenca_entre_bolas_idx_34; CREATE INDEX lotofacil_diferenca_entre_bolas_idx_34 on lotofacil.lotofacil_diferenca_entre_bolas(df_6_c);
DROP INDEX IF EXISTS lotofacil_diferenca_entre_bolas_idx_35; CREATE INDEX lotofacil_diferenca_entre_bolas_idx_35 on lotofacil.lotofacil_diferenca_entre_bolas(df_7_c);
DROP INDEX IF EXISTS lotofacil_diferenca_entre_bolas_idx_36; CREATE INDEX lotofacil_diferenca_entre_bolas_idx_36 on lotofacil.lotofacil_diferenca_entre_bolas(df_8_c);
DROP INDEX IF EXISTS lotofacil_diferenca_entre_bolas_idx_37; CREATE INDEX lotofacil_diferenca_entre_bolas_idx_37 on lotofacil.lotofacil_diferenca_entre_bolas(df_9_c);
DROP INDEX IF EXISTS lotofacil_diferenca_entre_bolas_idx_38; CREATE INDEX lotofacil_diferenca_entre_bolas_idx_38 on lotofacil.lotofacil_diferenca_entre_bolas(df_10_c);
DROP INDEX IF EXISTS lotofacil_diferenca_entre_bolas_idx_39; CREATE INDEX lotofacil_diferenca_entre_bolas_idx_39 on lotofacil.lotofacil_diferenca_entre_bolas(df_11_c);
DROP INDEX IF EXISTS lotofacil_diferenca_entre_bolas_idx_40; CREATE INDEX lotofacil_diferenca_entre_bolas_idx_40 on lotofacil.lotofacil_diferenca_entre_bolas(df_12_c);
DROP INDEX IF EXISTS lotofacil_diferenca_entre_bolas_idx_41; CREATE INDEX lotofacil_diferenca_entre_bolas_idx_41 on lotofacil.lotofacil_diferenca_entre_bolas(df_1_d);
DROP INDEX IF EXISTS lotofacil_diferenca_entre_bolas_idx_42; CREATE INDEX lotofacil_diferenca_entre_bolas_idx_42 on lotofacil.lotofacil_diferenca_entre_bolas(df_2_d);
DROP INDEX IF EXISTS lotofacil_diferenca_entre_bolas_idx_43; CREATE INDEX lotofacil_diferenca_entre_bolas_idx_43 on lotofacil.lotofacil_diferenca_entre_bolas(df_3_d);
DROP INDEX IF EXISTS lotofacil_diferenca_entre_bolas_idx_44; CREATE INDEX lotofacil_diferenca_entre_bolas_idx_44 on lotofacil.lotofacil_diferenca_entre_bolas(df_4_d);
DROP INDEX IF EXISTS lotofacil_diferenca_entre_bolas_idx_45; CREATE INDEX lotofacil_diferenca_entre_bolas_idx_45 on lotofacil.lotofacil_diferenca_entre_bolas(df_5_d);
DROP INDEX IF EXISTS lotofacil_diferenca_entre_bolas_idx_46; CREATE INDEX lotofacil_diferenca_entre_bolas_idx_46 on lotofacil.lotofacil_diferenca_entre_bolas(df_6_d);
DROP INDEX IF EXISTS lotofacil_diferenca_entre_bolas_idx_47; CREATE INDEX lotofacil_diferenca_entre_bolas_idx_47 on lotofacil.lotofacil_diferenca_entre_bolas(df_7_d);
DROP INDEX IF EXISTS lotofacil_diferenca_entre_bolas_idx_48; CREATE INDEX lotofacil_diferenca_entre_bolas_idx_48 on lotofacil.lotofacil_diferenca_entre_bolas(df_8_d);
DROP INDEX IF EXISTS lotofacil_diferenca_entre_bolas_idx_49; CREATE INDEX lotofacil_diferenca_entre_bolas_idx_49 on lotofacil.lotofacil_diferenca_entre_bolas(df_9_d);
DROP INDEX IF EXISTS lotofacil_diferenca_entre_bolas_idx_50; CREATE INDEX lotofacil_diferenca_entre_bolas_idx_50 on lotofacil.lotofacil_diferenca_entre_bolas(df_10_d);
DROP INDEX IF EXISTS lotofacil_diferenca_entre_bolas_idx_51; CREATE INDEX lotofacil_diferenca_entre_bolas_idx_51 on lotofacil.lotofacil_diferenca_entre_bolas(df_11_d);
DROP INDEX IF EXISTS lotofacil_diferenca_entre_bolas_idx_52; CREATE INDEX lotofacil_diferenca_entre_bolas_idx_52 on lotofacil.lotofacil_diferenca_entre_bolas(df_1_e);
DROP INDEX IF EXISTS lotofacil_diferenca_entre_bolas_idx_53; CREATE INDEX lotofacil_diferenca_entre_bolas_idx_53 on lotofacil.lotofacil_diferenca_entre_bolas(df_2_e);
DROP INDEX IF EXISTS lotofacil_diferenca_entre_bolas_idx_54; CREATE INDEX lotofacil_diferenca_entre_bolas_idx_54 on lotofacil.lotofacil_diferenca_entre_bolas(df_3_e);
DROP INDEX IF EXISTS lotofacil_diferenca_entre_bolas_idx_55; CREATE INDEX lotofacil_diferenca_entre_bolas_idx_55 on lotofacil.lotofacil_diferenca_entre_bolas(df_4_e);
DROP INDEX IF EXISTS lotofacil_diferenca_entre_bolas_idx_56; CREATE INDEX lotofacil_diferenca_entre_bolas_idx_56 on lotofacil.lotofacil_diferenca_entre_bolas(df_5_e);
DROP INDEX IF EXISTS lotofacil_diferenca_entre_bolas_idx_57; CREATE INDEX lotofacil_diferenca_entre_bolas_idx_57 on lotofacil.lotofacil_diferenca_entre_bolas(df_6_e);
DROP INDEX IF EXISTS lotofacil_diferenca_entre_bolas_idx_58; CREATE INDEX lotofacil_diferenca_entre_bolas_idx_58 on lotofacil.lotofacil_diferenca_entre_bolas(df_7_e);
DROP INDEX IF EXISTS lotofacil_diferenca_entre_bolas_idx_59; CREATE INDEX lotofacil_diferenca_entre_bolas_idx_59 on lotofacil.lotofacil_diferenca_entre_bolas(df_8_e);
DROP INDEX IF EXISTS lotofacil_diferenca_entre_bolas_idx_60; CREATE INDEX lotofacil_diferenca_entre_bolas_idx_60 on lotofacil.lotofacil_diferenca_entre_bolas(df_9_e);
DROP INDEX IF EXISTS lotofacil_diferenca_entre_bolas_idx_61; CREATE INDEX lotofacil_diferenca_entre_bolas_idx_61 on lotofacil.lotofacil_diferenca_entre_bolas(df_10_e);
DROP INDEX IF EXISTS lotofacil_diferenca_entre_bolas_idx_62; CREATE INDEX lotofacil_diferenca_entre_bolas_idx_62 on lotofacil.lotofacil_diferenca_entre_bolas(df_1_f);
DROP INDEX IF EXISTS lotofacil_diferenca_entre_bolas_idx_63; CREATE INDEX lotofacil_diferenca_entre_bolas_idx_63 on lotofacil.lotofacil_diferenca_entre_bolas(df_2_f);
DROP INDEX IF EXISTS lotofacil_diferenca_entre_bolas_idx_64; CREATE INDEX lotofacil_diferenca_entre_bolas_idx_64 on lotofacil.lotofacil_diferenca_entre_bolas(df_3_f);
DROP INDEX IF EXISTS lotofacil_diferenca_entre_bolas_idx_65; CREATE INDEX lotofacil_diferenca_entre_bolas_idx_65 on lotofacil.lotofacil_diferenca_entre_bolas(df_4_f);
DROP INDEX IF EXISTS lotofacil_diferenca_entre_bolas_idx_66; CREATE INDEX lotofacil_diferenca_entre_bolas_idx_66 on lotofacil.lotofacil_diferenca_entre_bolas(df_5_f);
DROP INDEX IF EXISTS lotofacil_diferenca_entre_bolas_idx_67; CREATE INDEX lotofacil_diferenca_entre_bolas_idx_67 on lotofacil.lotofacil_diferenca_entre_bolas(df_6_f);
DROP INDEX IF EXISTS lotofacil_diferenca_entre_bolas_idx_68; CREATE INDEX lotofacil_diferenca_entre_bolas_idx_68 on lotofacil.lotofacil_diferenca_entre_bolas(df_7_f);
DROP INDEX IF EXISTS lotofacil_diferenca_entre_bolas_idx_69; CREATE INDEX lotofacil_diferenca_entre_bolas_idx_69 on lotofacil.lotofacil_diferenca_entre_bolas(df_8_f);
DROP INDEX IF EXISTS lotofacil_diferenca_entre_bolas_idx_70; CREATE INDEX lotofacil_diferenca_entre_bolas_idx_70 on lotofacil.lotofacil_diferenca_entre_bolas(df_9_f);
DROP INDEX IF EXISTS lotofacil_diferenca_entre_bolas_idx_71; CREATE INDEX lotofacil_diferenca_entre_bolas_idx_71 on lotofacil.lotofacil_diferenca_entre_bolas(df_1_g);
DROP INDEX IF EXISTS lotofacil_diferenca_entre_bolas_idx_72; CREATE INDEX lotofacil_diferenca_entre_bolas_idx_72 on lotofacil.lotofacil_diferenca_entre_bolas(df_2_g);
DROP INDEX IF EXISTS lotofacil_diferenca_entre_bolas_idx_73; CREATE INDEX lotofacil_diferenca_entre_bolas_idx_73 on lotofacil.lotofacil_diferenca_entre_bolas(df_3_g);
DROP INDEX IF EXISTS lotofacil_diferenca_entre_bolas_idx_74; CREATE INDEX lotofacil_diferenca_entre_bolas_idx_74 on lotofacil.lotofacil_diferenca_entre_bolas(df_4_g);
DROP INDEX IF EXISTS lotofacil_diferenca_entre_bolas_idx_75; CREATE INDEX lotofacil_diferenca_entre_bolas_idx_75 on lotofacil.lotofacil_diferenca_entre_bolas(df_5_g);
DROP INDEX IF EXISTS lotofacil_diferenca_entre_bolas_idx_76; CREATE INDEX lotofacil_diferenca_entre_bolas_idx_76 on lotofacil.lotofacil_diferenca_entre_bolas(df_6_g);
DROP INDEX IF EXISTS lotofacil_diferenca_entre_bolas_idx_77; CREATE INDEX lotofacil_diferenca_entre_bolas_idx_77 on lotofacil.lotofacil_diferenca_entre_bolas(df_7_g);
DROP INDEX IF EXISTS lotofacil_diferenca_entre_bolas_idx_78; CREATE INDEX lotofacil_diferenca_entre_bolas_idx_78 on lotofacil.lotofacil_diferenca_entre_bolas(df_8_g);
DROP INDEX IF EXISTS lotofacil_diferenca_entre_bolas_idx_79; CREATE INDEX lotofacil_diferenca_entre_bolas_idx_79 on lotofacil.lotofacil_diferenca_entre_bolas(df_1_h);
DROP INDEX IF EXISTS lotofacil_diferenca_entre_bolas_idx_80; CREATE INDEX lotofacil_diferenca_entre_bolas_idx_80 on lotofacil.lotofacil_diferenca_entre_bolas(df_2_h);
DROP INDEX IF EXISTS lotofacil_diferenca_entre_bolas_idx_81; CREATE INDEX lotofacil_diferenca_entre_bolas_idx_81 on lotofacil.lotofacil_diferenca_entre_bolas(df_3_h);
DROP INDEX IF EXISTS lotofacil_diferenca_entre_bolas_idx_82; CREATE INDEX lotofacil_diferenca_entre_bolas_idx_82 on lotofacil.lotofacil_diferenca_entre_bolas(df_4_h);
DROP INDEX IF EXISTS lotofacil_diferenca_entre_bolas_idx_83; CREATE INDEX lotofacil_diferenca_entre_bolas_idx_83 on lotofacil.lotofacil_diferenca_entre_bolas(df_5_h);
DROP INDEX IF EXISTS lotofacil_diferenca_entre_bolas_idx_84; CREATE INDEX lotofacil_diferenca_entre_bolas_idx_84 on lotofacil.lotofacil_diferenca_entre_bolas(df_6_h);
DROP INDEX IF EXISTS lotofacil_diferenca_entre_bolas_idx_85; CREATE INDEX lotofacil_diferenca_entre_bolas_idx_85 on lotofacil.lotofacil_diferenca_entre_bolas(df_7_h);
DROP INDEX IF EXISTS lotofacil_diferenca_entre_bolas_idx_86; CREATE INDEX lotofacil_diferenca_entre_bolas_idx_86 on lotofacil.lotofacil_diferenca_entre_bolas(df_1_i);
DROP INDEX IF EXISTS lotofacil_diferenca_entre_bolas_idx_87; CREATE INDEX lotofacil_diferenca_entre_bolas_idx_87 on lotofacil.lotofacil_diferenca_entre_bolas(df_2_i);
DROP INDEX IF EXISTS lotofacil_diferenca_entre_bolas_idx_88; CREATE INDEX lotofacil_diferenca_entre_bolas_idx_88 on lotofacil.lotofacil_diferenca_entre_bolas(df_3_i);
DROP INDEX IF EXISTS lotofacil_diferenca_entre_bolas_idx_89; CREATE INDEX lotofacil_diferenca_entre_bolas_idx_89 on lotofacil.lotofacil_diferenca_entre_bolas(df_4_i);
DROP INDEX IF EXISTS lotofacil_diferenca_entre_bolas_idx_90; CREATE INDEX lotofacil_diferenca_entre_bolas_idx_90 on lotofacil.lotofacil_diferenca_entre_bolas(df_5_i);
DROP INDEX IF EXISTS lotofacil_diferenca_entre_bolas_idx_91; CREATE INDEX lotofacil_diferenca_entre_bolas_idx_91 on lotofacil.lotofacil_diferenca_entre_bolas(df_6_i);
DROP INDEX IF EXISTS lotofacil_diferenca_entre_bolas_idx_92; CREATE INDEX lotofacil_diferenca_entre_bolas_idx_92 on lotofacil.lotofacil_diferenca_entre_bolas(df_1_j);
DROP INDEX IF EXISTS lotofacil_diferenca_entre_bolas_idx_93; CREATE INDEX lotofacil_diferenca_entre_bolas_idx_93 on lotofacil.lotofacil_diferenca_entre_bolas(df_2_j);
DROP INDEX IF EXISTS lotofacil_diferenca_entre_bolas_idx_94; CREATE INDEX lotofacil_diferenca_entre_bolas_idx_94 on lotofacil.lotofacil_diferenca_entre_bolas(df_3_j);
DROP INDEX IF EXISTS lotofacil_diferenca_entre_bolas_idx_95; CREATE INDEX lotofacil_diferenca_entre_bolas_idx_95 on lotofacil.lotofacil_diferenca_entre_bolas(df_4_j);
DROP INDEX IF EXISTS lotofacil_diferenca_entre_bolas_idx_96; CREATE INDEX lotofacil_diferenca_entre_bolas_idx_96 on lotofacil.lotofacil_diferenca_entre_bolas(df_5_j);
DROP INDEX IF EXISTS lotofacil_diferenca_entre_bolas_idx_97; CREATE INDEX lotofacil_diferenca_entre_bolas_idx_97 on lotofacil.lotofacil_diferenca_entre_bolas(df_1_k);
DROP INDEX IF EXISTS lotofacil_diferenca_entre_bolas_idx_98; CREATE INDEX lotofacil_diferenca_entre_bolas_idx_98 on lotofacil.lotofacil_diferenca_entre_bolas(df_2_k);
DROP INDEX IF EXISTS lotofacil_diferenca_entre_bolas_idx_99; CREATE INDEX lotofacil_diferenca_entre_bolas_idx_99 on lotofacil.lotofacil_diferenca_entre_bolas(df_3_k);
DROP INDEX IF EXISTS lotofacil_diferenca_entre_bolas_idx_100; CREATE INDEX lotofacil_diferenca_entre_bolas_idx_100 on lotofacil.lotofacil_diferenca_entre_bolas(df_4_k);
DROP INDEX IF EXISTS lotofacil_diferenca_entre_bolas_idx_101; CREATE INDEX lotofacil_diferenca_entre_bolas_idx_101 on lotofacil.lotofacil_diferenca_entre_bolas(df_1_l);
DROP INDEX IF EXISTS lotofacil_diferenca_entre_bolas_idx_102; CREATE INDEX lotofacil_diferenca_entre_bolas_idx_102 on lotofacil.lotofacil_diferenca_entre_bolas(df_2_l);
DROP INDEX IF EXISTS lotofacil_diferenca_entre_bolas_idx_103; CREATE INDEX lotofacil_diferenca_entre_bolas_idx_103 on lotofacil.lotofacil_diferenca_entre_bolas(df_3_l);
DROP INDEX IF EXISTS lotofacil_diferenca_entre_bolas_idx_104; CREATE INDEX lotofacil_diferenca_entre_bolas_idx_104 on lotofacil.lotofacil_diferenca_entre_bolas(df_1_m);
DROP INDEX IF EXISTS lotofacil_diferenca_entre_bolas_idx_105; CREATE INDEX lotofacil_diferenca_entre_bolas_idx_105 on lotofacil.lotofacil_diferenca_entre_bolas(df_2_m);
DROP INDEX IF EXISTS lotofacil_diferenca_entre_bolas_idx_106; CREATE INDEX lotofacil_diferenca_entre_bolas_idx_106 on lotofacil.lotofacil_diferenca_entre_bolas(df_1_n);
DROP INDEX IF EXISTS lotofacil_diferenca_entre_bolas_idx_107; CREATE INDEX lotofacil_diferenca_entre_bolas_idx_107 on lotofacil.lotofacil_diferenca_entre_bolas(sm_df_a);
DROP INDEX IF EXISTS lotofacil_diferenca_entre_bolas_idx_108; CREATE INDEX lotofacil_diferenca_entre_bolas_idx_108 on lotofacil.lotofacil_diferenca_entre_bolas(sm_df_b);
DROP INDEX IF EXISTS lotofacil_diferenca_entre_bolas_idx_109; CREATE INDEX lotofacil_diferenca_entre_bolas_idx_109 on lotofacil.lotofacil_diferenca_entre_bolas(sm_df_c);
DROP INDEX IF EXISTS lotofacil_diferenca_entre_bolas_idx_110; CREATE INDEX lotofacil_diferenca_entre_bolas_idx_110 on lotofacil.lotofacil_diferenca_entre_bolas(sm_df_d);
DROP INDEX IF EXISTS lotofacil_diferenca_entre_bolas_idx_111; CREATE INDEX lotofacil_diferenca_entre_bolas_idx_111 on lotofacil.lotofacil_diferenca_entre_bolas(sm_df_e);
DROP INDEX IF EXISTS lotofacil_diferenca_entre_bolas_idx_112; CREATE INDEX lotofacil_diferenca_entre_bolas_idx_112 on lotofacil.lotofacil_diferenca_entre_bolas(sm_df_f);
DROP INDEX IF EXISTS lotofacil_diferenca_entre_bolas_idx_113; CREATE INDEX lotofacil_diferenca_entre_bolas_idx_113 on lotofacil.lotofacil_diferenca_entre_bolas(sm_df_g);
DROP INDEX IF EXISTS lotofacil_diferenca_entre_bolas_idx_114; CREATE INDEX lotofacil_diferenca_entre_bolas_idx_114 on lotofacil.lotofacil_diferenca_entre_bolas(sm_df_h);
DROP INDEX IF EXISTS lotofacil_diferenca_entre_bolas_idx_115; CREATE INDEX lotofacil_diferenca_entre_bolas_idx_115 on lotofacil.lotofacil_diferenca_entre_bolas(sm_df_i);
DROP INDEX IF EXISTS lotofacil_diferenca_entre_bolas_idx_116; CREATE INDEX lotofacil_diferenca_entre_bolas_idx_116 on lotofacil.lotofacil_diferenca_entre_bolas(sm_df_j);
DROP INDEX IF EXISTS lotofacil_diferenca_entre_bolas_idx_117; CREATE INDEX lotofacil_diferenca_entre_bolas_idx_117 on lotofacil.lotofacil_diferenca_entre_bolas(sm_df_k);
DROP INDEX IF EXISTS lotofacil_diferenca_entre_bolas_idx_118; CREATE INDEX lotofacil_diferenca_entre_bolas_idx_118 on lotofacil.lotofacil_diferenca_entre_bolas(sm_df_l);
DROP INDEX IF EXISTS lotofacil_diferenca_entre_bolas_idx_119; CREATE INDEX lotofacil_diferenca_entre_bolas_idx_119 on lotofacil.lotofacil_diferenca_entre_bolas(sm_df_m);
DROP INDEX IF EXISTS lotofacil_diferenca_entre_bolas_idx_120; CREATE INDEX lotofacil_diferenca_entre_bolas_idx_120 on lotofacil.lotofacil_diferenca_entre_bolas(sm_df_n);
DROP INDEX IF EXISTS lotofacil_diferenca_entre_bolas_idx_121; CREATE INDEX lotofacil_diferenca_entre_bolas_idx_121 on lotofacil.lotofacil_diferenca_entre_bolas(sm_df_total);
DROP INDEX IF EXISTS lotofacil_diferenca_entre_bolas_idx_122; CREATE INDEX lotofacil_diferenca_entre_bolas_idx_122 on lotofacil.lotofacil_diferenca_entre_bolas(df_menor);
DROP INDEX IF EXISTS lotofacil_diferenca_entre_bolas_idx_123; CREATE INDEX lotofacil_diferenca_entre_bolas_idx_123 on lotofacil.lotofacil_diferenca_entre_bolas(df_maior);
DROP INDEX IF EXISTS lotofacil_diferenca_entre_bolas_idx_124; CREATE INDEX lotofacil_diferenca_entre_bolas_idx_124 on lotofacil.lotofacil_diferenca_entre_bolas(df_menor_maior);
DROP INDEX IF EXISTS lotofacil_diferenca_entre_bolas_idx_125; CREATE INDEX lotofacil_diferenca_entre_bolas_idx_125 on lotofacil.lotofacil_diferenca_entre_bolas(qt_df_par);
DROP INDEX IF EXISTS lotofacil_diferenca_entre_bolas_idx_126; CREATE INDEX lotofacil_diferenca_entre_bolas_idx_126 on lotofacil.lotofacil_diferenca_entre_bolas(qt_df_impar);
DROP INDEX IF EXISTS lotofacil_diferenca_entre_bolas_idx_127; CREATE INDEX lotofacil_diferenca_entre_bolas_idx_127 on lotofacil.lotofacil_diferenca_entre_bolas(qt_df_1);
DROP INDEX IF EXISTS lotofacil_diferenca_entre_bolas_idx_128; CREATE INDEX lotofacil_diferenca_entre_bolas_idx_128 on lotofacil.lotofacil_diferenca_entre_bolas(qt_df_2);
DROP INDEX IF EXISTS lotofacil_diferenca_entre_bolas_idx_129; CREATE INDEX lotofacil_diferenca_entre_bolas_idx_129 on lotofacil.lotofacil_diferenca_entre_bolas(qt_df_3);
DROP INDEX IF EXISTS lotofacil_diferenca_entre_bolas_idx_130; CREATE INDEX lotofacil_diferenca_entre_bolas_idx_130 on lotofacil.lotofacil_diferenca_entre_bolas(qt_df_4);
DROP INDEX IF EXISTS lotofacil_diferenca_entre_bolas_idx_131; CREATE INDEX lotofacil_diferenca_entre_bolas_idx_131 on lotofacil.lotofacil_diferenca_entre_bolas(qt_df_5);
DROP INDEX IF EXISTS lotofacil_diferenca_entre_bolas_idx_132; CREATE INDEX lotofacil_diferenca_entre_bolas_idx_132 on lotofacil.lotofacil_diferenca_entre_bolas(qt_df_6);
DROP INDEX IF EXISTS lotofacil_diferenca_entre_bolas_idx_133; CREATE INDEX lotofacil_diferenca_entre_bolas_idx_133 on lotofacil.lotofacil_diferenca_entre_bolas(qt_df_7);
DROP INDEX IF EXISTS lotofacil_diferenca_entre_bolas_idx_134; CREATE INDEX lotofacil_diferenca_entre_bolas_idx_134 on lotofacil.lotofacil_diferenca_entre_bolas(qt_df_8);
DROP INDEX IF EXISTS lotofacil_diferenca_entre_bolas_idx_135; CREATE INDEX lotofacil_diferenca_entre_bolas_idx_135 on lotofacil.lotofacil_diferenca_entre_bolas(qt_df_9);
DROP INDEX IF EXISTS lotofacil_diferenca_entre_bolas_idx_136; CREATE INDEX lotofacil_diferenca_entre_bolas_idx_136 on lotofacil.lotofacil_diferenca_entre_bolas(qt_df_10);
DROP INDEX IF EXISTS lotofacil_diferenca_entre_bolas_idx_137; CREATE INDEX lotofacil_diferenca_entre_bolas_idx_137 on lotofacil.lotofacil_diferenca_entre_bolas(qt_df_11);

/**
 Algumas combinações de colunas serão pesquisadas com frequência, então, irei criar índices pra elas.
 */
DROP INDEX IF EXISTS lotofacil_diferenca_entre_bolas_idx_138; CREATE INDEX lotofacil_diferenca_entre_bolas_idx_138 on lotofacil.lotofacil_diferenca_entre_bolas(df_menor, df_maior);
DROP INDEX IF EXISTS lotofacil_diferenca_entre_bolas_idx_139; CREATE INDEX lotofacil_diferenca_entre_bolas_idx_139 on lotofacil.lotofacil_diferenca_entre_bolas(qt_df_par, qt_df_impar);
DROP INDEX IF EXISTS lotofacil_diferenca_entre_bolas_idx_140; CREATE INDEX lotofacil_diferenca_entre_bolas_idx_140 on lotofacil.lotofacil_diferenca_entre_bolas(qt_df_1, qt_df_2);
DROP INDEX IF EXISTS lotofacil_diferenca_entre_bolas_idx_141; CREATE INDEX lotofacil_diferenca_entre_bolas_idx_141 on lotofacil.lotofacil_diferenca_entre_bolas(qt_df_1, qt_df_2, qt_df_3);




Select ltf_a.*, ltf_b.*
from lotofacil.lotofacil_bolas ltf_a,
 lotofacil.lotofacil_diferenca_entre_bolas ltf_b
where ltf_a.ltf_id = ltf_b.ltf_id
 /*
and df_1_b = df_2_b
and df_2_b = df_3_b
and df_3_b = df_4_b
and df_4_b = df_5_b
and df_5_b = df_6_b
and df_6_b = df_7_b
and df_7_b = df_8_b
and df_8_b = df_9_b
and df_9_b = df_10_b
and df_10_b = df_11_b
and df_11_b = df_12_b
and df_12_b = df_13_b
*/
and qt_df_1 = 4;

Select sm_df_a, count(*) as qt_vz
from lotofacil.lotofacil_diferenca_entre_bolas
group by sm_df_a
order by qt_vz desc;

Select qt_df_1, count(*) as qt_vz
from lotofacil.lotofacil_diferenca_entre_bolas
group by qt_df_1
order by qt_vz desc;

Select qt_df_2, count(*) as qt_vz
from lotofacil.lotofacil_diferenca_entre_bolas
group by qt_df_2
order by qt_vz desc;

Select qt_df_3, count(*) as qt_vz
from lotofacil.lotofacil_diferenca_entre_bolas
group by qt_df_3
order by qt_vz desc;

Select qt_df_4, count(*) as qt_vz
from lotofacil.lotofacil_diferenca_entre_bolas
group by qt_df_4
order by qt_vz desc;

Select qt_df_5, count(*) as qt_vz
from lotofacil.lotofacil_diferenca_entre_bolas
group by qt_df_5
order by qt_vz desc;

Select qt_df_1,qt_df_2, count(*) as qt_vz
from lotofacil.lotofacil_diferenca_entre_bolas
group by qt_df_1,qt_df_2
order by qt_vz desc;

Select qt_df_1,qt_df_2,qt_df_3, count(*) as qt_vz
from lotofacil.lotofacil_diferenca_entre_bolas
group by qt_df_1,qt_df_2,qt_df_3
order by qt_vz desc;

Select qt_df_1,qt_df_2,qt_df_3,qt_df_4, count(*) as qt_vz
from lotofacil.lotofacil_diferenca_entre_bolas
group by qt_df_1,qt_df_2,qt_df_3,qt_df_4
order by qt_vz desc;

Select qt_df_1,qt_df_2,qt_df_3,qt_df_4, qt_df_5, count(*) as qt_vz
from lotofacil.lotofacil_diferenca_entre_bolas
group by qt_df_1,qt_df_2,qt_df_3,qt_df_4,qt_df_5
order by qt_vz desc;

Select qt_df_1,qt_df_2,qt_df_3,qt_df_4, qt_df_5, qt_df_6, count(*) as qt_vz
from lotofacil.lotofacil_diferenca_entre_bolas
group by qt_df_1,qt_df_2,qt_df_3,qt_df_4,qt_df_5, qt_df_6
order by qt_vz desc;

/**
 Os campos com o prefixo 'qt_df_' indica a quantidade de vez que a
 diferença corresponde ao número do sufixo do campo saiu, então, por exemplo,
 em um campo 'qt_df_1', então, querendo saber quantas vezes a diferença
 de valor 1 saiu.
 Então, iremos criar estatísticas, referente a todos os concursos já sorteados,
 pra saber qual mais sai.
 */
Drop View if EXISTS lotofacil.v_lotofacil_diferenca_entre_bolas_qt_df_1_a_qt_df_1;
Create View lotofacil.v_lotofacil_diferenca_entre_bolas_qt_df_1_a_qt_df_1
 as
SELECT
 ltf_a.qt_df_1,
 ltf_a.qt_vz cmb_qt,
 case when ltf_b.qt_vz is null then 0 else ltf_b.qt_vz end res_qt
FROM
 (SELECT
   qt_df_1,
   count(*) AS qt_vz
  FROM lotofacil.lotofacil_diferenca_entre_bolas
  GROUP BY qt_df_1) ltf_a
 LEFT JOIN
 (
  SELECT
   qt_df_1,
   count(*) AS qt_vz
  FROM lotofacil.lotofacil_resultado_id ltf_a,
   lotofacil.lotofacil_diferenca_entre_bolas ltf_b
  WHERE ltf_a.ltf_id = ltf_b.ltf_id
  GROUP BY qt_df_1
  ORDER BY qt_vz DESC

 ) ltf_b
  ON ltf_a.qt_df_1 = ltf_b.qt_df_1
ORDER BY res_qt DESC;

Drop View if EXISTS lotofacil.v_lotofacil_diferenca_entre_bolas_qt_df_1_a_qt_df_2;
Create View lotofacil.v_lotofacil_diferenca_entre_bolas_qt_df_1_a_qt_df_2
 as
SELECT
 ltf_a.qt_df_1,
 ltf_a.qt_df_2,
 ltf_a.qt_vz cmb_qt,
 case when ltf_b.qt_vz is null then 0 else ltf_b.qt_vz end res_qt
FROM
 (SELECT
   qt_df_1,
  qt_df_2,
   count(*) AS qt_vz
  FROM lotofacil.lotofacil_diferenca_entre_bolas
  GROUP BY qt_df_1, qt_df_2) ltf_a
 LEFT JOIN
 (
  SELECT
   qt_df_1,
   qt_df_2,
   count(*) AS qt_vz
  FROM lotofacil.lotofacil_resultado_id ltf_a,
   lotofacil.lotofacil_diferenca_entre_bolas ltf_b
  WHERE ltf_a.ltf_id = ltf_b.ltf_id
  GROUP BY qt_df_1, qt_df_2
  ORDER BY qt_vz DESC

 ) ltf_b
  ON ltf_a.qt_df_1 = ltf_b.qt_df_1
 and ltf_a.qt_df_2 = ltf_b.qt_df_2
ORDER BY res_qt DESC;

Drop View if EXISTS lotofacil.v_lotofacil_diferenca_entre_bolas_qt_df_1_a_qt_df_3;
Create View lotofacil.v_lotofacil_diferenca_entre_bolas_qt_df_1_a_qt_df_3
 as
SELECT
 ltf_a.qt_df_1,
 ltf_a.qt_df_2,
 ltf_a.qt_df_3,
 ltf_a.qt_vz cmb_qt,
 case when ltf_b.qt_vz is null then 0 else ltf_b.qt_vz end res_qt
FROM
 (SELECT
   qt_df_1,
  qt_df_2,
  qt_df_3,
   count(*) AS qt_vz
  FROM lotofacil.lotofacil_diferenca_entre_bolas
  GROUP BY qt_df_1, qt_df_2, qt_df_3) ltf_a
 LEFT JOIN
 (
  SELECT
   qt_df_1,
   qt_df_2,
   qt_df_3,
   count(*) AS qt_vz
  FROM lotofacil.lotofacil_resultado_id ltf_a,
   lotofacil.lotofacil_diferenca_entre_bolas ltf_b
  WHERE ltf_a.ltf_id = ltf_b.ltf_id
  GROUP BY qt_df_1, qt_df_2, qt_df_3
  ORDER BY qt_vz DESC

 ) ltf_b
  ON ltf_a.qt_df_1 = ltf_b.qt_df_1
 and ltf_a.qt_df_2 = ltf_b.qt_df_2
 and ltf_a.qt_df_3 = ltf_b.qt_df_3
ORDER BY res_qt DESC;








SELECT
 ltf_a.sm_df_a,
 ltf_a.qt_vz cmb_qt,
 case when ltf_b.qt_vz is null then 0 else ltf_b.qt_vz end res_qt
FROM
 (SELECT
   sm_df_a,
   count(*) AS qt_vz
  FROM lotofacil.lotofacil_diferenca_entre_bolas
  GROUP BY sm_df_a) ltf_a
 LEFT JOIN
 (
  SELECT
   sm_df_a,
   count(*) AS qt_vz
  FROM lotofacil.lotofacil_resultado_id ltf_a,
   lotofacil.lotofacil_diferenca_entre_bolas ltf_b
  WHERE ltf_a.ltf_id = ltf_b.ltf_id
  GROUP BY sm_df_a
  ORDER BY qt_vz DESC

 ) ltf_b
  ON ltf_a.sm_df_a = ltf_b.sm_df_a
ORDER BY res_qt DESC;


Drop View if EXISTS lotofacil.v_lotofacil_diferenca_entre_bolas_qt_df_menor_df_maior;
Create View lotofacil.v_lotofacil_diferenca_entre_bolas_qt_df_menor_df_maior
 as
SELECT
 ltf_a.df_menor,
 ltf_a.df_maior,
 ltf_a.qt_vz cmb_qt,
 case when ltf_b.qt_vz is null then 0 else ltf_b.qt_vz end res_qt
FROM
 (SELECT
   df_menor,
  df_maior,
   count(*) AS qt_vz
  FROM lotofacil.lotofacil_diferenca_entre_bolas
  GROUP BY df_menor, df_maior) ltf_a
 LEFT JOIN
 (
  SELECT
   df_menor,
   df_maior,
   count(*) AS qt_vz
  FROM lotofacil.lotofacil_resultado_id ltf_a,
   lotofacil.lotofacil_diferenca_entre_bolas ltf_b
  WHERE ltf_a.ltf_id = ltf_b.ltf_id
  GROUP BY df_menor, df_maior
  ORDER BY qt_vz DESC

 ) ltf_b
  ON ltf_a.df_menor = ltf_b.df_menor
 and ltf_a.df_maior = ltf_b.df_maior
ORDER BY res_qt DESC;

Drop View if EXISTS lotofacil.v_lotofacil_diferenca_entre_bolas_qt_df_par_qt_df_impar;
Create View lotofacil.v_lotofacil_diferenca_entre_bolas_qt_df_par_qt_df_impar
 as
SELECT
 ltf_a.qt_df_par,
 ltf_a.qt_df_impar,
 ltf_a.qt_vz cmb_qt,
 case when ltf_b.qt_vz is null then 0 else ltf_b.qt_vz end res_qt
FROM
 (SELECT
   qt_df_par,
  qt_df_impar,
   count(*) AS qt_vz
  FROM lotofacil.lotofacil_diferenca_entre_bolas
  GROUP BY qt_df_par, qt_df_impar) ltf_a
 LEFT JOIN
 (
  SELECT
   qt_df_par,
   qt_df_impar,
   count(*) AS qt_vz
  FROM lotofacil.lotofacil_resultado_id ltf_a,
   lotofacil.lotofacil_diferenca_entre_bolas ltf_b
  WHERE ltf_a.ltf_id = ltf_b.ltf_id
  GROUP BY qt_df_par, qt_df_impar
  ORDER BY qt_vz DESC

 ) ltf_b
  ON ltf_a.qt_df_par = ltf_b.qt_df_par
     and ltf_a.qt_df_impar = ltf_b.qt_df_impar
ORDER BY res_qt DESC;


Drop View if EXISTS lotofacil.v_lotofacil_diferenca_entre_bolas_sm_df_a;
Create View lotofacil.v_lotofacil_diferenca_entre_bolas_sm_df_a
 as
SELECT
 ltf_a.sm_df_a,
 ltf_a.qt_vz cmb_qt,
 case when ltf_b.qt_vz is null then 0 else ltf_b.qt_vz end res_qt
FROM
 (SELECT
   sm_df_a,
   count(*) AS qt_vz
  FROM lotofacil.lotofacil_diferenca_entre_bolas
  GROUP BY sm_df_a) ltf_a
 LEFT JOIN
 (
  SELECT
   sm_df_a,
   count(*) AS qt_vz
  FROM lotofacil.lotofacil_resultado_id ltf_a,
   lotofacil.lotofacil_diferenca_entre_bolas ltf_b
  WHERE ltf_a.ltf_id = ltf_b.ltf_id
  GROUP BY sm_df_a
  ORDER BY qt_vz DESC

 ) ltf_b
  ON ltf_a.sm_df_a = ltf_b.sm_df_a
ORDER BY res_qt DESC;





