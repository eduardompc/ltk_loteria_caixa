/*
=============================================================================
Tabela: lotofacil.ltf_bx_a_by_b1_a_b1_agregado_com_b1_a_b2: [INICIO]
Pra que serve:
     Armazena campos b1_a_b1_id e b1_a_b2_id agregados da tabela
     lotofacil.lotofacil_coluna_b
*/
Drop table if exists lotofacil.ltf_bx_a_by_b1_a_b1_agregado_com_b1_a_b2;
Create table lotofacil.ltf_bx_a_by_b1_a_b1_agregado_com_b1_a_b2(
     b1_a_b1_id numeric not null,
     b1_a_b2_id numeric not null,
     constraint ltf_bx_a_by_b1_a_b1_agregado_com_b1_a_b2_pk primary key(b1_a_b1_id, b1_a_b2_id)
);
Insert into lotofacil.ltf_bx_a_by_b1_a_b1_agregado_com_b1_a_b2 (b1_a_b1_id, b1_a_b2_id)
     Select b1_a_b1_id, b1_a_b2_id from lotofacil.lotofacil_coluna_b
     group by b1_a_b1_id, b1_a_b2_id
     order by b1_a_b1_id, b1_a_b2_id;
/*
Tabela: lotofacil.ltf_bx_a_by_b1_a_b1_agregado_com_b1_a_b2: [FIM]
=============================================================================
*/


/*
=============================================================================
Tabela: lotofacil.ltf_bx_a_by_b1_a_b2_agregado_com_b1_a_b3: [INICIO]
Pra que serve:
     Armazena campos b1_a_b2_id e b1_a_b3_id agregados da tabela
     lotofacil.lotofacil_coluna_b
*/
Drop table if exists lotofacil.ltf_bx_a_by_b1_a_b2_agregado_com_b1_a_b3;
Create table lotofacil.ltf_bx_a_by_b1_a_b2_agregado_com_b1_a_b3(
     b1_a_b2_id numeric not null,
     b1_a_b3_id numeric not null,
     constraint ltf_bx_a_by_b1_a_b2_agregado_com_b1_a_b3_pk primary key(b1_a_b2_id, b1_a_b3_id)
);
Insert into lotofacil.ltf_bx_a_by_b1_a_b2_agregado_com_b1_a_b3 (b1_a_b2_id, b1_a_b3_id)
     Select b1_a_b2_id, b1_a_b3_id from lotofacil.lotofacil_coluna_b
     group by b1_a_b2_id, b1_a_b3_id
     order by b1_a_b2_id, b1_a_b3_id;
/*
Tabela: lotofacil.ltf_bx_a_by_b1_a_b2_agregado_com_b1_a_b3: [FIM]
=============================================================================
*/


/*
=============================================================================
Tabela: lotofacil.ltf_bx_a_by_b1_a_b3_agregado_com_b1_a_b4: [INICIO]
Pra que serve:
     Armazena campos b1_a_b3_id e b1_a_b4_id agregados da tabela
     lotofacil.lotofacil_coluna_b
*/
Drop table if exists lotofacil.ltf_bx_a_by_b1_a_b3_agregado_com_b1_a_b4;
Create table lotofacil.ltf_bx_a_by_b1_a_b3_agregado_com_b1_a_b4(
     b1_a_b3_id numeric not null,
     b1_a_b4_id numeric not null,
     constraint ltf_bx_a_by_b1_a_b3_agregado_com_b1_a_b4_pk primary key(b1_a_b3_id, b1_a_b4_id)
);
Insert into lotofacil.ltf_bx_a_by_b1_a_b3_agregado_com_b1_a_b4 (b1_a_b3_id, b1_a_b4_id)
     Select b1_a_b3_id, b1_a_b4_id from lotofacil.lotofacil_coluna_b
     group by b1_a_b3_id, b1_a_b4_id
     order by b1_a_b3_id, b1_a_b4_id;
/*
Tabela: lotofacil.ltf_bx_a_by_b1_a_b3_agregado_com_b1_a_b4: [FIM]
=============================================================================
*/


/*
=============================================================================
Tabela: lotofacil.ltf_bx_a_by_b1_a_b4_agregado_com_b1_a_b5: [INICIO]
Pra que serve:
     Armazena campos b1_a_b4_id e b1_a_b5_id agregados da tabela
     lotofacil.lotofacil_coluna_b
*/
Drop table if exists lotofacil.ltf_bx_a_by_b1_a_b4_agregado_com_b1_a_b5;
Create table lotofacil.ltf_bx_a_by_b1_a_b4_agregado_com_b1_a_b5(
     b1_a_b4_id numeric not null,
     b1_a_b5_id numeric not null,
     constraint ltf_bx_a_by_b1_a_b4_agregado_com_b1_a_b5_pk primary key(b1_a_b4_id, b1_a_b5_id)
);
Insert into lotofacil.ltf_bx_a_by_b1_a_b4_agregado_com_b1_a_b5 (b1_a_b4_id, b1_a_b5_id)
     Select b1_a_b4_id, b1_a_b5_id from lotofacil.lotofacil_coluna_b
     group by b1_a_b4_id, b1_a_b5_id
     order by b1_a_b4_id, b1_a_b5_id;
/*
Tabela: lotofacil.ltf_bx_a_by_b1_a_b4_agregado_com_b1_a_b5: [FIM]
=============================================================================
*/


/*
=============================================================================
Tabela: lotofacil.ltf_bx_a_by_b1_a_b5_agregado_com_b1_a_b6: [INICIO]
Pra que serve:
     Armazena campos b1_a_b5_id e b1_a_b6_id agregados da tabela
     lotofacil.lotofacil_coluna_b
*/
Drop table if exists lotofacil.ltf_bx_a_by_b1_a_b5_agregado_com_b1_a_b6;
Create table lotofacil.ltf_bx_a_by_b1_a_b5_agregado_com_b1_a_b6(
     b1_a_b5_id numeric not null,
     b1_a_b6_id numeric not null,
     constraint ltf_bx_a_by_b1_a_b5_agregado_com_b1_a_b6_pk primary key(b1_a_b5_id, b1_a_b6_id)
);
Insert into lotofacil.ltf_bx_a_by_b1_a_b5_agregado_com_b1_a_b6 (b1_a_b5_id, b1_a_b6_id)
     Select b1_a_b5_id, b1_a_b6_id from lotofacil.lotofacil_coluna_b
     group by b1_a_b5_id, b1_a_b6_id
     order by b1_a_b5_id, b1_a_b6_id;
/*
Tabela: lotofacil.ltf_bx_a_by_b1_a_b5_agregado_com_b1_a_b6: [FIM]
=============================================================================
*/


/*
=============================================================================
Tabela: lotofacil.ltf_bx_a_by_b1_a_b6_agregado_com_b1_a_b7: [INICIO]
Pra que serve:
     Armazena campos b1_a_b6_id e b1_a_b7_id agregados da tabela
     lotofacil.lotofacil_coluna_b
*/
Drop table if exists lotofacil.ltf_bx_a_by_b1_a_b6_agregado_com_b1_a_b7;
Create table lotofacil.ltf_bx_a_by_b1_a_b6_agregado_com_b1_a_b7(
     b1_a_b6_id numeric not null,
     b1_a_b7_id numeric not null,
     constraint ltf_bx_a_by_b1_a_b6_agregado_com_b1_a_b7_pk primary key(b1_a_b6_id, b1_a_b7_id)
);
Insert into lotofacil.ltf_bx_a_by_b1_a_b6_agregado_com_b1_a_b7 (b1_a_b6_id, b1_a_b7_id)
     Select b1_a_b6_id, b1_a_b7_id from lotofacil.lotofacil_coluna_b
     group by b1_a_b6_id, b1_a_b7_id
     order by b1_a_b6_id, b1_a_b7_id;
/*
Tabela: lotofacil.ltf_bx_a_by_b1_a_b6_agregado_com_b1_a_b7: [FIM]
=============================================================================
*/


/*
=============================================================================
Tabela: lotofacil.ltf_bx_a_by_b1_a_b7_agregado_com_b1_a_b8: [INICIO]
Pra que serve:
     Armazena campos b1_a_b7_id e b1_a_b8_id agregados da tabela
     lotofacil.lotofacil_coluna_b
*/
Drop table if exists lotofacil.ltf_bx_a_by_b1_a_b7_agregado_com_b1_a_b8;
Create table lotofacil.ltf_bx_a_by_b1_a_b7_agregado_com_b1_a_b8(
     b1_a_b7_id numeric not null,
     b1_a_b8_id numeric not null,
     constraint ltf_bx_a_by_b1_a_b7_agregado_com_b1_a_b8_pk primary key(b1_a_b7_id, b1_a_b8_id)
);
Insert into lotofacil.ltf_bx_a_by_b1_a_b7_agregado_com_b1_a_b8 (b1_a_b7_id, b1_a_b8_id)
     Select b1_a_b7_id, b1_a_b8_id from lotofacil.lotofacil_coluna_b
     group by b1_a_b7_id, b1_a_b8_id
     order by b1_a_b7_id, b1_a_b8_id;
/*
Tabela: lotofacil.ltf_bx_a_by_b1_a_b7_agregado_com_b1_a_b8: [FIM]
=============================================================================
*/


/*
=============================================================================
Tabela: lotofacil.ltf_bx_a_by_b1_a_b8_agregado_com_b1_a_b9: [INICIO]
Pra que serve:
     Armazena campos b1_a_b8_id e b1_a_b9_id agregados da tabela
     lotofacil.lotofacil_coluna_b
*/
Drop table if exists lotofacil.ltf_bx_a_by_b1_a_b8_agregado_com_b1_a_b9;
Create table lotofacil.ltf_bx_a_by_b1_a_b8_agregado_com_b1_a_b9(
     b1_a_b8_id numeric not null,
     b1_a_b9_id numeric not null,
     constraint ltf_bx_a_by_b1_a_b8_agregado_com_b1_a_b9_pk primary key(b1_a_b8_id, b1_a_b9_id)
);
Insert into lotofacil.ltf_bx_a_by_b1_a_b8_agregado_com_b1_a_b9 (b1_a_b8_id, b1_a_b9_id)
     Select b1_a_b8_id, b1_a_b9_id from lotofacil.lotofacil_coluna_b
     group by b1_a_b8_id, b1_a_b9_id
     order by b1_a_b8_id, b1_a_b9_id;
/*
Tabela: lotofacil.ltf_bx_a_by_b1_a_b8_agregado_com_b1_a_b9: [FIM]
=============================================================================
*/


/*
=============================================================================
Tabela: lotofacil.ltf_bx_a_by_b1_a_b9_agregado_com_b1_a_b10: [INICIO]
Pra que serve:
     Armazena campos b1_a_b9_id e b1_a_b10_id agregados da tabela
     lotofacil.lotofacil_coluna_b
*/
Drop table if exists lotofacil.ltf_bx_a_by_b1_a_b9_agregado_com_b1_a_b10;
Create table lotofacil.ltf_bx_a_by_b1_a_b9_agregado_com_b1_a_b10(
     b1_a_b9_id numeric not null,
     b1_a_b10_id numeric not null,
     constraint ltf_bx_a_by_b1_a_b9_agregado_com_b1_a_b10_pk primary key(b1_a_b9_id, b1_a_b10_id)
);
Insert into lotofacil.ltf_bx_a_by_b1_a_b9_agregado_com_b1_a_b10 (b1_a_b9_id, b1_a_b10_id)
     Select b1_a_b9_id, b1_a_b10_id from lotofacil.lotofacil_coluna_b
     group by b1_a_b9_id, b1_a_b10_id
     order by b1_a_b9_id, b1_a_b10_id;
/*
Tabela: lotofacil.ltf_bx_a_by_b1_a_b9_agregado_com_b1_a_b10: [FIM]
=============================================================================
*/


/*
=============================================================================
Tabela: lotofacil.ltf_bx_a_by_b1_a_b10_agregado_com_b1_a_b11: [INICIO]
Pra que serve:
     Armazena campos b1_a_b10_id e b1_a_b11_id agregados da tabela
     lotofacil.lotofacil_coluna_b
*/
Drop table if exists lotofacil.ltf_bx_a_by_b1_a_b10_agregado_com_b1_a_b11;
Create table lotofacil.ltf_bx_a_by_b1_a_b10_agregado_com_b1_a_b11(
     b1_a_b10_id numeric not null,
     b1_a_b11_id numeric not null,
     constraint ltf_bx_a_by_b1_a_b10_agregado_com_b1_a_b11_pk primary key(b1_a_b10_id, b1_a_b11_id)
);
Insert into lotofacil.ltf_bx_a_by_b1_a_b10_agregado_com_b1_a_b11 (b1_a_b10_id, b1_a_b11_id)
     Select b1_a_b10_id, b1_a_b11_id from lotofacil.lotofacil_coluna_b
     group by b1_a_b10_id, b1_a_b11_id
     order by b1_a_b10_id, b1_a_b11_id;
/*
Tabela: lotofacil.ltf_bx_a_by_b1_a_b10_agregado_com_b1_a_b11: [FIM]
=============================================================================
*/


/*
=============================================================================
Tabela: lotofacil.ltf_bx_a_by_b1_a_b11_agregado_com_b1_a_b12: [INICIO]
Pra que serve:
     Armazena campos b1_a_b11_id e b1_a_b12_id agregados da tabela
     lotofacil.lotofacil_coluna_b
*/
Drop table if exists lotofacil.ltf_bx_a_by_b1_a_b11_agregado_com_b1_a_b12;
Create table lotofacil.ltf_bx_a_by_b1_a_b11_agregado_com_b1_a_b12(
     b1_a_b11_id numeric not null,
     b1_a_b12_id numeric not null,
     constraint ltf_bx_a_by_b1_a_b11_agregado_com_b1_a_b12_pk primary key(b1_a_b11_id, b1_a_b12_id)
);
Insert into lotofacil.ltf_bx_a_by_b1_a_b11_agregado_com_b1_a_b12 (b1_a_b11_id, b1_a_b12_id)
     Select b1_a_b11_id, b1_a_b12_id from lotofacil.lotofacil_coluna_b
     group by b1_a_b11_id, b1_a_b12_id
     order by b1_a_b11_id, b1_a_b12_id;
/*
Tabela: lotofacil.ltf_bx_a_by_b1_a_b11_agregado_com_b1_a_b12: [FIM]
=============================================================================
*/


/*
=============================================================================
Tabela: lotofacil.ltf_bx_a_by_b1_a_b12_agregado_com_b1_a_b13: [INICIO]
Pra que serve:
     Armazena campos b1_a_b12_id e b1_a_b13_id agregados da tabela
     lotofacil.lotofacil_coluna_b
*/
Drop table if exists lotofacil.ltf_bx_a_by_b1_a_b12_agregado_com_b1_a_b13;
Create table lotofacil.ltf_bx_a_by_b1_a_b12_agregado_com_b1_a_b13(
     b1_a_b12_id numeric not null,
     b1_a_b13_id numeric not null,
     constraint ltf_bx_a_by_b1_a_b12_agregado_com_b1_a_b13_pk primary key(b1_a_b12_id, b1_a_b13_id)
);
Insert into lotofacil.ltf_bx_a_by_b1_a_b12_agregado_com_b1_a_b13 (b1_a_b12_id, b1_a_b13_id)
     Select b1_a_b12_id, b1_a_b13_id from lotofacil.lotofacil_coluna_b
     group by b1_a_b12_id, b1_a_b13_id
     order by b1_a_b12_id, b1_a_b13_id;
/*
Tabela: lotofacil.ltf_bx_a_by_b1_a_b12_agregado_com_b1_a_b13: [FIM]
=============================================================================
*/


/*
=============================================================================
Tabela: lotofacil.ltf_bx_a_by_b1_a_b13_agregado_com_b1_a_b14: [INICIO]
Pra que serve:
     Armazena campos b1_a_b13_id e b1_a_b14_id agregados da tabela
     lotofacil.lotofacil_coluna_b
*/
Drop table if exists lotofacil.ltf_bx_a_by_b1_a_b13_agregado_com_b1_a_b14;
Create table lotofacil.ltf_bx_a_by_b1_a_b13_agregado_com_b1_a_b14(
     b1_a_b13_id numeric not null,
     b1_a_b14_id numeric not null,
     constraint ltf_bx_a_by_b1_a_b13_agregado_com_b1_a_b14_pk primary key(b1_a_b13_id, b1_a_b14_id)
);
Insert into lotofacil.ltf_bx_a_by_b1_a_b13_agregado_com_b1_a_b14 (b1_a_b13_id, b1_a_b14_id)
     Select b1_a_b13_id, b1_a_b14_id from lotofacil.lotofacil_coluna_b
     group by b1_a_b13_id, b1_a_b14_id
     order by b1_a_b13_id, b1_a_b14_id;
/*
Tabela: lotofacil.ltf_bx_a_by_b1_a_b13_agregado_com_b1_a_b14: [FIM]
=============================================================================
*/


/*
=============================================================================
Tabela: lotofacil.ltf_bx_a_by_b1_a_b14_agregado_com_b1_a_b15: [INICIO]
Pra que serve:
     Armazena campos b1_a_b14_id e b1_a_b15_id agregados da tabela
     lotofacil.lotofacil_coluna_b
*/
Drop table if exists lotofacil.ltf_bx_a_by_b1_a_b14_agregado_com_b1_a_b15;
Create table lotofacil.ltf_bx_a_by_b1_a_b14_agregado_com_b1_a_b15(
     b1_a_b14_id numeric not null,
     b1_a_b15_id numeric not null,
     constraint ltf_bx_a_by_b1_a_b14_agregado_com_b1_a_b15_pk primary key(b1_a_b14_id, b1_a_b15_id)
);
Insert into lotofacil.ltf_bx_a_by_b1_a_b14_agregado_com_b1_a_b15 (b1_a_b14_id, b1_a_b15_id)
     Select b1_a_b14_id, b1_a_b15_id from lotofacil.lotofacil_coluna_b
     group by b1_a_b14_id, b1_a_b15_id
     order by b1_a_b14_id, b1_a_b15_id;
/*
Tabela: lotofacil.ltf_bx_a_by_b1_a_b14_agregado_com_b1_a_b15: [FIM]
=============================================================================
*/


/*
=============================================================================
Tabela: lotofacil.ltf_bx_a_by_b2_a_b2_agregado_com_b2_a_b3: [INICIO]
Pra que serve:
     Armazena campos b2_a_b2_id e b2_a_b3_id agregados da tabela
     lotofacil.lotofacil_coluna_b
*/
Drop table if exists lotofacil.ltf_bx_a_by_b2_a_b2_agregado_com_b2_a_b3;
Create table lotofacil.ltf_bx_a_by_b2_a_b2_agregado_com_b2_a_b3(
     b2_a_b2_id numeric not null,
     b2_a_b3_id numeric not null,
     constraint ltf_bx_a_by_b2_a_b2_agregado_com_b2_a_b3_pk primary key(b2_a_b2_id, b2_a_b3_id)
);
Insert into lotofacil.ltf_bx_a_by_b2_a_b2_agregado_com_b2_a_b3 (b2_a_b2_id, b2_a_b3_id)
     Select b2_a_b2_id, b2_a_b3_id from lotofacil.lotofacil_coluna_b
     group by b2_a_b2_id, b2_a_b3_id
     order by b2_a_b2_id, b2_a_b3_id;
/*
Tabela: lotofacil.ltf_bx_a_by_b2_a_b2_agregado_com_b2_a_b3: [FIM]
=============================================================================
*/


/*
=============================================================================
Tabela: lotofacil.ltf_bx_a_by_b2_a_b3_agregado_com_b2_a_b4: [INICIO]
Pra que serve:
     Armazena campos b2_a_b3_id e b2_a_b4_id agregados da tabela
     lotofacil.lotofacil_coluna_b
*/
Drop table if exists lotofacil.ltf_bx_a_by_b2_a_b3_agregado_com_b2_a_b4;
Create table lotofacil.ltf_bx_a_by_b2_a_b3_agregado_com_b2_a_b4(
     b2_a_b3_id numeric not null,
     b2_a_b4_id numeric not null,
     constraint ltf_bx_a_by_b2_a_b3_agregado_com_b2_a_b4_pk primary key(b2_a_b3_id, b2_a_b4_id)
);
Insert into lotofacil.ltf_bx_a_by_b2_a_b3_agregado_com_b2_a_b4 (b2_a_b3_id, b2_a_b4_id)
     Select b2_a_b3_id, b2_a_b4_id from lotofacil.lotofacil_coluna_b
     group by b2_a_b3_id, b2_a_b4_id
     order by b2_a_b3_id, b2_a_b4_id;
/*
Tabela: lotofacil.ltf_bx_a_by_b2_a_b3_agregado_com_b2_a_b4: [FIM]
=============================================================================
*/


/*
=============================================================================
Tabela: lotofacil.ltf_bx_a_by_b2_a_b4_agregado_com_b2_a_b5: [INICIO]
Pra que serve:
     Armazena campos b2_a_b4_id e b2_a_b5_id agregados da tabela
     lotofacil.lotofacil_coluna_b
*/
Drop table if exists lotofacil.ltf_bx_a_by_b2_a_b4_agregado_com_b2_a_b5;
Create table lotofacil.ltf_bx_a_by_b2_a_b4_agregado_com_b2_a_b5(
     b2_a_b4_id numeric not null,
     b2_a_b5_id numeric not null,
     constraint ltf_bx_a_by_b2_a_b4_agregado_com_b2_a_b5_pk primary key(b2_a_b4_id, b2_a_b5_id)
);
Insert into lotofacil.ltf_bx_a_by_b2_a_b4_agregado_com_b2_a_b5 (b2_a_b4_id, b2_a_b5_id)
     Select b2_a_b4_id, b2_a_b5_id from lotofacil.lotofacil_coluna_b
     group by b2_a_b4_id, b2_a_b5_id
     order by b2_a_b4_id, b2_a_b5_id;
/*
Tabela: lotofacil.ltf_bx_a_by_b2_a_b4_agregado_com_b2_a_b5: [FIM]
=============================================================================
*/


/*
=============================================================================
Tabela: lotofacil.ltf_bx_a_by_b2_a_b5_agregado_com_b2_a_b6: [INICIO]
Pra que serve:
     Armazena campos b2_a_b5_id e b2_a_b6_id agregados da tabela
     lotofacil.lotofacil_coluna_b
*/
Drop table if exists lotofacil.ltf_bx_a_by_b2_a_b5_agregado_com_b2_a_b6;
Create table lotofacil.ltf_bx_a_by_b2_a_b5_agregado_com_b2_a_b6(
     b2_a_b5_id numeric not null,
     b2_a_b6_id numeric not null,
     constraint ltf_bx_a_by_b2_a_b5_agregado_com_b2_a_b6_pk primary key(b2_a_b5_id, b2_a_b6_id)
);
Insert into lotofacil.ltf_bx_a_by_b2_a_b5_agregado_com_b2_a_b6 (b2_a_b5_id, b2_a_b6_id)
     Select b2_a_b5_id, b2_a_b6_id from lotofacil.lotofacil_coluna_b
     group by b2_a_b5_id, b2_a_b6_id
     order by b2_a_b5_id, b2_a_b6_id;
/*
Tabela: lotofacil.ltf_bx_a_by_b2_a_b5_agregado_com_b2_a_b6: [FIM]
=============================================================================
*/


/*
=============================================================================
Tabela: lotofacil.ltf_bx_a_by_b2_a_b6_agregado_com_b2_a_b7: [INICIO]
Pra que serve:
     Armazena campos b2_a_b6_id e b2_a_b7_id agregados da tabela
     lotofacil.lotofacil_coluna_b
*/
Drop table if exists lotofacil.ltf_bx_a_by_b2_a_b6_agregado_com_b2_a_b7;
Create table lotofacil.ltf_bx_a_by_b2_a_b6_agregado_com_b2_a_b7(
     b2_a_b6_id numeric not null,
     b2_a_b7_id numeric not null,
     constraint ltf_bx_a_by_b2_a_b6_agregado_com_b2_a_b7_pk primary key(b2_a_b6_id, b2_a_b7_id)
);
Insert into lotofacil.ltf_bx_a_by_b2_a_b6_agregado_com_b2_a_b7 (b2_a_b6_id, b2_a_b7_id)
     Select b2_a_b6_id, b2_a_b7_id from lotofacil.lotofacil_coluna_b
     group by b2_a_b6_id, b2_a_b7_id
     order by b2_a_b6_id, b2_a_b7_id;
/*
Tabela: lotofacil.ltf_bx_a_by_b2_a_b6_agregado_com_b2_a_b7: [FIM]
=============================================================================
*/


/*
=============================================================================
Tabela: lotofacil.ltf_bx_a_by_b2_a_b7_agregado_com_b2_a_b8: [INICIO]
Pra que serve:
     Armazena campos b2_a_b7_id e b2_a_b8_id agregados da tabela
     lotofacil.lotofacil_coluna_b
*/
Drop table if exists lotofacil.ltf_bx_a_by_b2_a_b7_agregado_com_b2_a_b8;
Create table lotofacil.ltf_bx_a_by_b2_a_b7_agregado_com_b2_a_b8(
     b2_a_b7_id numeric not null,
     b2_a_b8_id numeric not null,
     constraint ltf_bx_a_by_b2_a_b7_agregado_com_b2_a_b8_pk primary key(b2_a_b7_id, b2_a_b8_id)
);
Insert into lotofacil.ltf_bx_a_by_b2_a_b7_agregado_com_b2_a_b8 (b2_a_b7_id, b2_a_b8_id)
     Select b2_a_b7_id, b2_a_b8_id from lotofacil.lotofacil_coluna_b
     group by b2_a_b7_id, b2_a_b8_id
     order by b2_a_b7_id, b2_a_b8_id;
/*
Tabela: lotofacil.ltf_bx_a_by_b2_a_b7_agregado_com_b2_a_b8: [FIM]
=============================================================================
*/


/*
=============================================================================
Tabela: lotofacil.ltf_bx_a_by_b2_a_b8_agregado_com_b2_a_b9: [INICIO]
Pra que serve:
     Armazena campos b2_a_b8_id e b2_a_b9_id agregados da tabela
     lotofacil.lotofacil_coluna_b
*/
Drop table if exists lotofacil.ltf_bx_a_by_b2_a_b8_agregado_com_b2_a_b9;
Create table lotofacil.ltf_bx_a_by_b2_a_b8_agregado_com_b2_a_b9(
     b2_a_b8_id numeric not null,
     b2_a_b9_id numeric not null,
     constraint ltf_bx_a_by_b2_a_b8_agregado_com_b2_a_b9_pk primary key(b2_a_b8_id, b2_a_b9_id)
);
Insert into lotofacil.ltf_bx_a_by_b2_a_b8_agregado_com_b2_a_b9 (b2_a_b8_id, b2_a_b9_id)
     Select b2_a_b8_id, b2_a_b9_id from lotofacil.lotofacil_coluna_b
     group by b2_a_b8_id, b2_a_b9_id
     order by b2_a_b8_id, b2_a_b9_id;
/*
Tabela: lotofacil.ltf_bx_a_by_b2_a_b8_agregado_com_b2_a_b9: [FIM]
=============================================================================
*/


/*
=============================================================================
Tabela: lotofacil.ltf_bx_a_by_b2_a_b9_agregado_com_b2_a_b10: [INICIO]
Pra que serve:
     Armazena campos b2_a_b9_id e b2_a_b10_id agregados da tabela
     lotofacil.lotofacil_coluna_b
*/
Drop table if exists lotofacil.ltf_bx_a_by_b2_a_b9_agregado_com_b2_a_b10;
Create table lotofacil.ltf_bx_a_by_b2_a_b9_agregado_com_b2_a_b10(
     b2_a_b9_id numeric not null,
     b2_a_b10_id numeric not null,
     constraint ltf_bx_a_by_b2_a_b9_agregado_com_b2_a_b10_pk primary key(b2_a_b9_id, b2_a_b10_id)
);
Insert into lotofacil.ltf_bx_a_by_b2_a_b9_agregado_com_b2_a_b10 (b2_a_b9_id, b2_a_b10_id)
     Select b2_a_b9_id, b2_a_b10_id from lotofacil.lotofacil_coluna_b
     group by b2_a_b9_id, b2_a_b10_id
     order by b2_a_b9_id, b2_a_b10_id;
/*
Tabela: lotofacil.ltf_bx_a_by_b2_a_b9_agregado_com_b2_a_b10: [FIM]
=============================================================================
*/


/*
=============================================================================
Tabela: lotofacil.ltf_bx_a_by_b2_a_b10_agregado_com_b2_a_b11: [INICIO]
Pra que serve:
     Armazena campos b2_a_b10_id e b2_a_b11_id agregados da tabela
     lotofacil.lotofacil_coluna_b
*/
Drop table if exists lotofacil.ltf_bx_a_by_b2_a_b10_agregado_com_b2_a_b11;
Create table lotofacil.ltf_bx_a_by_b2_a_b10_agregado_com_b2_a_b11(
     b2_a_b10_id numeric not null,
     b2_a_b11_id numeric not null,
     constraint ltf_bx_a_by_b2_a_b10_agregado_com_b2_a_b11_pk primary key(b2_a_b10_id, b2_a_b11_id)
);
Insert into lotofacil.ltf_bx_a_by_b2_a_b10_agregado_com_b2_a_b11 (b2_a_b10_id, b2_a_b11_id)
     Select b2_a_b10_id, b2_a_b11_id from lotofacil.lotofacil_coluna_b
     group by b2_a_b10_id, b2_a_b11_id
     order by b2_a_b10_id, b2_a_b11_id;
/*
Tabela: lotofacil.ltf_bx_a_by_b2_a_b10_agregado_com_b2_a_b11: [FIM]
=============================================================================
*/


/*
=============================================================================
Tabela: lotofacil.ltf_bx_a_by_b2_a_b11_agregado_com_b2_a_b12: [INICIO]
Pra que serve:
     Armazena campos b2_a_b11_id e b2_a_b12_id agregados da tabela
     lotofacil.lotofacil_coluna_b
*/
Drop table if exists lotofacil.ltf_bx_a_by_b2_a_b11_agregado_com_b2_a_b12;
Create table lotofacil.ltf_bx_a_by_b2_a_b11_agregado_com_b2_a_b12(
     b2_a_b11_id numeric not null,
     b2_a_b12_id numeric not null,
     constraint ltf_bx_a_by_b2_a_b11_agregado_com_b2_a_b12_pk primary key(b2_a_b11_id, b2_a_b12_id)
);
Insert into lotofacil.ltf_bx_a_by_b2_a_b11_agregado_com_b2_a_b12 (b2_a_b11_id, b2_a_b12_id)
     Select b2_a_b11_id, b2_a_b12_id from lotofacil.lotofacil_coluna_b
     group by b2_a_b11_id, b2_a_b12_id
     order by b2_a_b11_id, b2_a_b12_id;
/*
Tabela: lotofacil.ltf_bx_a_by_b2_a_b11_agregado_com_b2_a_b12: [FIM]
=============================================================================
*/


/*
=============================================================================
Tabela: lotofacil.ltf_bx_a_by_b2_a_b12_agregado_com_b2_a_b13: [INICIO]
Pra que serve:
     Armazena campos b2_a_b12_id e b2_a_b13_id agregados da tabela
     lotofacil.lotofacil_coluna_b
*/
Drop table if exists lotofacil.ltf_bx_a_by_b2_a_b12_agregado_com_b2_a_b13;
Create table lotofacil.ltf_bx_a_by_b2_a_b12_agregado_com_b2_a_b13(
     b2_a_b12_id numeric not null,
     b2_a_b13_id numeric not null,
     constraint ltf_bx_a_by_b2_a_b12_agregado_com_b2_a_b13_pk primary key(b2_a_b12_id, b2_a_b13_id)
);
Insert into lotofacil.ltf_bx_a_by_b2_a_b12_agregado_com_b2_a_b13 (b2_a_b12_id, b2_a_b13_id)
     Select b2_a_b12_id, b2_a_b13_id from lotofacil.lotofacil_coluna_b
     group by b2_a_b12_id, b2_a_b13_id
     order by b2_a_b12_id, b2_a_b13_id;
/*
Tabela: lotofacil.ltf_bx_a_by_b2_a_b12_agregado_com_b2_a_b13: [FIM]
=============================================================================
*/


/*
=============================================================================
Tabela: lotofacil.ltf_bx_a_by_b2_a_b13_agregado_com_b2_a_b14: [INICIO]
Pra que serve:
     Armazena campos b2_a_b13_id e b2_a_b14_id agregados da tabela
     lotofacil.lotofacil_coluna_b
*/
Drop table if exists lotofacil.ltf_bx_a_by_b2_a_b13_agregado_com_b2_a_b14;
Create table lotofacil.ltf_bx_a_by_b2_a_b13_agregado_com_b2_a_b14(
     b2_a_b13_id numeric not null,
     b2_a_b14_id numeric not null,
     constraint ltf_bx_a_by_b2_a_b13_agregado_com_b2_a_b14_pk primary key(b2_a_b13_id, b2_a_b14_id)
);
Insert into lotofacil.ltf_bx_a_by_b2_a_b13_agregado_com_b2_a_b14 (b2_a_b13_id, b2_a_b14_id)
     Select b2_a_b13_id, b2_a_b14_id from lotofacil.lotofacil_coluna_b
     group by b2_a_b13_id, b2_a_b14_id
     order by b2_a_b13_id, b2_a_b14_id;
/*
Tabela: lotofacil.ltf_bx_a_by_b2_a_b13_agregado_com_b2_a_b14: [FIM]
=============================================================================
*/


/*
=============================================================================
Tabela: lotofacil.ltf_bx_a_by_b2_a_b14_agregado_com_b2_a_b15: [INICIO]
Pra que serve:
     Armazena campos b2_a_b14_id e b2_a_b15_id agregados da tabela
     lotofacil.lotofacil_coluna_b
*/
Drop table if exists lotofacil.ltf_bx_a_by_b2_a_b14_agregado_com_b2_a_b15;
Create table lotofacil.ltf_bx_a_by_b2_a_b14_agregado_com_b2_a_b15(
     b2_a_b14_id numeric not null,
     b2_a_b15_id numeric not null,
     constraint ltf_bx_a_by_b2_a_b14_agregado_com_b2_a_b15_pk primary key(b2_a_b14_id, b2_a_b15_id)
);
Insert into lotofacil.ltf_bx_a_by_b2_a_b14_agregado_com_b2_a_b15 (b2_a_b14_id, b2_a_b15_id)
     Select b2_a_b14_id, b2_a_b15_id from lotofacil.lotofacil_coluna_b
     group by b2_a_b14_id, b2_a_b15_id
     order by b2_a_b14_id, b2_a_b15_id;
/*
Tabela: lotofacil.ltf_bx_a_by_b2_a_b14_agregado_com_b2_a_b15: [FIM]
=============================================================================
*/


/*
=============================================================================
Tabela: lotofacil.ltf_bx_a_by_b3_a_b3_agregado_com_b3_a_b4: [INICIO]
Pra que serve:
     Armazena campos b3_a_b3_id e b3_a_b4_id agregados da tabela
     lotofacil.lotofacil_coluna_b
*/
Drop table if exists lotofacil.ltf_bx_a_by_b3_a_b3_agregado_com_b3_a_b4;
Create table lotofacil.ltf_bx_a_by_b3_a_b3_agregado_com_b3_a_b4(
     b3_a_b3_id numeric not null,
     b3_a_b4_id numeric not null,
     constraint ltf_bx_a_by_b3_a_b3_agregado_com_b3_a_b4_pk primary key(b3_a_b3_id, b3_a_b4_id)
);
Insert into lotofacil.ltf_bx_a_by_b3_a_b3_agregado_com_b3_a_b4 (b3_a_b3_id, b3_a_b4_id)
     Select b3_a_b3_id, b3_a_b4_id from lotofacil.lotofacil_coluna_b
     group by b3_a_b3_id, b3_a_b4_id
     order by b3_a_b3_id, b3_a_b4_id;
/*
Tabela: lotofacil.ltf_bx_a_by_b3_a_b3_agregado_com_b3_a_b4: [FIM]
=============================================================================
*/


/*
=============================================================================
Tabela: lotofacil.ltf_bx_a_by_b3_a_b4_agregado_com_b3_a_b5: [INICIO]
Pra que serve:
     Armazena campos b3_a_b4_id e b3_a_b5_id agregados da tabela
     lotofacil.lotofacil_coluna_b
*/
Drop table if exists lotofacil.ltf_bx_a_by_b3_a_b4_agregado_com_b3_a_b5;
Create table lotofacil.ltf_bx_a_by_b3_a_b4_agregado_com_b3_a_b5(
     b3_a_b4_id numeric not null,
     b3_a_b5_id numeric not null,
     constraint ltf_bx_a_by_b3_a_b4_agregado_com_b3_a_b5_pk primary key(b3_a_b4_id, b3_a_b5_id)
);
Insert into lotofacil.ltf_bx_a_by_b3_a_b4_agregado_com_b3_a_b5 (b3_a_b4_id, b3_a_b5_id)
     Select b3_a_b4_id, b3_a_b5_id from lotofacil.lotofacil_coluna_b
     group by b3_a_b4_id, b3_a_b5_id
     order by b3_a_b4_id, b3_a_b5_id;
/*
Tabela: lotofacil.ltf_bx_a_by_b3_a_b4_agregado_com_b3_a_b5: [FIM]
=============================================================================
*/


/*
=============================================================================
Tabela: lotofacil.ltf_bx_a_by_b3_a_b5_agregado_com_b3_a_b6: [INICIO]
Pra que serve:
     Armazena campos b3_a_b5_id e b3_a_b6_id agregados da tabela
     lotofacil.lotofacil_coluna_b
*/
Drop table if exists lotofacil.ltf_bx_a_by_b3_a_b5_agregado_com_b3_a_b6;
Create table lotofacil.ltf_bx_a_by_b3_a_b5_agregado_com_b3_a_b6(
     b3_a_b5_id numeric not null,
     b3_a_b6_id numeric not null,
     constraint ltf_bx_a_by_b3_a_b5_agregado_com_b3_a_b6_pk primary key(b3_a_b5_id, b3_a_b6_id)
);
Insert into lotofacil.ltf_bx_a_by_b3_a_b5_agregado_com_b3_a_b6 (b3_a_b5_id, b3_a_b6_id)
     Select b3_a_b5_id, b3_a_b6_id from lotofacil.lotofacil_coluna_b
     group by b3_a_b5_id, b3_a_b6_id
     order by b3_a_b5_id, b3_a_b6_id;
/*
Tabela: lotofacil.ltf_bx_a_by_b3_a_b5_agregado_com_b3_a_b6: [FIM]
=============================================================================
*/


/*
=============================================================================
Tabela: lotofacil.ltf_bx_a_by_b3_a_b6_agregado_com_b3_a_b7: [INICIO]
Pra que serve:
     Armazena campos b3_a_b6_id e b3_a_b7_id agregados da tabela
     lotofacil.lotofacil_coluna_b
*/
Drop table if exists lotofacil.ltf_bx_a_by_b3_a_b6_agregado_com_b3_a_b7;
Create table lotofacil.ltf_bx_a_by_b3_a_b6_agregado_com_b3_a_b7(
     b3_a_b6_id numeric not null,
     b3_a_b7_id numeric not null,
     constraint ltf_bx_a_by_b3_a_b6_agregado_com_b3_a_b7_pk primary key(b3_a_b6_id, b3_a_b7_id)
);
Insert into lotofacil.ltf_bx_a_by_b3_a_b6_agregado_com_b3_a_b7 (b3_a_b6_id, b3_a_b7_id)
     Select b3_a_b6_id, b3_a_b7_id from lotofacil.lotofacil_coluna_b
     group by b3_a_b6_id, b3_a_b7_id
     order by b3_a_b6_id, b3_a_b7_id;
/*
Tabela: lotofacil.ltf_bx_a_by_b3_a_b6_agregado_com_b3_a_b7: [FIM]
=============================================================================
*/


/*
=============================================================================
Tabela: lotofacil.ltf_bx_a_by_b3_a_b7_agregado_com_b3_a_b8: [INICIO]
Pra que serve:
     Armazena campos b3_a_b7_id e b3_a_b8_id agregados da tabela
     lotofacil.lotofacil_coluna_b
*/
Drop table if exists lotofacil.ltf_bx_a_by_b3_a_b7_agregado_com_b3_a_b8;
Create table lotofacil.ltf_bx_a_by_b3_a_b7_agregado_com_b3_a_b8(
     b3_a_b7_id numeric not null,
     b3_a_b8_id numeric not null,
     constraint ltf_bx_a_by_b3_a_b7_agregado_com_b3_a_b8_pk primary key(b3_a_b7_id, b3_a_b8_id)
);
Insert into lotofacil.ltf_bx_a_by_b3_a_b7_agregado_com_b3_a_b8 (b3_a_b7_id, b3_a_b8_id)
     Select b3_a_b7_id, b3_a_b8_id from lotofacil.lotofacil_coluna_b
     group by b3_a_b7_id, b3_a_b8_id
     order by b3_a_b7_id, b3_a_b8_id;
/*
Tabela: lotofacil.ltf_bx_a_by_b3_a_b7_agregado_com_b3_a_b8: [FIM]
=============================================================================
*/


/*
=============================================================================
Tabela: lotofacil.ltf_bx_a_by_b3_a_b8_agregado_com_b3_a_b9: [INICIO]
Pra que serve:
     Armazena campos b3_a_b8_id e b3_a_b9_id agregados da tabela
     lotofacil.lotofacil_coluna_b
*/
Drop table if exists lotofacil.ltf_bx_a_by_b3_a_b8_agregado_com_b3_a_b9;
Create table lotofacil.ltf_bx_a_by_b3_a_b8_agregado_com_b3_a_b9(
     b3_a_b8_id numeric not null,
     b3_a_b9_id numeric not null,
     constraint ltf_bx_a_by_b3_a_b8_agregado_com_b3_a_b9_pk primary key(b3_a_b8_id, b3_a_b9_id)
);
Insert into lotofacil.ltf_bx_a_by_b3_a_b8_agregado_com_b3_a_b9 (b3_a_b8_id, b3_a_b9_id)
     Select b3_a_b8_id, b3_a_b9_id from lotofacil.lotofacil_coluna_b
     group by b3_a_b8_id, b3_a_b9_id
     order by b3_a_b8_id, b3_a_b9_id;
/*
Tabela: lotofacil.ltf_bx_a_by_b3_a_b8_agregado_com_b3_a_b9: [FIM]
=============================================================================
*/


/*
=============================================================================
Tabela: lotofacil.ltf_bx_a_by_b3_a_b9_agregado_com_b3_a_b10: [INICIO]
Pra que serve:
     Armazena campos b3_a_b9_id e b3_a_b10_id agregados da tabela
     lotofacil.lotofacil_coluna_b
*/
Drop table if exists lotofacil.ltf_bx_a_by_b3_a_b9_agregado_com_b3_a_b10;
Create table lotofacil.ltf_bx_a_by_b3_a_b9_agregado_com_b3_a_b10(
     b3_a_b9_id numeric not null,
     b3_a_b10_id numeric not null,
     constraint ltf_bx_a_by_b3_a_b9_agregado_com_b3_a_b10_pk primary key(b3_a_b9_id, b3_a_b10_id)
);
Insert into lotofacil.ltf_bx_a_by_b3_a_b9_agregado_com_b3_a_b10 (b3_a_b9_id, b3_a_b10_id)
     Select b3_a_b9_id, b3_a_b10_id from lotofacil.lotofacil_coluna_b
     group by b3_a_b9_id, b3_a_b10_id
     order by b3_a_b9_id, b3_a_b10_id;
/*
Tabela: lotofacil.ltf_bx_a_by_b3_a_b9_agregado_com_b3_a_b10: [FIM]
=============================================================================
*/


/*
=============================================================================
Tabela: lotofacil.ltf_bx_a_by_b3_a_b10_agregado_com_b3_a_b11: [INICIO]
Pra que serve:
     Armazena campos b3_a_b10_id e b3_a_b11_id agregados da tabela
     lotofacil.lotofacil_coluna_b
*/
Drop table if exists lotofacil.ltf_bx_a_by_b3_a_b10_agregado_com_b3_a_b11;
Create table lotofacil.ltf_bx_a_by_b3_a_b10_agregado_com_b3_a_b11(
     b3_a_b10_id numeric not null,
     b3_a_b11_id numeric not null,
     constraint ltf_bx_a_by_b3_a_b10_agregado_com_b3_a_b11_pk primary key(b3_a_b10_id, b3_a_b11_id)
);
Insert into lotofacil.ltf_bx_a_by_b3_a_b10_agregado_com_b3_a_b11 (b3_a_b10_id, b3_a_b11_id)
     Select b3_a_b10_id, b3_a_b11_id from lotofacil.lotofacil_coluna_b
     group by b3_a_b10_id, b3_a_b11_id
     order by b3_a_b10_id, b3_a_b11_id;
/*
Tabela: lotofacil.ltf_bx_a_by_b3_a_b10_agregado_com_b3_a_b11: [FIM]
=============================================================================
*/


/*
=============================================================================
Tabela: lotofacil.ltf_bx_a_by_b3_a_b11_agregado_com_b3_a_b12: [INICIO]
Pra que serve:
     Armazena campos b3_a_b11_id e b3_a_b12_id agregados da tabela
     lotofacil.lotofacil_coluna_b
*/
Drop table if exists lotofacil.ltf_bx_a_by_b3_a_b11_agregado_com_b3_a_b12;
Create table lotofacil.ltf_bx_a_by_b3_a_b11_agregado_com_b3_a_b12(
     b3_a_b11_id numeric not null,
     b3_a_b12_id numeric not null,
     constraint ltf_bx_a_by_b3_a_b11_agregado_com_b3_a_b12_pk primary key(b3_a_b11_id, b3_a_b12_id)
);
Insert into lotofacil.ltf_bx_a_by_b3_a_b11_agregado_com_b3_a_b12 (b3_a_b11_id, b3_a_b12_id)
     Select b3_a_b11_id, b3_a_b12_id from lotofacil.lotofacil_coluna_b
     group by b3_a_b11_id, b3_a_b12_id
     order by b3_a_b11_id, b3_a_b12_id;
/*
Tabela: lotofacil.ltf_bx_a_by_b3_a_b11_agregado_com_b3_a_b12: [FIM]
=============================================================================
*/


/*
=============================================================================
Tabela: lotofacil.ltf_bx_a_by_b3_a_b12_agregado_com_b3_a_b13: [INICIO]
Pra que serve:
     Armazena campos b3_a_b12_id e b3_a_b13_id agregados da tabela
     lotofacil.lotofacil_coluna_b
*/
Drop table if exists lotofacil.ltf_bx_a_by_b3_a_b12_agregado_com_b3_a_b13;
Create table lotofacil.ltf_bx_a_by_b3_a_b12_agregado_com_b3_a_b13(
     b3_a_b12_id numeric not null,
     b3_a_b13_id numeric not null,
     constraint ltf_bx_a_by_b3_a_b12_agregado_com_b3_a_b13_pk primary key(b3_a_b12_id, b3_a_b13_id)
);
Insert into lotofacil.ltf_bx_a_by_b3_a_b12_agregado_com_b3_a_b13 (b3_a_b12_id, b3_a_b13_id)
     Select b3_a_b12_id, b3_a_b13_id from lotofacil.lotofacil_coluna_b
     group by b3_a_b12_id, b3_a_b13_id
     order by b3_a_b12_id, b3_a_b13_id;
/*
Tabela: lotofacil.ltf_bx_a_by_b3_a_b12_agregado_com_b3_a_b13: [FIM]
=============================================================================
*/


/*
=============================================================================
Tabela: lotofacil.ltf_bx_a_by_b3_a_b13_agregado_com_b3_a_b14: [INICIO]
Pra que serve:
     Armazena campos b3_a_b13_id e b3_a_b14_id agregados da tabela
     lotofacil.lotofacil_coluna_b
*/
Drop table if exists lotofacil.ltf_bx_a_by_b3_a_b13_agregado_com_b3_a_b14;
Create table lotofacil.ltf_bx_a_by_b3_a_b13_agregado_com_b3_a_b14(
     b3_a_b13_id numeric not null,
     b3_a_b14_id numeric not null,
     constraint ltf_bx_a_by_b3_a_b13_agregado_com_b3_a_b14_pk primary key(b3_a_b13_id, b3_a_b14_id)
);
Insert into lotofacil.ltf_bx_a_by_b3_a_b13_agregado_com_b3_a_b14 (b3_a_b13_id, b3_a_b14_id)
     Select b3_a_b13_id, b3_a_b14_id from lotofacil.lotofacil_coluna_b
     group by b3_a_b13_id, b3_a_b14_id
     order by b3_a_b13_id, b3_a_b14_id;
/*
Tabela: lotofacil.ltf_bx_a_by_b3_a_b13_agregado_com_b3_a_b14: [FIM]
=============================================================================
*/


/*
=============================================================================
Tabela: lotofacil.ltf_bx_a_by_b3_a_b14_agregado_com_b3_a_b15: [INICIO]
Pra que serve:
     Armazena campos b3_a_b14_id e b3_a_b15_id agregados da tabela
     lotofacil.lotofacil_coluna_b
*/
Drop table if exists lotofacil.ltf_bx_a_by_b3_a_b14_agregado_com_b3_a_b15;
Create table lotofacil.ltf_bx_a_by_b3_a_b14_agregado_com_b3_a_b15(
     b3_a_b14_id numeric not null,
     b3_a_b15_id numeric not null,
     constraint ltf_bx_a_by_b3_a_b14_agregado_com_b3_a_b15_pk primary key(b3_a_b14_id, b3_a_b15_id)
);
Insert into lotofacil.ltf_bx_a_by_b3_a_b14_agregado_com_b3_a_b15 (b3_a_b14_id, b3_a_b15_id)
     Select b3_a_b14_id, b3_a_b15_id from lotofacil.lotofacil_coluna_b
     group by b3_a_b14_id, b3_a_b15_id
     order by b3_a_b14_id, b3_a_b15_id;
/*
Tabela: lotofacil.ltf_bx_a_by_b3_a_b14_agregado_com_b3_a_b15: [FIM]
=============================================================================
*/


/*
=============================================================================
Tabela: lotofacil.ltf_bx_a_by_b4_a_b4_agregado_com_b4_a_b5: [INICIO]
Pra que serve:
     Armazena campos b4_a_b4_id e b4_a_b5_id agregados da tabela
     lotofacil.lotofacil_coluna_b
*/
Drop table if exists lotofacil.ltf_bx_a_by_b4_a_b4_agregado_com_b4_a_b5;
Create table lotofacil.ltf_bx_a_by_b4_a_b4_agregado_com_b4_a_b5(
     b4_a_b4_id numeric not null,
     b4_a_b5_id numeric not null,
     constraint ltf_bx_a_by_b4_a_b4_agregado_com_b4_a_b5_pk primary key(b4_a_b4_id, b4_a_b5_id)
);
Insert into lotofacil.ltf_bx_a_by_b4_a_b4_agregado_com_b4_a_b5 (b4_a_b4_id, b4_a_b5_id)
     Select b4_a_b4_id, b4_a_b5_id from lotofacil.lotofacil_coluna_b
     group by b4_a_b4_id, b4_a_b5_id
     order by b4_a_b4_id, b4_a_b5_id;
/*
Tabela: lotofacil.ltf_bx_a_by_b4_a_b4_agregado_com_b4_a_b5: [FIM]
=============================================================================
*/


/*
=============================================================================
Tabela: lotofacil.ltf_bx_a_by_b4_a_b5_agregado_com_b4_a_b6: [INICIO]
Pra que serve:
     Armazena campos b4_a_b5_id e b4_a_b6_id agregados da tabela
     lotofacil.lotofacil_coluna_b
*/
Drop table if exists lotofacil.ltf_bx_a_by_b4_a_b5_agregado_com_b4_a_b6;
Create table lotofacil.ltf_bx_a_by_b4_a_b5_agregado_com_b4_a_b6(
     b4_a_b5_id numeric not null,
     b4_a_b6_id numeric not null,
     constraint ltf_bx_a_by_b4_a_b5_agregado_com_b4_a_b6_pk primary key(b4_a_b5_id, b4_a_b6_id)
);
Insert into lotofacil.ltf_bx_a_by_b4_a_b5_agregado_com_b4_a_b6 (b4_a_b5_id, b4_a_b6_id)
     Select b4_a_b5_id, b4_a_b6_id from lotofacil.lotofacil_coluna_b
     group by b4_a_b5_id, b4_a_b6_id
     order by b4_a_b5_id, b4_a_b6_id;
/*
Tabela: lotofacil.ltf_bx_a_by_b4_a_b5_agregado_com_b4_a_b6: [FIM]
=============================================================================
*/


/*
=============================================================================
Tabela: lotofacil.ltf_bx_a_by_b4_a_b6_agregado_com_b4_a_b7: [INICIO]
Pra que serve:
     Armazena campos b4_a_b6_id e b4_a_b7_id agregados da tabela
     lotofacil.lotofacil_coluna_b
*/
Drop table if exists lotofacil.ltf_bx_a_by_b4_a_b6_agregado_com_b4_a_b7;
Create table lotofacil.ltf_bx_a_by_b4_a_b6_agregado_com_b4_a_b7(
     b4_a_b6_id numeric not null,
     b4_a_b7_id numeric not null,
     constraint ltf_bx_a_by_b4_a_b6_agregado_com_b4_a_b7_pk primary key(b4_a_b6_id, b4_a_b7_id)
);
Insert into lotofacil.ltf_bx_a_by_b4_a_b6_agregado_com_b4_a_b7 (b4_a_b6_id, b4_a_b7_id)
     Select b4_a_b6_id, b4_a_b7_id from lotofacil.lotofacil_coluna_b
     group by b4_a_b6_id, b4_a_b7_id
     order by b4_a_b6_id, b4_a_b7_id;
/*
Tabela: lotofacil.ltf_bx_a_by_b4_a_b6_agregado_com_b4_a_b7: [FIM]
=============================================================================
*/


/*
=============================================================================
Tabela: lotofacil.ltf_bx_a_by_b4_a_b7_agregado_com_b4_a_b8: [INICIO]
Pra que serve:
     Armazena campos b4_a_b7_id e b4_a_b8_id agregados da tabela
     lotofacil.lotofacil_coluna_b
*/
Drop table if exists lotofacil.ltf_bx_a_by_b4_a_b7_agregado_com_b4_a_b8;
Create table lotofacil.ltf_bx_a_by_b4_a_b7_agregado_com_b4_a_b8(
     b4_a_b7_id numeric not null,
     b4_a_b8_id numeric not null,
     constraint ltf_bx_a_by_b4_a_b7_agregado_com_b4_a_b8_pk primary key(b4_a_b7_id, b4_a_b8_id)
);
Insert into lotofacil.ltf_bx_a_by_b4_a_b7_agregado_com_b4_a_b8 (b4_a_b7_id, b4_a_b8_id)
     Select b4_a_b7_id, b4_a_b8_id from lotofacil.lotofacil_coluna_b
     group by b4_a_b7_id, b4_a_b8_id
     order by b4_a_b7_id, b4_a_b8_id;
/*
Tabela: lotofacil.ltf_bx_a_by_b4_a_b7_agregado_com_b4_a_b8: [FIM]
=============================================================================
*/


/*
=============================================================================
Tabela: lotofacil.ltf_bx_a_by_b4_a_b8_agregado_com_b4_a_b9: [INICIO]
Pra que serve:
     Armazena campos b4_a_b8_id e b4_a_b9_id agregados da tabela
     lotofacil.lotofacil_coluna_b
*/
Drop table if exists lotofacil.ltf_bx_a_by_b4_a_b8_agregado_com_b4_a_b9;
Create table lotofacil.ltf_bx_a_by_b4_a_b8_agregado_com_b4_a_b9(
     b4_a_b8_id numeric not null,
     b4_a_b9_id numeric not null,
     constraint ltf_bx_a_by_b4_a_b8_agregado_com_b4_a_b9_pk primary key(b4_a_b8_id, b4_a_b9_id)
);
Insert into lotofacil.ltf_bx_a_by_b4_a_b8_agregado_com_b4_a_b9 (b4_a_b8_id, b4_a_b9_id)
     Select b4_a_b8_id, b4_a_b9_id from lotofacil.lotofacil_coluna_b
     group by b4_a_b8_id, b4_a_b9_id
     order by b4_a_b8_id, b4_a_b9_id;
/*
Tabela: lotofacil.ltf_bx_a_by_b4_a_b8_agregado_com_b4_a_b9: [FIM]
=============================================================================
*/


/*
=============================================================================
Tabela: lotofacil.ltf_bx_a_by_b4_a_b9_agregado_com_b4_a_b10: [INICIO]
Pra que serve:
     Armazena campos b4_a_b9_id e b4_a_b10_id agregados da tabela
     lotofacil.lotofacil_coluna_b
*/
Drop table if exists lotofacil.ltf_bx_a_by_b4_a_b9_agregado_com_b4_a_b10;
Create table lotofacil.ltf_bx_a_by_b4_a_b9_agregado_com_b4_a_b10(
     b4_a_b9_id numeric not null,
     b4_a_b10_id numeric not null,
     constraint ltf_bx_a_by_b4_a_b9_agregado_com_b4_a_b10_pk primary key(b4_a_b9_id, b4_a_b10_id)
);
Insert into lotofacil.ltf_bx_a_by_b4_a_b9_agregado_com_b4_a_b10 (b4_a_b9_id, b4_a_b10_id)
     Select b4_a_b9_id, b4_a_b10_id from lotofacil.lotofacil_coluna_b
     group by b4_a_b9_id, b4_a_b10_id
     order by b4_a_b9_id, b4_a_b10_id;
/*
Tabela: lotofacil.ltf_bx_a_by_b4_a_b9_agregado_com_b4_a_b10: [FIM]
=============================================================================
*/


/*
=============================================================================
Tabela: lotofacil.ltf_bx_a_by_b4_a_b10_agregado_com_b4_a_b11: [INICIO]
Pra que serve:
     Armazena campos b4_a_b10_id e b4_a_b11_id agregados da tabela
     lotofacil.lotofacil_coluna_b
*/
Drop table if exists lotofacil.ltf_bx_a_by_b4_a_b10_agregado_com_b4_a_b11;
Create table lotofacil.ltf_bx_a_by_b4_a_b10_agregado_com_b4_a_b11(
     b4_a_b10_id numeric not null,
     b4_a_b11_id numeric not null,
     constraint ltf_bx_a_by_b4_a_b10_agregado_com_b4_a_b11_pk primary key(b4_a_b10_id, b4_a_b11_id)
);
Insert into lotofacil.ltf_bx_a_by_b4_a_b10_agregado_com_b4_a_b11 (b4_a_b10_id, b4_a_b11_id)
     Select b4_a_b10_id, b4_a_b11_id from lotofacil.lotofacil_coluna_b
     group by b4_a_b10_id, b4_a_b11_id
     order by b4_a_b10_id, b4_a_b11_id;
/*
Tabela: lotofacil.ltf_bx_a_by_b4_a_b10_agregado_com_b4_a_b11: [FIM]
=============================================================================
*/


/*
=============================================================================
Tabela: lotofacil.ltf_bx_a_by_b4_a_b11_agregado_com_b4_a_b12: [INICIO]
Pra que serve:
     Armazena campos b4_a_b11_id e b4_a_b12_id agregados da tabela
     lotofacil.lotofacil_coluna_b
*/
Drop table if exists lotofacil.ltf_bx_a_by_b4_a_b11_agregado_com_b4_a_b12;
Create table lotofacil.ltf_bx_a_by_b4_a_b11_agregado_com_b4_a_b12(
     b4_a_b11_id numeric not null,
     b4_a_b12_id numeric not null,
     constraint ltf_bx_a_by_b4_a_b11_agregado_com_b4_a_b12_pk primary key(b4_a_b11_id, b4_a_b12_id)
);
Insert into lotofacil.ltf_bx_a_by_b4_a_b11_agregado_com_b4_a_b12 (b4_a_b11_id, b4_a_b12_id)
     Select b4_a_b11_id, b4_a_b12_id from lotofacil.lotofacil_coluna_b
     group by b4_a_b11_id, b4_a_b12_id
     order by b4_a_b11_id, b4_a_b12_id;
/*
Tabela: lotofacil.ltf_bx_a_by_b4_a_b11_agregado_com_b4_a_b12: [FIM]
=============================================================================
*/


/*
=============================================================================
Tabela: lotofacil.ltf_bx_a_by_b4_a_b12_agregado_com_b4_a_b13: [INICIO]
Pra que serve:
     Armazena campos b4_a_b12_id e b4_a_b13_id agregados da tabela
     lotofacil.lotofacil_coluna_b
*/
Drop table if exists lotofacil.ltf_bx_a_by_b4_a_b12_agregado_com_b4_a_b13;
Create table lotofacil.ltf_bx_a_by_b4_a_b12_agregado_com_b4_a_b13(
     b4_a_b12_id numeric not null,
     b4_a_b13_id numeric not null,
     constraint ltf_bx_a_by_b4_a_b12_agregado_com_b4_a_b13_pk primary key(b4_a_b12_id, b4_a_b13_id)
);
Insert into lotofacil.ltf_bx_a_by_b4_a_b12_agregado_com_b4_a_b13 (b4_a_b12_id, b4_a_b13_id)
     Select b4_a_b12_id, b4_a_b13_id from lotofacil.lotofacil_coluna_b
     group by b4_a_b12_id, b4_a_b13_id
     order by b4_a_b12_id, b4_a_b13_id;
/*
Tabela: lotofacil.ltf_bx_a_by_b4_a_b12_agregado_com_b4_a_b13: [FIM]
=============================================================================
*/


/*
=============================================================================
Tabela: lotofacil.ltf_bx_a_by_b4_a_b13_agregado_com_b4_a_b14: [INICIO]
Pra que serve:
     Armazena campos b4_a_b13_id e b4_a_b14_id agregados da tabela
     lotofacil.lotofacil_coluna_b
*/
Drop table if exists lotofacil.ltf_bx_a_by_b4_a_b13_agregado_com_b4_a_b14;
Create table lotofacil.ltf_bx_a_by_b4_a_b13_agregado_com_b4_a_b14(
     b4_a_b13_id numeric not null,
     b4_a_b14_id numeric not null,
     constraint ltf_bx_a_by_b4_a_b13_agregado_com_b4_a_b14_pk primary key(b4_a_b13_id, b4_a_b14_id)
);
Insert into lotofacil.ltf_bx_a_by_b4_a_b13_agregado_com_b4_a_b14 (b4_a_b13_id, b4_a_b14_id)
     Select b4_a_b13_id, b4_a_b14_id from lotofacil.lotofacil_coluna_b
     group by b4_a_b13_id, b4_a_b14_id
     order by b4_a_b13_id, b4_a_b14_id;
/*
Tabela: lotofacil.ltf_bx_a_by_b4_a_b13_agregado_com_b4_a_b14: [FIM]
=============================================================================
*/


/*
=============================================================================
Tabela: lotofacil.ltf_bx_a_by_b4_a_b14_agregado_com_b4_a_b15: [INICIO]
Pra que serve:
     Armazena campos b4_a_b14_id e b4_a_b15_id agregados da tabela
     lotofacil.lotofacil_coluna_b
*/
Drop table if exists lotofacil.ltf_bx_a_by_b4_a_b14_agregado_com_b4_a_b15;
Create table lotofacil.ltf_bx_a_by_b4_a_b14_agregado_com_b4_a_b15(
     b4_a_b14_id numeric not null,
     b4_a_b15_id numeric not null,
     constraint ltf_bx_a_by_b4_a_b14_agregado_com_b4_a_b15_pk primary key(b4_a_b14_id, b4_a_b15_id)
);
Insert into lotofacil.ltf_bx_a_by_b4_a_b14_agregado_com_b4_a_b15 (b4_a_b14_id, b4_a_b15_id)
     Select b4_a_b14_id, b4_a_b15_id from lotofacil.lotofacil_coluna_b
     group by b4_a_b14_id, b4_a_b15_id
     order by b4_a_b14_id, b4_a_b15_id;
/*
Tabela: lotofacil.ltf_bx_a_by_b4_a_b14_agregado_com_b4_a_b15: [FIM]
=============================================================================
*/


/*
=============================================================================
Tabela: lotofacil.ltf_bx_a_by_b5_a_b5_agregado_com_b5_a_b6: [INICIO]
Pra que serve:
     Armazena campos b5_a_b5_id e b5_a_b6_id agregados da tabela
     lotofacil.lotofacil_coluna_b
*/
Drop table if exists lotofacil.ltf_bx_a_by_b5_a_b5_agregado_com_b5_a_b6;
Create table lotofacil.ltf_bx_a_by_b5_a_b5_agregado_com_b5_a_b6(
     b5_a_b5_id numeric not null,
     b5_a_b6_id numeric not null,
     constraint ltf_bx_a_by_b5_a_b5_agregado_com_b5_a_b6_pk primary key(b5_a_b5_id, b5_a_b6_id)
);
Insert into lotofacil.ltf_bx_a_by_b5_a_b5_agregado_com_b5_a_b6 (b5_a_b5_id, b5_a_b6_id)
     Select b5_a_b5_id, b5_a_b6_id from lotofacil.lotofacil_coluna_b
     group by b5_a_b5_id, b5_a_b6_id
     order by b5_a_b5_id, b5_a_b6_id;
/*
Tabela: lotofacil.ltf_bx_a_by_b5_a_b5_agregado_com_b5_a_b6: [FIM]
=============================================================================
*/


/*
=============================================================================
Tabela: lotofacil.ltf_bx_a_by_b5_a_b6_agregado_com_b5_a_b7: [INICIO]
Pra que serve:
     Armazena campos b5_a_b6_id e b5_a_b7_id agregados da tabela
     lotofacil.lotofacil_coluna_b
*/
Drop table if exists lotofacil.ltf_bx_a_by_b5_a_b6_agregado_com_b5_a_b7;
Create table lotofacil.ltf_bx_a_by_b5_a_b6_agregado_com_b5_a_b7(
     b5_a_b6_id numeric not null,
     b5_a_b7_id numeric not null,
     constraint ltf_bx_a_by_b5_a_b6_agregado_com_b5_a_b7_pk primary key(b5_a_b6_id, b5_a_b7_id)
);
Insert into lotofacil.ltf_bx_a_by_b5_a_b6_agregado_com_b5_a_b7 (b5_a_b6_id, b5_a_b7_id)
     Select b5_a_b6_id, b5_a_b7_id from lotofacil.lotofacil_coluna_b
     group by b5_a_b6_id, b5_a_b7_id
     order by b5_a_b6_id, b5_a_b7_id;
/*
Tabela: lotofacil.ltf_bx_a_by_b5_a_b6_agregado_com_b5_a_b7: [FIM]
=============================================================================
*/


/*
=============================================================================
Tabela: lotofacil.ltf_bx_a_by_b5_a_b7_agregado_com_b5_a_b8: [INICIO]
Pra que serve:
     Armazena campos b5_a_b7_id e b5_a_b8_id agregados da tabela
     lotofacil.lotofacil_coluna_b
*/
Drop table if exists lotofacil.ltf_bx_a_by_b5_a_b7_agregado_com_b5_a_b8;
Create table lotofacil.ltf_bx_a_by_b5_a_b7_agregado_com_b5_a_b8(
     b5_a_b7_id numeric not null,
     b5_a_b8_id numeric not null,
     constraint ltf_bx_a_by_b5_a_b7_agregado_com_b5_a_b8_pk primary key(b5_a_b7_id, b5_a_b8_id)
);
Insert into lotofacil.ltf_bx_a_by_b5_a_b7_agregado_com_b5_a_b8 (b5_a_b7_id, b5_a_b8_id)
     Select b5_a_b7_id, b5_a_b8_id from lotofacil.lotofacil_coluna_b
     group by b5_a_b7_id, b5_a_b8_id
     order by b5_a_b7_id, b5_a_b8_id;
/*
Tabela: lotofacil.ltf_bx_a_by_b5_a_b7_agregado_com_b5_a_b8: [FIM]
=============================================================================
*/


/*
=============================================================================
Tabela: lotofacil.ltf_bx_a_by_b5_a_b8_agregado_com_b5_a_b9: [INICIO]
Pra que serve:
     Armazena campos b5_a_b8_id e b5_a_b9_id agregados da tabela
     lotofacil.lotofacil_coluna_b
*/
Drop table if exists lotofacil.ltf_bx_a_by_b5_a_b8_agregado_com_b5_a_b9;
Create table lotofacil.ltf_bx_a_by_b5_a_b8_agregado_com_b5_a_b9(
     b5_a_b8_id numeric not null,
     b5_a_b9_id numeric not null,
     constraint ltf_bx_a_by_b5_a_b8_agregado_com_b5_a_b9_pk primary key(b5_a_b8_id, b5_a_b9_id)
);
Insert into lotofacil.ltf_bx_a_by_b5_a_b8_agregado_com_b5_a_b9 (b5_a_b8_id, b5_a_b9_id)
     Select b5_a_b8_id, b5_a_b9_id from lotofacil.lotofacil_coluna_b
     group by b5_a_b8_id, b5_a_b9_id
     order by b5_a_b8_id, b5_a_b9_id;
/*
Tabela: lotofacil.ltf_bx_a_by_b5_a_b8_agregado_com_b5_a_b9: [FIM]
=============================================================================
*/


/*
=============================================================================
Tabela: lotofacil.ltf_bx_a_by_b5_a_b9_agregado_com_b5_a_b10: [INICIO]
Pra que serve:
     Armazena campos b5_a_b9_id e b5_a_b10_id agregados da tabela
     lotofacil.lotofacil_coluna_b
*/
Drop table if exists lotofacil.ltf_bx_a_by_b5_a_b9_agregado_com_b5_a_b10;
Create table lotofacil.ltf_bx_a_by_b5_a_b9_agregado_com_b5_a_b10(
     b5_a_b9_id numeric not null,
     b5_a_b10_id numeric not null,
     constraint ltf_bx_a_by_b5_a_b9_agregado_com_b5_a_b10_pk primary key(b5_a_b9_id, b5_a_b10_id)
);
Insert into lotofacil.ltf_bx_a_by_b5_a_b9_agregado_com_b5_a_b10 (b5_a_b9_id, b5_a_b10_id)
     Select b5_a_b9_id, b5_a_b10_id from lotofacil.lotofacil_coluna_b
     group by b5_a_b9_id, b5_a_b10_id
     order by b5_a_b9_id, b5_a_b10_id;
/*
Tabela: lotofacil.ltf_bx_a_by_b5_a_b9_agregado_com_b5_a_b10: [FIM]
=============================================================================
*/


/*
=============================================================================
Tabela: lotofacil.ltf_bx_a_by_b5_a_b10_agregado_com_b5_a_b11: [INICIO]
Pra que serve:
     Armazena campos b5_a_b10_id e b5_a_b11_id agregados da tabela
     lotofacil.lotofacil_coluna_b
*/
Drop table if exists lotofacil.ltf_bx_a_by_b5_a_b10_agregado_com_b5_a_b11;
Create table lotofacil.ltf_bx_a_by_b5_a_b10_agregado_com_b5_a_b11(
     b5_a_b10_id numeric not null,
     b5_a_b11_id numeric not null,
     constraint ltf_bx_a_by_b5_a_b10_agregado_com_b5_a_b11_pk primary key(b5_a_b10_id, b5_a_b11_id)
);
Insert into lotofacil.ltf_bx_a_by_b5_a_b10_agregado_com_b5_a_b11 (b5_a_b10_id, b5_a_b11_id)
     Select b5_a_b10_id, b5_a_b11_id from lotofacil.lotofacil_coluna_b
     group by b5_a_b10_id, b5_a_b11_id
     order by b5_a_b10_id, b5_a_b11_id;
/*
Tabela: lotofacil.ltf_bx_a_by_b5_a_b10_agregado_com_b5_a_b11: [FIM]
=============================================================================
*/


/*
=============================================================================
Tabela: lotofacil.ltf_bx_a_by_b5_a_b11_agregado_com_b5_a_b12: [INICIO]
Pra que serve:
     Armazena campos b5_a_b11_id e b5_a_b12_id agregados da tabela
     lotofacil.lotofacil_coluna_b
*/
Drop table if exists lotofacil.ltf_bx_a_by_b5_a_b11_agregado_com_b5_a_b12;
Create table lotofacil.ltf_bx_a_by_b5_a_b11_agregado_com_b5_a_b12(
     b5_a_b11_id numeric not null,
     b5_a_b12_id numeric not null,
     constraint ltf_bx_a_by_b5_a_b11_agregado_com_b5_a_b12_pk primary key(b5_a_b11_id, b5_a_b12_id)
);
Insert into lotofacil.ltf_bx_a_by_b5_a_b11_agregado_com_b5_a_b12 (b5_a_b11_id, b5_a_b12_id)
     Select b5_a_b11_id, b5_a_b12_id from lotofacil.lotofacil_coluna_b
     group by b5_a_b11_id, b5_a_b12_id
     order by b5_a_b11_id, b5_a_b12_id;
/*
Tabela: lotofacil.ltf_bx_a_by_b5_a_b11_agregado_com_b5_a_b12: [FIM]
=============================================================================
*/


/*
=============================================================================
Tabela: lotofacil.ltf_bx_a_by_b5_a_b12_agregado_com_b5_a_b13: [INICIO]
Pra que serve:
     Armazena campos b5_a_b12_id e b5_a_b13_id agregados da tabela
     lotofacil.lotofacil_coluna_b
*/
Drop table if exists lotofacil.ltf_bx_a_by_b5_a_b12_agregado_com_b5_a_b13;
Create table lotofacil.ltf_bx_a_by_b5_a_b12_agregado_com_b5_a_b13(
     b5_a_b12_id numeric not null,
     b5_a_b13_id numeric not null,
     constraint ltf_bx_a_by_b5_a_b12_agregado_com_b5_a_b13_pk primary key(b5_a_b12_id, b5_a_b13_id)
);
Insert into lotofacil.ltf_bx_a_by_b5_a_b12_agregado_com_b5_a_b13 (b5_a_b12_id, b5_a_b13_id)
     Select b5_a_b12_id, b5_a_b13_id from lotofacil.lotofacil_coluna_b
     group by b5_a_b12_id, b5_a_b13_id
     order by b5_a_b12_id, b5_a_b13_id;
/*
Tabela: lotofacil.ltf_bx_a_by_b5_a_b12_agregado_com_b5_a_b13: [FIM]
=============================================================================
*/


/*
=============================================================================
Tabela: lotofacil.ltf_bx_a_by_b5_a_b13_agregado_com_b5_a_b14: [INICIO]
Pra que serve:
     Armazena campos b5_a_b13_id e b5_a_b14_id agregados da tabela
     lotofacil.lotofacil_coluna_b
*/
Drop table if exists lotofacil.ltf_bx_a_by_b5_a_b13_agregado_com_b5_a_b14;
Create table lotofacil.ltf_bx_a_by_b5_a_b13_agregado_com_b5_a_b14(
     b5_a_b13_id numeric not null,
     b5_a_b14_id numeric not null,
     constraint ltf_bx_a_by_b5_a_b13_agregado_com_b5_a_b14_pk primary key(b5_a_b13_id, b5_a_b14_id)
);
Insert into lotofacil.ltf_bx_a_by_b5_a_b13_agregado_com_b5_a_b14 (b5_a_b13_id, b5_a_b14_id)
     Select b5_a_b13_id, b5_a_b14_id from lotofacil.lotofacil_coluna_b
     group by b5_a_b13_id, b5_a_b14_id
     order by b5_a_b13_id, b5_a_b14_id;
/*
Tabela: lotofacil.ltf_bx_a_by_b5_a_b13_agregado_com_b5_a_b14: [FIM]
=============================================================================
*/


/*
=============================================================================
Tabela: lotofacil.ltf_bx_a_by_b5_a_b14_agregado_com_b5_a_b15: [INICIO]
Pra que serve:
     Armazena campos b5_a_b14_id e b5_a_b15_id agregados da tabela
     lotofacil.lotofacil_coluna_b
*/
Drop table if exists lotofacil.ltf_bx_a_by_b5_a_b14_agregado_com_b5_a_b15;
Create table lotofacil.ltf_bx_a_by_b5_a_b14_agregado_com_b5_a_b15(
     b5_a_b14_id numeric not null,
     b5_a_b15_id numeric not null,
     constraint ltf_bx_a_by_b5_a_b14_agregado_com_b5_a_b15_pk primary key(b5_a_b14_id, b5_a_b15_id)
);
Insert into lotofacil.ltf_bx_a_by_b5_a_b14_agregado_com_b5_a_b15 (b5_a_b14_id, b5_a_b15_id)
     Select b5_a_b14_id, b5_a_b15_id from lotofacil.lotofacil_coluna_b
     group by b5_a_b14_id, b5_a_b15_id
     order by b5_a_b14_id, b5_a_b15_id;
/*
Tabela: lotofacil.ltf_bx_a_by_b5_a_b14_agregado_com_b5_a_b15: [FIM]
=============================================================================
*/


/*
=============================================================================
Tabela: lotofacil.ltf_bx_a_by_b6_a_b6_agregado_com_b6_a_b7: [INICIO]
Pra que serve:
     Armazena campos b6_a_b6_id e b6_a_b7_id agregados da tabela
     lotofacil.lotofacil_coluna_b
*/
Drop table if exists lotofacil.ltf_bx_a_by_b6_a_b6_agregado_com_b6_a_b7;
Create table lotofacil.ltf_bx_a_by_b6_a_b6_agregado_com_b6_a_b7(
     b6_a_b6_id numeric not null,
     b6_a_b7_id numeric not null,
     constraint ltf_bx_a_by_b6_a_b6_agregado_com_b6_a_b7_pk primary key(b6_a_b6_id, b6_a_b7_id)
);
Insert into lotofacil.ltf_bx_a_by_b6_a_b6_agregado_com_b6_a_b7 (b6_a_b6_id, b6_a_b7_id)
     Select b6_a_b6_id, b6_a_b7_id from lotofacil.lotofacil_coluna_b
     group by b6_a_b6_id, b6_a_b7_id
     order by b6_a_b6_id, b6_a_b7_id;
/*
Tabela: lotofacil.ltf_bx_a_by_b6_a_b6_agregado_com_b6_a_b7: [FIM]
=============================================================================
*/


/*
=============================================================================
Tabela: lotofacil.ltf_bx_a_by_b6_a_b7_agregado_com_b6_a_b8: [INICIO]
Pra que serve:
     Armazena campos b6_a_b7_id e b6_a_b8_id agregados da tabela
     lotofacil.lotofacil_coluna_b
*/
Drop table if exists lotofacil.ltf_bx_a_by_b6_a_b7_agregado_com_b6_a_b8;
Create table lotofacil.ltf_bx_a_by_b6_a_b7_agregado_com_b6_a_b8(
     b6_a_b7_id numeric not null,
     b6_a_b8_id numeric not null,
     constraint ltf_bx_a_by_b6_a_b7_agregado_com_b6_a_b8_pk primary key(b6_a_b7_id, b6_a_b8_id)
);
Insert into lotofacil.ltf_bx_a_by_b6_a_b7_agregado_com_b6_a_b8 (b6_a_b7_id, b6_a_b8_id)
     Select b6_a_b7_id, b6_a_b8_id from lotofacil.lotofacil_coluna_b
     group by b6_a_b7_id, b6_a_b8_id
     order by b6_a_b7_id, b6_a_b8_id;
/*
Tabela: lotofacil.ltf_bx_a_by_b6_a_b7_agregado_com_b6_a_b8: [FIM]
=============================================================================
*/


/*
=============================================================================
Tabela: lotofacil.ltf_bx_a_by_b6_a_b8_agregado_com_b6_a_b9: [INICIO]
Pra que serve:
     Armazena campos b6_a_b8_id e b6_a_b9_id agregados da tabela
     lotofacil.lotofacil_coluna_b
*/
Drop table if exists lotofacil.ltf_bx_a_by_b6_a_b8_agregado_com_b6_a_b9;
Create table lotofacil.ltf_bx_a_by_b6_a_b8_agregado_com_b6_a_b9(
     b6_a_b8_id numeric not null,
     b6_a_b9_id numeric not null,
     constraint ltf_bx_a_by_b6_a_b8_agregado_com_b6_a_b9_pk primary key(b6_a_b8_id, b6_a_b9_id)
);
Insert into lotofacil.ltf_bx_a_by_b6_a_b8_agregado_com_b6_a_b9 (b6_a_b8_id, b6_a_b9_id)
     Select b6_a_b8_id, b6_a_b9_id from lotofacil.lotofacil_coluna_b
     group by b6_a_b8_id, b6_a_b9_id
     order by b6_a_b8_id, b6_a_b9_id;
/*
Tabela: lotofacil.ltf_bx_a_by_b6_a_b8_agregado_com_b6_a_b9: [FIM]
=============================================================================
*/


/*
=============================================================================
Tabela: lotofacil.ltf_bx_a_by_b6_a_b9_agregado_com_b6_a_b10: [INICIO]
Pra que serve:
     Armazena campos b6_a_b9_id e b6_a_b10_id agregados da tabela
     lotofacil.lotofacil_coluna_b
*/
Drop table if exists lotofacil.ltf_bx_a_by_b6_a_b9_agregado_com_b6_a_b10;
Create table lotofacil.ltf_bx_a_by_b6_a_b9_agregado_com_b6_a_b10(
     b6_a_b9_id numeric not null,
     b6_a_b10_id numeric not null,
     constraint ltf_bx_a_by_b6_a_b9_agregado_com_b6_a_b10_pk primary key(b6_a_b9_id, b6_a_b10_id)
);
Insert into lotofacil.ltf_bx_a_by_b6_a_b9_agregado_com_b6_a_b10 (b6_a_b9_id, b6_a_b10_id)
     Select b6_a_b9_id, b6_a_b10_id from lotofacil.lotofacil_coluna_b
     group by b6_a_b9_id, b6_a_b10_id
     order by b6_a_b9_id, b6_a_b10_id;
/*
Tabela: lotofacil.ltf_bx_a_by_b6_a_b9_agregado_com_b6_a_b10: [FIM]
=============================================================================
*/


/*
=============================================================================
Tabela: lotofacil.ltf_bx_a_by_b6_a_b10_agregado_com_b6_a_b11: [INICIO]
Pra que serve:
     Armazena campos b6_a_b10_id e b6_a_b11_id agregados da tabela
     lotofacil.lotofacil_coluna_b
*/
Drop table if exists lotofacil.ltf_bx_a_by_b6_a_b10_agregado_com_b6_a_b11;
Create table lotofacil.ltf_bx_a_by_b6_a_b10_agregado_com_b6_a_b11(
     b6_a_b10_id numeric not null,
     b6_a_b11_id numeric not null,
     constraint ltf_bx_a_by_b6_a_b10_agregado_com_b6_a_b11_pk primary key(b6_a_b10_id, b6_a_b11_id)
);
Insert into lotofacil.ltf_bx_a_by_b6_a_b10_agregado_com_b6_a_b11 (b6_a_b10_id, b6_a_b11_id)
     Select b6_a_b10_id, b6_a_b11_id from lotofacil.lotofacil_coluna_b
     group by b6_a_b10_id, b6_a_b11_id
     order by b6_a_b10_id, b6_a_b11_id;
/*
Tabela: lotofacil.ltf_bx_a_by_b6_a_b10_agregado_com_b6_a_b11: [FIM]
=============================================================================
*/


/*
=============================================================================
Tabela: lotofacil.ltf_bx_a_by_b6_a_b11_agregado_com_b6_a_b12: [INICIO]
Pra que serve:
     Armazena campos b6_a_b11_id e b6_a_b12_id agregados da tabela
     lotofacil.lotofacil_coluna_b
*/
Drop table if exists lotofacil.ltf_bx_a_by_b6_a_b11_agregado_com_b6_a_b12;
Create table lotofacil.ltf_bx_a_by_b6_a_b11_agregado_com_b6_a_b12(
     b6_a_b11_id numeric not null,
     b6_a_b12_id numeric not null,
     constraint ltf_bx_a_by_b6_a_b11_agregado_com_b6_a_b12_pk primary key(b6_a_b11_id, b6_a_b12_id)
);
Insert into lotofacil.ltf_bx_a_by_b6_a_b11_agregado_com_b6_a_b12 (b6_a_b11_id, b6_a_b12_id)
     Select b6_a_b11_id, b6_a_b12_id from lotofacil.lotofacil_coluna_b
     group by b6_a_b11_id, b6_a_b12_id
     order by b6_a_b11_id, b6_a_b12_id;
/*
Tabela: lotofacil.ltf_bx_a_by_b6_a_b11_agregado_com_b6_a_b12: [FIM]
=============================================================================
*/


/*
=============================================================================
Tabela: lotofacil.ltf_bx_a_by_b6_a_b12_agregado_com_b6_a_b13: [INICIO]
Pra que serve:
     Armazena campos b6_a_b12_id e b6_a_b13_id agregados da tabela
     lotofacil.lotofacil_coluna_b
*/
Drop table if exists lotofacil.ltf_bx_a_by_b6_a_b12_agregado_com_b6_a_b13;
Create table lotofacil.ltf_bx_a_by_b6_a_b12_agregado_com_b6_a_b13(
     b6_a_b12_id numeric not null,
     b6_a_b13_id numeric not null,
     constraint ltf_bx_a_by_b6_a_b12_agregado_com_b6_a_b13_pk primary key(b6_a_b12_id, b6_a_b13_id)
);
Insert into lotofacil.ltf_bx_a_by_b6_a_b12_agregado_com_b6_a_b13 (b6_a_b12_id, b6_a_b13_id)
     Select b6_a_b12_id, b6_a_b13_id from lotofacil.lotofacil_coluna_b
     group by b6_a_b12_id, b6_a_b13_id
     order by b6_a_b12_id, b6_a_b13_id;
/*
Tabela: lotofacil.ltf_bx_a_by_b6_a_b12_agregado_com_b6_a_b13: [FIM]
=============================================================================
*/


/*
=============================================================================
Tabela: lotofacil.ltf_bx_a_by_b6_a_b13_agregado_com_b6_a_b14: [INICIO]
Pra que serve:
     Armazena campos b6_a_b13_id e b6_a_b14_id agregados da tabela
     lotofacil.lotofacil_coluna_b
*/
Drop table if exists lotofacil.ltf_bx_a_by_b6_a_b13_agregado_com_b6_a_b14;
Create table lotofacil.ltf_bx_a_by_b6_a_b13_agregado_com_b6_a_b14(
     b6_a_b13_id numeric not null,
     b6_a_b14_id numeric not null,
     constraint ltf_bx_a_by_b6_a_b13_agregado_com_b6_a_b14_pk primary key(b6_a_b13_id, b6_a_b14_id)
);
Insert into lotofacil.ltf_bx_a_by_b6_a_b13_agregado_com_b6_a_b14 (b6_a_b13_id, b6_a_b14_id)
     Select b6_a_b13_id, b6_a_b14_id from lotofacil.lotofacil_coluna_b
     group by b6_a_b13_id, b6_a_b14_id
     order by b6_a_b13_id, b6_a_b14_id;
/*
Tabela: lotofacil.ltf_bx_a_by_b6_a_b13_agregado_com_b6_a_b14: [FIM]
=============================================================================
*/


/*
=============================================================================
Tabela: lotofacil.ltf_bx_a_by_b6_a_b14_agregado_com_b6_a_b15: [INICIO]
Pra que serve:
     Armazena campos b6_a_b14_id e b6_a_b15_id agregados da tabela
     lotofacil.lotofacil_coluna_b
*/
Drop table if exists lotofacil.ltf_bx_a_by_b6_a_b14_agregado_com_b6_a_b15;
Create table lotofacil.ltf_bx_a_by_b6_a_b14_agregado_com_b6_a_b15(
     b6_a_b14_id numeric not null,
     b6_a_b15_id numeric not null,
     constraint ltf_bx_a_by_b6_a_b14_agregado_com_b6_a_b15_pk primary key(b6_a_b14_id, b6_a_b15_id)
);
Insert into lotofacil.ltf_bx_a_by_b6_a_b14_agregado_com_b6_a_b15 (b6_a_b14_id, b6_a_b15_id)
     Select b6_a_b14_id, b6_a_b15_id from lotofacil.lotofacil_coluna_b
     group by b6_a_b14_id, b6_a_b15_id
     order by b6_a_b14_id, b6_a_b15_id;
/*
Tabela: lotofacil.ltf_bx_a_by_b6_a_b14_agregado_com_b6_a_b15: [FIM]
=============================================================================
*/


/*
=============================================================================
Tabela: lotofacil.ltf_bx_a_by_b7_a_b7_agregado_com_b7_a_b8: [INICIO]
Pra que serve:
     Armazena campos b7_a_b7_id e b7_a_b8_id agregados da tabela
     lotofacil.lotofacil_coluna_b
*/
Drop table if exists lotofacil.ltf_bx_a_by_b7_a_b7_agregado_com_b7_a_b8;
Create table lotofacil.ltf_bx_a_by_b7_a_b7_agregado_com_b7_a_b8(
     b7_a_b7_id numeric not null,
     b7_a_b8_id numeric not null,
     constraint ltf_bx_a_by_b7_a_b7_agregado_com_b7_a_b8_pk primary key(b7_a_b7_id, b7_a_b8_id)
);
Insert into lotofacil.ltf_bx_a_by_b7_a_b7_agregado_com_b7_a_b8 (b7_a_b7_id, b7_a_b8_id)
     Select b7_a_b7_id, b7_a_b8_id from lotofacil.lotofacil_coluna_b
     group by b7_a_b7_id, b7_a_b8_id
     order by b7_a_b7_id, b7_a_b8_id;
/*
Tabela: lotofacil.ltf_bx_a_by_b7_a_b7_agregado_com_b7_a_b8: [FIM]
=============================================================================
*/


/*
=============================================================================
Tabela: lotofacil.ltf_bx_a_by_b7_a_b8_agregado_com_b7_a_b9: [INICIO]
Pra que serve:
     Armazena campos b7_a_b8_id e b7_a_b9_id agregados da tabela
     lotofacil.lotofacil_coluna_b
*/
Drop table if exists lotofacil.ltf_bx_a_by_b7_a_b8_agregado_com_b7_a_b9;
Create table lotofacil.ltf_bx_a_by_b7_a_b8_agregado_com_b7_a_b9(
     b7_a_b8_id numeric not null,
     b7_a_b9_id numeric not null,
     constraint ltf_bx_a_by_b7_a_b8_agregado_com_b7_a_b9_pk primary key(b7_a_b8_id, b7_a_b9_id)
);
Insert into lotofacil.ltf_bx_a_by_b7_a_b8_agregado_com_b7_a_b9 (b7_a_b8_id, b7_a_b9_id)
     Select b7_a_b8_id, b7_a_b9_id from lotofacil.lotofacil_coluna_b
     group by b7_a_b8_id, b7_a_b9_id
     order by b7_a_b8_id, b7_a_b9_id;
/*
Tabela: lotofacil.ltf_bx_a_by_b7_a_b8_agregado_com_b7_a_b9: [FIM]
=============================================================================
*/


/*
=============================================================================
Tabela: lotofacil.ltf_bx_a_by_b7_a_b9_agregado_com_b7_a_b10: [INICIO]
Pra que serve:
     Armazena campos b7_a_b9_id e b7_a_b10_id agregados da tabela
     lotofacil.lotofacil_coluna_b
*/
Drop table if exists lotofacil.ltf_bx_a_by_b7_a_b9_agregado_com_b7_a_b10;
Create table lotofacil.ltf_bx_a_by_b7_a_b9_agregado_com_b7_a_b10(
     b7_a_b9_id numeric not null,
     b7_a_b10_id numeric not null,
     constraint ltf_bx_a_by_b7_a_b9_agregado_com_b7_a_b10_pk primary key(b7_a_b9_id, b7_a_b10_id)
);
Insert into lotofacil.ltf_bx_a_by_b7_a_b9_agregado_com_b7_a_b10 (b7_a_b9_id, b7_a_b10_id)
     Select b7_a_b9_id, b7_a_b10_id from lotofacil.lotofacil_coluna_b
     group by b7_a_b9_id, b7_a_b10_id
     order by b7_a_b9_id, b7_a_b10_id;
/*
Tabela: lotofacil.ltf_bx_a_by_b7_a_b9_agregado_com_b7_a_b10: [FIM]
=============================================================================
*/


/*
=============================================================================
Tabela: lotofacil.ltf_bx_a_by_b7_a_b10_agregado_com_b7_a_b11: [INICIO]
Pra que serve:
     Armazena campos b7_a_b10_id e b7_a_b11_id agregados da tabela
     lotofacil.lotofacil_coluna_b
*/
Drop table if exists lotofacil.ltf_bx_a_by_b7_a_b10_agregado_com_b7_a_b11;
Create table lotofacil.ltf_bx_a_by_b7_a_b10_agregado_com_b7_a_b11(
     b7_a_b10_id numeric not null,
     b7_a_b11_id numeric not null,
     constraint ltf_bx_a_by_b7_a_b10_agregado_com_b7_a_b11_pk primary key(b7_a_b10_id, b7_a_b11_id)
);
Insert into lotofacil.ltf_bx_a_by_b7_a_b10_agregado_com_b7_a_b11 (b7_a_b10_id, b7_a_b11_id)
     Select b7_a_b10_id, b7_a_b11_id from lotofacil.lotofacil_coluna_b
     group by b7_a_b10_id, b7_a_b11_id
     order by b7_a_b10_id, b7_a_b11_id;
/*
Tabela: lotofacil.ltf_bx_a_by_b7_a_b10_agregado_com_b7_a_b11: [FIM]
=============================================================================
*/


/*
=============================================================================
Tabela: lotofacil.ltf_bx_a_by_b7_a_b11_agregado_com_b7_a_b12: [INICIO]
Pra que serve:
     Armazena campos b7_a_b11_id e b7_a_b12_id agregados da tabela
     lotofacil.lotofacil_coluna_b
*/
Drop table if exists lotofacil.ltf_bx_a_by_b7_a_b11_agregado_com_b7_a_b12;
Create table lotofacil.ltf_bx_a_by_b7_a_b11_agregado_com_b7_a_b12(
     b7_a_b11_id numeric not null,
     b7_a_b12_id numeric not null,
     constraint ltf_bx_a_by_b7_a_b11_agregado_com_b7_a_b12_pk primary key(b7_a_b11_id, b7_a_b12_id)
);
Insert into lotofacil.ltf_bx_a_by_b7_a_b11_agregado_com_b7_a_b12 (b7_a_b11_id, b7_a_b12_id)
     Select b7_a_b11_id, b7_a_b12_id from lotofacil.lotofacil_coluna_b
     group by b7_a_b11_id, b7_a_b12_id
     order by b7_a_b11_id, b7_a_b12_id;
/*
Tabela: lotofacil.ltf_bx_a_by_b7_a_b11_agregado_com_b7_a_b12: [FIM]
=============================================================================
*/


/*
=============================================================================
Tabela: lotofacil.ltf_bx_a_by_b7_a_b12_agregado_com_b7_a_b13: [INICIO]
Pra que serve:
     Armazena campos b7_a_b12_id e b7_a_b13_id agregados da tabela
     lotofacil.lotofacil_coluna_b
*/
Drop table if exists lotofacil.ltf_bx_a_by_b7_a_b12_agregado_com_b7_a_b13;
Create table lotofacil.ltf_bx_a_by_b7_a_b12_agregado_com_b7_a_b13(
     b7_a_b12_id numeric not null,
     b7_a_b13_id numeric not null,
     constraint ltf_bx_a_by_b7_a_b12_agregado_com_b7_a_b13_pk primary key(b7_a_b12_id, b7_a_b13_id)
);
Insert into lotofacil.ltf_bx_a_by_b7_a_b12_agregado_com_b7_a_b13 (b7_a_b12_id, b7_a_b13_id)
     Select b7_a_b12_id, b7_a_b13_id from lotofacil.lotofacil_coluna_b
     group by b7_a_b12_id, b7_a_b13_id
     order by b7_a_b12_id, b7_a_b13_id;
/*
Tabela: lotofacil.ltf_bx_a_by_b7_a_b12_agregado_com_b7_a_b13: [FIM]
=============================================================================
*/


/*
=============================================================================
Tabela: lotofacil.ltf_bx_a_by_b7_a_b13_agregado_com_b7_a_b14: [INICIO]
Pra que serve:
     Armazena campos b7_a_b13_id e b7_a_b14_id agregados da tabela
     lotofacil.lotofacil_coluna_b
*/
Drop table if exists lotofacil.ltf_bx_a_by_b7_a_b13_agregado_com_b7_a_b14;
Create table lotofacil.ltf_bx_a_by_b7_a_b13_agregado_com_b7_a_b14(
     b7_a_b13_id numeric not null,
     b7_a_b14_id numeric not null,
     constraint ltf_bx_a_by_b7_a_b13_agregado_com_b7_a_b14_pk primary key(b7_a_b13_id, b7_a_b14_id)
);
Insert into lotofacil.ltf_bx_a_by_b7_a_b13_agregado_com_b7_a_b14 (b7_a_b13_id, b7_a_b14_id)
     Select b7_a_b13_id, b7_a_b14_id from lotofacil.lotofacil_coluna_b
     group by b7_a_b13_id, b7_a_b14_id
     order by b7_a_b13_id, b7_a_b14_id;
/*
Tabela: lotofacil.ltf_bx_a_by_b7_a_b13_agregado_com_b7_a_b14: [FIM]
=============================================================================
*/


/*
=============================================================================
Tabela: lotofacil.ltf_bx_a_by_b7_a_b14_agregado_com_b7_a_b15: [INICIO]
Pra que serve:
     Armazena campos b7_a_b14_id e b7_a_b15_id agregados da tabela
     lotofacil.lotofacil_coluna_b
*/
Drop table if exists lotofacil.ltf_bx_a_by_b7_a_b14_agregado_com_b7_a_b15;
Create table lotofacil.ltf_bx_a_by_b7_a_b14_agregado_com_b7_a_b15(
     b7_a_b14_id numeric not null,
     b7_a_b15_id numeric not null,
     constraint ltf_bx_a_by_b7_a_b14_agregado_com_b7_a_b15_pk primary key(b7_a_b14_id, b7_a_b15_id)
);
Insert into lotofacil.ltf_bx_a_by_b7_a_b14_agregado_com_b7_a_b15 (b7_a_b14_id, b7_a_b15_id)
     Select b7_a_b14_id, b7_a_b15_id from lotofacil.lotofacil_coluna_b
     group by b7_a_b14_id, b7_a_b15_id
     order by b7_a_b14_id, b7_a_b15_id;
/*
Tabela: lotofacil.ltf_bx_a_by_b7_a_b14_agregado_com_b7_a_b15: [FIM]
=============================================================================
*/


/*
=============================================================================
Tabela: lotofacil.ltf_bx_a_by_b8_a_b8_agregado_com_b8_a_b9: [INICIO]
Pra que serve:
     Armazena campos b8_a_b8_id e b8_a_b9_id agregados da tabela
     lotofacil.lotofacil_coluna_b
*/
Drop table if exists lotofacil.ltf_bx_a_by_b8_a_b8_agregado_com_b8_a_b9;
Create table lotofacil.ltf_bx_a_by_b8_a_b8_agregado_com_b8_a_b9(
     b8_a_b8_id numeric not null,
     b8_a_b9_id numeric not null,
     constraint ltf_bx_a_by_b8_a_b8_agregado_com_b8_a_b9_pk primary key(b8_a_b8_id, b8_a_b9_id)
);
Insert into lotofacil.ltf_bx_a_by_b8_a_b8_agregado_com_b8_a_b9 (b8_a_b8_id, b8_a_b9_id)
     Select b8_a_b8_id, b8_a_b9_id from lotofacil.lotofacil_coluna_b
     group by b8_a_b8_id, b8_a_b9_id
     order by b8_a_b8_id, b8_a_b9_id;
/*
Tabela: lotofacil.ltf_bx_a_by_b8_a_b8_agregado_com_b8_a_b9: [FIM]
=============================================================================
*/


/*
=============================================================================
Tabela: lotofacil.ltf_bx_a_by_b8_a_b9_agregado_com_b8_a_b10: [INICIO]
Pra que serve:
     Armazena campos b8_a_b9_id e b8_a_b10_id agregados da tabela
     lotofacil.lotofacil_coluna_b
*/
Drop table if exists lotofacil.ltf_bx_a_by_b8_a_b9_agregado_com_b8_a_b10;
Create table lotofacil.ltf_bx_a_by_b8_a_b9_agregado_com_b8_a_b10(
     b8_a_b9_id numeric not null,
     b8_a_b10_id numeric not null,
     constraint ltf_bx_a_by_b8_a_b9_agregado_com_b8_a_b10_pk primary key(b8_a_b9_id, b8_a_b10_id)
);
Insert into lotofacil.ltf_bx_a_by_b8_a_b9_agregado_com_b8_a_b10 (b8_a_b9_id, b8_a_b10_id)
     Select b8_a_b9_id, b8_a_b10_id from lotofacil.lotofacil_coluna_b
     group by b8_a_b9_id, b8_a_b10_id
     order by b8_a_b9_id, b8_a_b10_id;
/*
Tabela: lotofacil.ltf_bx_a_by_b8_a_b9_agregado_com_b8_a_b10: [FIM]
=============================================================================
*/


/*
=============================================================================
Tabela: lotofacil.ltf_bx_a_by_b8_a_b10_agregado_com_b8_a_b11: [INICIO]
Pra que serve:
     Armazena campos b8_a_b10_id e b8_a_b11_id agregados da tabela
     lotofacil.lotofacil_coluna_b
*/
Drop table if exists lotofacil.ltf_bx_a_by_b8_a_b10_agregado_com_b8_a_b11;
Create table lotofacil.ltf_bx_a_by_b8_a_b10_agregado_com_b8_a_b11(
     b8_a_b10_id numeric not null,
     b8_a_b11_id numeric not null,
     constraint ltf_bx_a_by_b8_a_b10_agregado_com_b8_a_b11_pk primary key(b8_a_b10_id, b8_a_b11_id)
);
Insert into lotofacil.ltf_bx_a_by_b8_a_b10_agregado_com_b8_a_b11 (b8_a_b10_id, b8_a_b11_id)
     Select b8_a_b10_id, b8_a_b11_id from lotofacil.lotofacil_coluna_b
     group by b8_a_b10_id, b8_a_b11_id
     order by b8_a_b10_id, b8_a_b11_id;
/*
Tabela: lotofacil.ltf_bx_a_by_b8_a_b10_agregado_com_b8_a_b11: [FIM]
=============================================================================
*/


/*
=============================================================================
Tabela: lotofacil.ltf_bx_a_by_b8_a_b11_agregado_com_b8_a_b12: [INICIO]
Pra que serve:
     Armazena campos b8_a_b11_id e b8_a_b12_id agregados da tabela
     lotofacil.lotofacil_coluna_b
*/
Drop table if exists lotofacil.ltf_bx_a_by_b8_a_b11_agregado_com_b8_a_b12;
Create table lotofacil.ltf_bx_a_by_b8_a_b11_agregado_com_b8_a_b12(
     b8_a_b11_id numeric not null,
     b8_a_b12_id numeric not null,
     constraint ltf_bx_a_by_b8_a_b11_agregado_com_b8_a_b12_pk primary key(b8_a_b11_id, b8_a_b12_id)
);
Insert into lotofacil.ltf_bx_a_by_b8_a_b11_agregado_com_b8_a_b12 (b8_a_b11_id, b8_a_b12_id)
     Select b8_a_b11_id, b8_a_b12_id from lotofacil.lotofacil_coluna_b
     group by b8_a_b11_id, b8_a_b12_id
     order by b8_a_b11_id, b8_a_b12_id;
/*
Tabela: lotofacil.ltf_bx_a_by_b8_a_b11_agregado_com_b8_a_b12: [FIM]
=============================================================================
*/


/*
=============================================================================
Tabela: lotofacil.ltf_bx_a_by_b8_a_b12_agregado_com_b8_a_b13: [INICIO]
Pra que serve:
     Armazena campos b8_a_b12_id e b8_a_b13_id agregados da tabela
     lotofacil.lotofacil_coluna_b
*/
Drop table if exists lotofacil.ltf_bx_a_by_b8_a_b12_agregado_com_b8_a_b13;
Create table lotofacil.ltf_bx_a_by_b8_a_b12_agregado_com_b8_a_b13(
     b8_a_b12_id numeric not null,
     b8_a_b13_id numeric not null,
     constraint ltf_bx_a_by_b8_a_b12_agregado_com_b8_a_b13_pk primary key(b8_a_b12_id, b8_a_b13_id)
);
Insert into lotofacil.ltf_bx_a_by_b8_a_b12_agregado_com_b8_a_b13 (b8_a_b12_id, b8_a_b13_id)
     Select b8_a_b12_id, b8_a_b13_id from lotofacil.lotofacil_coluna_b
     group by b8_a_b12_id, b8_a_b13_id
     order by b8_a_b12_id, b8_a_b13_id;
/*
Tabela: lotofacil.ltf_bx_a_by_b8_a_b12_agregado_com_b8_a_b13: [FIM]
=============================================================================
*/


/*
=============================================================================
Tabela: lotofacil.ltf_bx_a_by_b8_a_b13_agregado_com_b8_a_b14: [INICIO]
Pra que serve:
     Armazena campos b8_a_b13_id e b8_a_b14_id agregados da tabela
     lotofacil.lotofacil_coluna_b
*/
Drop table if exists lotofacil.ltf_bx_a_by_b8_a_b13_agregado_com_b8_a_b14;
Create table lotofacil.ltf_bx_a_by_b8_a_b13_agregado_com_b8_a_b14(
     b8_a_b13_id numeric not null,
     b8_a_b14_id numeric not null,
     constraint ltf_bx_a_by_b8_a_b13_agregado_com_b8_a_b14_pk primary key(b8_a_b13_id, b8_a_b14_id)
);
Insert into lotofacil.ltf_bx_a_by_b8_a_b13_agregado_com_b8_a_b14 (b8_a_b13_id, b8_a_b14_id)
     Select b8_a_b13_id, b8_a_b14_id from lotofacil.lotofacil_coluna_b
     group by b8_a_b13_id, b8_a_b14_id
     order by b8_a_b13_id, b8_a_b14_id;
/*
Tabela: lotofacil.ltf_bx_a_by_b8_a_b13_agregado_com_b8_a_b14: [FIM]
=============================================================================
*/


/*
=============================================================================
Tabela: lotofacil.ltf_bx_a_by_b8_a_b14_agregado_com_b8_a_b15: [INICIO]
Pra que serve:
     Armazena campos b8_a_b14_id e b8_a_b15_id agregados da tabela
     lotofacil.lotofacil_coluna_b
*/
Drop table if exists lotofacil.ltf_bx_a_by_b8_a_b14_agregado_com_b8_a_b15;
Create table lotofacil.ltf_bx_a_by_b8_a_b14_agregado_com_b8_a_b15(
     b8_a_b14_id numeric not null,
     b8_a_b15_id numeric not null,
     constraint ltf_bx_a_by_b8_a_b14_agregado_com_b8_a_b15_pk primary key(b8_a_b14_id, b8_a_b15_id)
);
Insert into lotofacil.ltf_bx_a_by_b8_a_b14_agregado_com_b8_a_b15 (b8_a_b14_id, b8_a_b15_id)
     Select b8_a_b14_id, b8_a_b15_id from lotofacil.lotofacil_coluna_b
     group by b8_a_b14_id, b8_a_b15_id
     order by b8_a_b14_id, b8_a_b15_id;
/*
Tabela: lotofacil.ltf_bx_a_by_b8_a_b14_agregado_com_b8_a_b15: [FIM]
=============================================================================
*/


/*
=============================================================================
Tabela: lotofacil.ltf_bx_a_by_b9_a_b9_agregado_com_b9_a_b10: [INICIO]
Pra que serve:
     Armazena campos b9_a_b9_id e b9_a_b10_id agregados da tabela
     lotofacil.lotofacil_coluna_b
*/
Drop table if exists lotofacil.ltf_bx_a_by_b9_a_b9_agregado_com_b9_a_b10;
Create table lotofacil.ltf_bx_a_by_b9_a_b9_agregado_com_b9_a_b10(
     b9_a_b9_id numeric not null,
     b9_a_b10_id numeric not null,
     constraint ltf_bx_a_by_b9_a_b9_agregado_com_b9_a_b10_pk primary key(b9_a_b9_id, b9_a_b10_id)
);
Insert into lotofacil.ltf_bx_a_by_b9_a_b9_agregado_com_b9_a_b10 (b9_a_b9_id, b9_a_b10_id)
     Select b9_a_b9_id, b9_a_b10_id from lotofacil.lotofacil_coluna_b
     group by b9_a_b9_id, b9_a_b10_id
     order by b9_a_b9_id, b9_a_b10_id;
/*
Tabela: lotofacil.ltf_bx_a_by_b9_a_b9_agregado_com_b9_a_b10: [FIM]
=============================================================================
*/


/*
=============================================================================
Tabela: lotofacil.ltf_bx_a_by_b9_a_b10_agregado_com_b9_a_b11: [INICIO]
Pra que serve:
     Armazena campos b9_a_b10_id e b9_a_b11_id agregados da tabela
     lotofacil.lotofacil_coluna_b
*/
Drop table if exists lotofacil.ltf_bx_a_by_b9_a_b10_agregado_com_b9_a_b11;
Create table lotofacil.ltf_bx_a_by_b9_a_b10_agregado_com_b9_a_b11(
     b9_a_b10_id numeric not null,
     b9_a_b11_id numeric not null,
     constraint ltf_bx_a_by_b9_a_b10_agregado_com_b9_a_b11_pk primary key(b9_a_b10_id, b9_a_b11_id)
);
Insert into lotofacil.ltf_bx_a_by_b9_a_b10_agregado_com_b9_a_b11 (b9_a_b10_id, b9_a_b11_id)
     Select b9_a_b10_id, b9_a_b11_id from lotofacil.lotofacil_coluna_b
     group by b9_a_b10_id, b9_a_b11_id
     order by b9_a_b10_id, b9_a_b11_id;
/*
Tabela: lotofacil.ltf_bx_a_by_b9_a_b10_agregado_com_b9_a_b11: [FIM]
=============================================================================
*/


/*
=============================================================================
Tabela: lotofacil.ltf_bx_a_by_b9_a_b11_agregado_com_b9_a_b12: [INICIO]
Pra que serve:
     Armazena campos b9_a_b11_id e b9_a_b12_id agregados da tabela
     lotofacil.lotofacil_coluna_b
*/
Drop table if exists lotofacil.ltf_bx_a_by_b9_a_b11_agregado_com_b9_a_b12;
Create table lotofacil.ltf_bx_a_by_b9_a_b11_agregado_com_b9_a_b12(
     b9_a_b11_id numeric not null,
     b9_a_b12_id numeric not null,
     constraint ltf_bx_a_by_b9_a_b11_agregado_com_b9_a_b12_pk primary key(b9_a_b11_id, b9_a_b12_id)
);
Insert into lotofacil.ltf_bx_a_by_b9_a_b11_agregado_com_b9_a_b12 (b9_a_b11_id, b9_a_b12_id)
     Select b9_a_b11_id, b9_a_b12_id from lotofacil.lotofacil_coluna_b
     group by b9_a_b11_id, b9_a_b12_id
     order by b9_a_b11_id, b9_a_b12_id;
/*
Tabela: lotofacil.ltf_bx_a_by_b9_a_b11_agregado_com_b9_a_b12: [FIM]
=============================================================================
*/


/*
=============================================================================
Tabela: lotofacil.ltf_bx_a_by_b9_a_b12_agregado_com_b9_a_b13: [INICIO]
Pra que serve:
     Armazena campos b9_a_b12_id e b9_a_b13_id agregados da tabela
     lotofacil.lotofacil_coluna_b
*/
Drop table if exists lotofacil.ltf_bx_a_by_b9_a_b12_agregado_com_b9_a_b13;
Create table lotofacil.ltf_bx_a_by_b9_a_b12_agregado_com_b9_a_b13(
     b9_a_b12_id numeric not null,
     b9_a_b13_id numeric not null,
     constraint ltf_bx_a_by_b9_a_b12_agregado_com_b9_a_b13_pk primary key(b9_a_b12_id, b9_a_b13_id)
);
Insert into lotofacil.ltf_bx_a_by_b9_a_b12_agregado_com_b9_a_b13 (b9_a_b12_id, b9_a_b13_id)
     Select b9_a_b12_id, b9_a_b13_id from lotofacil.lotofacil_coluna_b
     group by b9_a_b12_id, b9_a_b13_id
     order by b9_a_b12_id, b9_a_b13_id;
/*
Tabela: lotofacil.ltf_bx_a_by_b9_a_b12_agregado_com_b9_a_b13: [FIM]
=============================================================================
*/


/*
=============================================================================
Tabela: lotofacil.ltf_bx_a_by_b9_a_b13_agregado_com_b9_a_b14: [INICIO]
Pra que serve:
     Armazena campos b9_a_b13_id e b9_a_b14_id agregados da tabela
     lotofacil.lotofacil_coluna_b
*/
Drop table if exists lotofacil.ltf_bx_a_by_b9_a_b13_agregado_com_b9_a_b14;
Create table lotofacil.ltf_bx_a_by_b9_a_b13_agregado_com_b9_a_b14(
     b9_a_b13_id numeric not null,
     b9_a_b14_id numeric not null,
     constraint ltf_bx_a_by_b9_a_b13_agregado_com_b9_a_b14_pk primary key(b9_a_b13_id, b9_a_b14_id)
);
Insert into lotofacil.ltf_bx_a_by_b9_a_b13_agregado_com_b9_a_b14 (b9_a_b13_id, b9_a_b14_id)
     Select b9_a_b13_id, b9_a_b14_id from lotofacil.lotofacil_coluna_b
     group by b9_a_b13_id, b9_a_b14_id
     order by b9_a_b13_id, b9_a_b14_id;
/*
Tabela: lotofacil.ltf_bx_a_by_b9_a_b13_agregado_com_b9_a_b14: [FIM]
=============================================================================
*/


/*
=============================================================================
Tabela: lotofacil.ltf_bx_a_by_b9_a_b14_agregado_com_b9_a_b15: [INICIO]
Pra que serve:
     Armazena campos b9_a_b14_id e b9_a_b15_id agregados da tabela
     lotofacil.lotofacil_coluna_b
*/
Drop table if exists lotofacil.ltf_bx_a_by_b9_a_b14_agregado_com_b9_a_b15;
Create table lotofacil.ltf_bx_a_by_b9_a_b14_agregado_com_b9_a_b15(
     b9_a_b14_id numeric not null,
     b9_a_b15_id numeric not null,
     constraint ltf_bx_a_by_b9_a_b14_agregado_com_b9_a_b15_pk primary key(b9_a_b14_id, b9_a_b15_id)
);
Insert into lotofacil.ltf_bx_a_by_b9_a_b14_agregado_com_b9_a_b15 (b9_a_b14_id, b9_a_b15_id)
     Select b9_a_b14_id, b9_a_b15_id from lotofacil.lotofacil_coluna_b
     group by b9_a_b14_id, b9_a_b15_id
     order by b9_a_b14_id, b9_a_b15_id;
/*
Tabela: lotofacil.ltf_bx_a_by_b9_a_b14_agregado_com_b9_a_b15: [FIM]
=============================================================================
*/


/*
=============================================================================
Tabela: lotofacil.ltf_bx_a_by_b10_a_b10_agregado_com_b10_a_b11: [INICIO]
Pra que serve:
     Armazena campos b10_a_b10_id e b10_a_b11_id agregados da tabela
     lotofacil.lotofacil_coluna_b
*/
Drop table if exists lotofacil.ltf_bx_a_by_b10_a_b10_agregado_com_b10_a_b11;
Create table lotofacil.ltf_bx_a_by_b10_a_b10_agregado_com_b10_a_b11(
     b10_a_b10_id numeric not null,
     b10_a_b11_id numeric not null,
     constraint ltf_bx_a_by_b10_a_b10_agregado_com_b10_a_b11_pk primary key(b10_a_b10_id, b10_a_b11_id)
);
Insert into lotofacil.ltf_bx_a_by_b10_a_b10_agregado_com_b10_a_b11 (b10_a_b10_id, b10_a_b11_id)
     Select b10_a_b10_id, b10_a_b11_id from lotofacil.lotofacil_coluna_b
     group by b10_a_b10_id, b10_a_b11_id
     order by b10_a_b10_id, b10_a_b11_id;
/*
Tabela: lotofacil.ltf_bx_a_by_b10_a_b10_agregado_com_b10_a_b11: [FIM]
=============================================================================
*/


/*
=============================================================================
Tabela: lotofacil.ltf_bx_a_by_b10_a_b11_agregado_com_b10_a_b12: [INICIO]
Pra que serve:
     Armazena campos b10_a_b11_id e b10_a_b12_id agregados da tabela
     lotofacil.lotofacil_coluna_b
*/
Drop table if exists lotofacil.ltf_bx_a_by_b10_a_b11_agregado_com_b10_a_b12;
Create table lotofacil.ltf_bx_a_by_b10_a_b11_agregado_com_b10_a_b12(
     b10_a_b11_id numeric not null,
     b10_a_b12_id numeric not null,
     constraint ltf_bx_a_by_b10_a_b11_agregado_com_b10_a_b12_pk primary key(b10_a_b11_id, b10_a_b12_id)
);
Insert into lotofacil.ltf_bx_a_by_b10_a_b11_agregado_com_b10_a_b12 (b10_a_b11_id, b10_a_b12_id)
     Select b10_a_b11_id, b10_a_b12_id from lotofacil.lotofacil_coluna_b
     group by b10_a_b11_id, b10_a_b12_id
     order by b10_a_b11_id, b10_a_b12_id;
/*
Tabela: lotofacil.ltf_bx_a_by_b10_a_b11_agregado_com_b10_a_b12: [FIM]
=============================================================================
*/


/*
=============================================================================
Tabela: lotofacil.ltf_bx_a_by_b10_a_b12_agregado_com_b10_a_b13: [INICIO]
Pra que serve:
     Armazena campos b10_a_b12_id e b10_a_b13_id agregados da tabela
     lotofacil.lotofacil_coluna_b
*/
Drop table if exists lotofacil.ltf_bx_a_by_b10_a_b12_agregado_com_b10_a_b13;
Create table lotofacil.ltf_bx_a_by_b10_a_b12_agregado_com_b10_a_b13(
     b10_a_b12_id numeric not null,
     b10_a_b13_id numeric not null,
     constraint ltf_bx_a_by_b10_a_b12_agregado_com_b10_a_b13_pk primary key(b10_a_b12_id, b10_a_b13_id)
);
Insert into lotofacil.ltf_bx_a_by_b10_a_b12_agregado_com_b10_a_b13 (b10_a_b12_id, b10_a_b13_id)
     Select b10_a_b12_id, b10_a_b13_id from lotofacil.lotofacil_coluna_b
     group by b10_a_b12_id, b10_a_b13_id
     order by b10_a_b12_id, b10_a_b13_id;
/*
Tabela: lotofacil.ltf_bx_a_by_b10_a_b12_agregado_com_b10_a_b13: [FIM]
=============================================================================
*/


/*
=============================================================================
Tabela: lotofacil.ltf_bx_a_by_b10_a_b13_agregado_com_b10_a_b14: [INICIO]
Pra que serve:
     Armazena campos b10_a_b13_id e b10_a_b14_id agregados da tabela
     lotofacil.lotofacil_coluna_b
*/
Drop table if exists lotofacil.ltf_bx_a_by_b10_a_b13_agregado_com_b10_a_b14;
Create table lotofacil.ltf_bx_a_by_b10_a_b13_agregado_com_b10_a_b14(
     b10_a_b13_id numeric not null,
     b10_a_b14_id numeric not null,
     constraint ltf_bx_a_by_b10_a_b13_agregado_com_b10_a_b14_pk primary key(b10_a_b13_id, b10_a_b14_id)
);
Insert into lotofacil.ltf_bx_a_by_b10_a_b13_agregado_com_b10_a_b14 (b10_a_b13_id, b10_a_b14_id)
     Select b10_a_b13_id, b10_a_b14_id from lotofacil.lotofacil_coluna_b
     group by b10_a_b13_id, b10_a_b14_id
     order by b10_a_b13_id, b10_a_b14_id;
/*
Tabela: lotofacil.ltf_bx_a_by_b10_a_b13_agregado_com_b10_a_b14: [FIM]
=============================================================================
*/


/*
=============================================================================
Tabela: lotofacil.ltf_bx_a_by_b10_a_b14_agregado_com_b10_a_b15: [INICIO]
Pra que serve:
     Armazena campos b10_a_b14_id e b10_a_b15_id agregados da tabela
     lotofacil.lotofacil_coluna_b
*/
Drop table if exists lotofacil.ltf_bx_a_by_b10_a_b14_agregado_com_b10_a_b15;
Create table lotofacil.ltf_bx_a_by_b10_a_b14_agregado_com_b10_a_b15(
     b10_a_b14_id numeric not null,
     b10_a_b15_id numeric not null,
     constraint ltf_bx_a_by_b10_a_b14_agregado_com_b10_a_b15_pk primary key(b10_a_b14_id, b10_a_b15_id)
);
Insert into lotofacil.ltf_bx_a_by_b10_a_b14_agregado_com_b10_a_b15 (b10_a_b14_id, b10_a_b15_id)
     Select b10_a_b14_id, b10_a_b15_id from lotofacil.lotofacil_coluna_b
     group by b10_a_b14_id, b10_a_b15_id
     order by b10_a_b14_id, b10_a_b15_id;
/*
Tabela: lotofacil.ltf_bx_a_by_b10_a_b14_agregado_com_b10_a_b15: [FIM]
=============================================================================
*/


/*
=============================================================================
Tabela: lotofacil.ltf_bx_a_by_b11_a_b11_agregado_com_b11_a_b12: [INICIO]
Pra que serve:
     Armazena campos b11_a_b11_id e b11_a_b12_id agregados da tabela
     lotofacil.lotofacil_coluna_b
*/
Drop table if exists lotofacil.ltf_bx_a_by_b11_a_b11_agregado_com_b11_a_b12;
Create table lotofacil.ltf_bx_a_by_b11_a_b11_agregado_com_b11_a_b12(
     b11_a_b11_id numeric not null,
     b11_a_b12_id numeric not null,
     constraint ltf_bx_a_by_b11_a_b11_agregado_com_b11_a_b12_pk primary key(b11_a_b11_id, b11_a_b12_id)
);
Insert into lotofacil.ltf_bx_a_by_b11_a_b11_agregado_com_b11_a_b12 (b11_a_b11_id, b11_a_b12_id)
     Select b11_a_b11_id, b11_a_b12_id from lotofacil.lotofacil_coluna_b
     group by b11_a_b11_id, b11_a_b12_id
     order by b11_a_b11_id, b11_a_b12_id;
/*
Tabela: lotofacil.ltf_bx_a_by_b11_a_b11_agregado_com_b11_a_b12: [FIM]
=============================================================================
*/


/*
=============================================================================
Tabela: lotofacil.ltf_bx_a_by_b11_a_b12_agregado_com_b11_a_b13: [INICIO]
Pra que serve:
     Armazena campos b11_a_b12_id e b11_a_b13_id agregados da tabela
     lotofacil.lotofacil_coluna_b
*/
Drop table if exists lotofacil.ltf_bx_a_by_b11_a_b12_agregado_com_b11_a_b13;
Create table lotofacil.ltf_bx_a_by_b11_a_b12_agregado_com_b11_a_b13(
     b11_a_b12_id numeric not null,
     b11_a_b13_id numeric not null,
     constraint ltf_bx_a_by_b11_a_b12_agregado_com_b11_a_b13_pk primary key(b11_a_b12_id, b11_a_b13_id)
);
Insert into lotofacil.ltf_bx_a_by_b11_a_b12_agregado_com_b11_a_b13 (b11_a_b12_id, b11_a_b13_id)
     Select b11_a_b12_id, b11_a_b13_id from lotofacil.lotofacil_coluna_b
     group by b11_a_b12_id, b11_a_b13_id
     order by b11_a_b12_id, b11_a_b13_id;
/*
Tabela: lotofacil.ltf_bx_a_by_b11_a_b12_agregado_com_b11_a_b13: [FIM]
=============================================================================
*/


/*
=============================================================================
Tabela: lotofacil.ltf_bx_a_by_b11_a_b13_agregado_com_b11_a_b14: [INICIO]
Pra que serve:
     Armazena campos b11_a_b13_id e b11_a_b14_id agregados da tabela
     lotofacil.lotofacil_coluna_b
*/
Drop table if exists lotofacil.ltf_bx_a_by_b11_a_b13_agregado_com_b11_a_b14;
Create table lotofacil.ltf_bx_a_by_b11_a_b13_agregado_com_b11_a_b14(
     b11_a_b13_id numeric not null,
     b11_a_b14_id numeric not null,
     constraint ltf_bx_a_by_b11_a_b13_agregado_com_b11_a_b14_pk primary key(b11_a_b13_id, b11_a_b14_id)
);
Insert into lotofacil.ltf_bx_a_by_b11_a_b13_agregado_com_b11_a_b14 (b11_a_b13_id, b11_a_b14_id)
     Select b11_a_b13_id, b11_a_b14_id from lotofacil.lotofacil_coluna_b
     group by b11_a_b13_id, b11_a_b14_id
     order by b11_a_b13_id, b11_a_b14_id;
/*
Tabela: lotofacil.ltf_bx_a_by_b11_a_b13_agregado_com_b11_a_b14: [FIM]
=============================================================================
*/


/*
=============================================================================
Tabela: lotofacil.ltf_bx_a_by_b11_a_b14_agregado_com_b11_a_b15: [INICIO]
Pra que serve:
     Armazena campos b11_a_b14_id e b11_a_b15_id agregados da tabela
     lotofacil.lotofacil_coluna_b
*/
Drop table if exists lotofacil.ltf_bx_a_by_b11_a_b14_agregado_com_b11_a_b15;
Create table lotofacil.ltf_bx_a_by_b11_a_b14_agregado_com_b11_a_b15(
     b11_a_b14_id numeric not null,
     b11_a_b15_id numeric not null,
     constraint ltf_bx_a_by_b11_a_b14_agregado_com_b11_a_b15_pk primary key(b11_a_b14_id, b11_a_b15_id)
);
Insert into lotofacil.ltf_bx_a_by_b11_a_b14_agregado_com_b11_a_b15 (b11_a_b14_id, b11_a_b15_id)
     Select b11_a_b14_id, b11_a_b15_id from lotofacil.lotofacil_coluna_b
     group by b11_a_b14_id, b11_a_b15_id
     order by b11_a_b14_id, b11_a_b15_id;
/*
Tabela: lotofacil.ltf_bx_a_by_b11_a_b14_agregado_com_b11_a_b15: [FIM]
=============================================================================
*/


/*
=============================================================================
Tabela: lotofacil.ltf_bx_a_by_b12_a_b12_agregado_com_b12_a_b13: [INICIO]
Pra que serve:
     Armazena campos b12_a_b12_id e b12_a_b13_id agregados da tabela
     lotofacil.lotofacil_coluna_b
*/
Drop table if exists lotofacil.ltf_bx_a_by_b12_a_b12_agregado_com_b12_a_b13;
Create table lotofacil.ltf_bx_a_by_b12_a_b12_agregado_com_b12_a_b13(
     b12_a_b12_id numeric not null,
     b12_a_b13_id numeric not null,
     constraint ltf_bx_a_by_b12_a_b12_agregado_com_b12_a_b13_pk primary key(b12_a_b12_id, b12_a_b13_id)
);
Insert into lotofacil.ltf_bx_a_by_b12_a_b12_agregado_com_b12_a_b13 (b12_a_b12_id, b12_a_b13_id)
     Select b12_a_b12_id, b12_a_b13_id from lotofacil.lotofacil_coluna_b
     group by b12_a_b12_id, b12_a_b13_id
     order by b12_a_b12_id, b12_a_b13_id;
/*
Tabela: lotofacil.ltf_bx_a_by_b12_a_b12_agregado_com_b12_a_b13: [FIM]
=============================================================================
*/


/*
=============================================================================
Tabela: lotofacil.ltf_bx_a_by_b12_a_b13_agregado_com_b12_a_b14: [INICIO]
Pra que serve:
     Armazena campos b12_a_b13_id e b12_a_b14_id agregados da tabela
     lotofacil.lotofacil_coluna_b
*/
Drop table if exists lotofacil.ltf_bx_a_by_b12_a_b13_agregado_com_b12_a_b14;
Create table lotofacil.ltf_bx_a_by_b12_a_b13_agregado_com_b12_a_b14(
     b12_a_b13_id numeric not null,
     b12_a_b14_id numeric not null,
     constraint ltf_bx_a_by_b12_a_b13_agregado_com_b12_a_b14_pk primary key(b12_a_b13_id, b12_a_b14_id)
);
Insert into lotofacil.ltf_bx_a_by_b12_a_b13_agregado_com_b12_a_b14 (b12_a_b13_id, b12_a_b14_id)
     Select b12_a_b13_id, b12_a_b14_id from lotofacil.lotofacil_coluna_b
     group by b12_a_b13_id, b12_a_b14_id
     order by b12_a_b13_id, b12_a_b14_id;
/*
Tabela: lotofacil.ltf_bx_a_by_b12_a_b13_agregado_com_b12_a_b14: [FIM]
=============================================================================
*/


/*
=============================================================================
Tabela: lotofacil.ltf_bx_a_by_b12_a_b14_agregado_com_b12_a_b15: [INICIO]
Pra que serve:
     Armazena campos b12_a_b14_id e b12_a_b15_id agregados da tabela
     lotofacil.lotofacil_coluna_b
*/
Drop table if exists lotofacil.ltf_bx_a_by_b12_a_b14_agregado_com_b12_a_b15;
Create table lotofacil.ltf_bx_a_by_b12_a_b14_agregado_com_b12_a_b15(
     b12_a_b14_id numeric not null,
     b12_a_b15_id numeric not null,
     constraint ltf_bx_a_by_b12_a_b14_agregado_com_b12_a_b15_pk primary key(b12_a_b14_id, b12_a_b15_id)
);
Insert into lotofacil.ltf_bx_a_by_b12_a_b14_agregado_com_b12_a_b15 (b12_a_b14_id, b12_a_b15_id)
     Select b12_a_b14_id, b12_a_b15_id from lotofacil.lotofacil_coluna_b
     group by b12_a_b14_id, b12_a_b15_id
     order by b12_a_b14_id, b12_a_b15_id;
/*
Tabela: lotofacil.ltf_bx_a_by_b12_a_b14_agregado_com_b12_a_b15: [FIM]
=============================================================================
*/


/*
=============================================================================
Tabela: lotofacil.ltf_bx_a_by_b13_a_b13_agregado_com_b13_a_b14: [INICIO]
Pra que serve:
     Armazena campos b13_a_b13_id e b13_a_b14_id agregados da tabela
     lotofacil.lotofacil_coluna_b
*/
Drop table if exists lotofacil.ltf_bx_a_by_b13_a_b13_agregado_com_b13_a_b14;
Create table lotofacil.ltf_bx_a_by_b13_a_b13_agregado_com_b13_a_b14(
     b13_a_b13_id numeric not null,
     b13_a_b14_id numeric not null,
     constraint ltf_bx_a_by_b13_a_b13_agregado_com_b13_a_b14_pk primary key(b13_a_b13_id, b13_a_b14_id)
);
Insert into lotofacil.ltf_bx_a_by_b13_a_b13_agregado_com_b13_a_b14 (b13_a_b13_id, b13_a_b14_id)
     Select b13_a_b13_id, b13_a_b14_id from lotofacil.lotofacil_coluna_b
     group by b13_a_b13_id, b13_a_b14_id
     order by b13_a_b13_id, b13_a_b14_id;
/*
Tabela: lotofacil.ltf_bx_a_by_b13_a_b13_agregado_com_b13_a_b14: [FIM]
=============================================================================
*/


/*
=============================================================================
Tabela: lotofacil.ltf_bx_a_by_b13_a_b14_agregado_com_b13_a_b15: [INICIO]
Pra que serve:
     Armazena campos b13_a_b14_id e b13_a_b15_id agregados da tabela
     lotofacil.lotofacil_coluna_b
*/
Drop table if exists lotofacil.ltf_bx_a_by_b13_a_b14_agregado_com_b13_a_b15;
Create table lotofacil.ltf_bx_a_by_b13_a_b14_agregado_com_b13_a_b15(
     b13_a_b14_id numeric not null,
     b13_a_b15_id numeric not null,
     constraint ltf_bx_a_by_b13_a_b14_agregado_com_b13_a_b15_pk primary key(b13_a_b14_id, b13_a_b15_id)
);
Insert into lotofacil.ltf_bx_a_by_b13_a_b14_agregado_com_b13_a_b15 (b13_a_b14_id, b13_a_b15_id)
     Select b13_a_b14_id, b13_a_b15_id from lotofacil.lotofacil_coluna_b
     group by b13_a_b14_id, b13_a_b15_id
     order by b13_a_b14_id, b13_a_b15_id;
/*
Tabela: lotofacil.ltf_bx_a_by_b13_a_b14_agregado_com_b13_a_b15: [FIM]
=============================================================================
*/


/*
=============================================================================
Tabela: lotofacil.ltf_bx_a_by_b14_a_b14_agregado_com_b14_a_b15: [INICIO]
Pra que serve:
     Armazena campos b14_a_b14_id e b14_a_b15_id agregados da tabela
     lotofacil.lotofacil_coluna_b
*/
Drop table if exists lotofacil.ltf_bx_a_by_b14_a_b14_agregado_com_b14_a_b15;
Create table lotofacil.ltf_bx_a_by_b14_a_b14_agregado_com_b14_a_b15(
     b14_a_b14_id numeric not null,
     b14_a_b15_id numeric not null,
     constraint ltf_bx_a_by_b14_a_b14_agregado_com_b14_a_b15_pk primary key(b14_a_b14_id, b14_a_b15_id)
);
Insert into lotofacil.ltf_bx_a_by_b14_a_b14_agregado_com_b14_a_b15 (b14_a_b14_id, b14_a_b15_id)
     Select b14_a_b14_id, b14_a_b15_id from lotofacil.lotofacil_coluna_b
     group by b14_a_b14_id, b14_a_b15_id
     order by b14_a_b14_id, b14_a_b15_id;
/*
Tabela: lotofacil.ltf_bx_a_by_b14_a_b14_agregado_com_b14_a_b15: [FIM]
=============================================================================
*/


