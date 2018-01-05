/**
  Tabela que armazena todas as combinações válidas da quina.
  Na quina, joga-se de 5 a 15 números e são sorteados 5 números.
  Há:
      24.040.016 combinações com 5 números
      300.500.200 combinações com 6 números
      3.176.716.400 combinações com 7 números.
      28.987.537.150 combinações com 8 números.
      231.900.297.200 combinações com 9 números.
      1.646.492.110.120 combinações com 10 números.
      10.477.677.064.400 combinações com 11 números.
      60.246.643.120.300 combinações com 12 números.
      315.136.287.090.800 combinações com 13 números.
      1.508.152.231.077.400 combinações com 14 números.
      6.635.869.816.740.560 combinações com 15 números.

  Iremos implementar no momento somente combinações com 5, 6, e 7 números.
  A coluna quina_id, é um identificador pra cada combinação possível na quina, primeiro, virão
  todas as combinações de 5 números, depois, de 7 números, depois de 8 números.

 */

drop table if exists ltk_quina.quina_num;
CREATE TABLE ltk_quina.quina_num (
  quina_id         NUMERIC      NOT NULL,
  quina_qt         numeric         NOT NULL check (quina_qt >= 5 and quina_qt <= 7),

  num_1                    NUMERIC DEFAULT 0 check (num_1 in (0, 1)),
  num_2                    NUMERIC DEFAULT 0 check (num_2 in (0, 1)),
  num_3                    NUMERIC DEFAULT 0 check (num_3 in (0, 1)),
  num_4                    NUMERIC DEFAULT 0 check (num_4 in (0, 1)),
  num_5                    NUMERIC DEFAULT 0 check (num_5 in (0, 1)),
  num_6                    NUMERIC DEFAULT 0 check (num_6 in (0, 1)),
  num_7                    NUMERIC DEFAULT 0 check (num_7 in (0, 1)),
  num_8                    NUMERIC DEFAULT 0 check (num_8 in (0, 1)),
  num_9                    NUMERIC DEFAULT 0 check (num_9 in (0, 1)),
  num_10                   NUMERIC DEFAULT 0 check (num_10 in (0, 1)),
  num_11                   NUMERIC DEFAULT 0 check (num_11 in (0, 1)),
  num_12                   NUMERIC DEFAULT 0 check (num_12 in (0, 1)),
  num_13                   NUMERIC DEFAULT 0 check (num_13 in (0, 1)),
  num_14                   NUMERIC DEFAULT 0 check (num_14 in (0, 1)),
  num_15                   NUMERIC DEFAULT 0 check (num_15 in (0, 1)),
  num_16                   NUMERIC DEFAULT 0 check (num_16 in (0, 1)),
  num_17                   NUMERIC DEFAULT 0 check (num_17 in (0, 1)),
  num_18                   NUMERIC DEFAULT 0 check (num_18 in (0, 1)),
  num_19                   NUMERIC DEFAULT 0 check (num_19 in (0, 1)),
  num_20                   NUMERIC DEFAULT 0 check (num_20 in (0, 1)),
  num_21                   NUMERIC DEFAULT 0 check (num_21 in (0, 1)),
  num_22                   NUMERIC DEFAULT 0 check (num_22 in (0, 1)),
  num_23                   NUMERIC DEFAULT 0 check (num_23 in (0, 1)),
  num_24                   NUMERIC DEFAULT 0 check (num_24 in (0, 1)),
  num_25                   NUMERIC DEFAULT 0 check (num_25 in (0, 1)),
  num_26                   NUMERIC DEFAULT 0 check (num_26 in (0, 1)),
  num_27                   NUMERIC DEFAULT 0 check (num_27 in (0, 1)),
  num_28                   NUMERIC DEFAULT 0 check (num_28 in (0, 1)),
  num_29                   NUMERIC DEFAULT 0 check (num_29 in (0, 1)),
  num_30                   NUMERIC DEFAULT 0 check (num_30 in (0, 1)),
  num_31                   NUMERIC DEFAULT 0 check (num_31 in (0, 1)),
  num_32                   NUMERIC DEFAULT 0 check (num_32 in (0, 1)),
  num_33                   NUMERIC DEFAULT 0 check (num_33 in (0, 1)),
  num_34                   NUMERIC DEFAULT 0 check (num_34 in (0, 1)),
  num_35                   NUMERIC DEFAULT 0 check (num_35 in (0, 1)),
  num_36                   NUMERIC DEFAULT 0 check (num_36 in (0, 1)),
  num_37                   NUMERIC DEFAULT 0 check (num_37 in (0, 1)),
  num_38                   NUMERIC DEFAULT 0 check (num_38 in (0, 1)),
  num_39                   NUMERIC DEFAULT 0 check (num_39 in (0, 1)),
  num_40                   NUMERIC DEFAULT 0 check (num_40 in (0, 1)),
  num_41                   NUMERIC DEFAULT 0 check (num_41 in (0, 1)),
  num_42                   NUMERIC DEFAULT 0 check (num_42 in (0, 1)),
  num_43                   NUMERIC DEFAULT 0 check (num_43 in (0, 1)),
  num_44                   NUMERIC DEFAULT 0 check (num_44 in (0, 1)),
  num_45                   NUMERIC DEFAULT 0 check (num_45 in (0, 1)),
  num_46                   NUMERIC DEFAULT 0 check (num_46 in (0, 1)),
  num_47                   NUMERIC DEFAULT 0 check (num_47 in (0, 1)),
  num_48                   NUMERIC DEFAULT 0 check (num_48 in (0, 1)),
  num_49                   NUMERIC DEFAULT 0 check (num_49 in (0, 1)),
  num_50                   NUMERIC DEFAULT 0 check (num_50 in (0, 1)),
  num_51                   NUMERIC DEFAULT 0 check (num_51 in (0, 1)),
  num_52                   NUMERIC DEFAULT 0 check (num_52 in (0, 1)),
  num_53                   NUMERIC DEFAULT 0 check (num_53 in (0, 1)),
  num_54                   NUMERIC DEFAULT 0 check (num_54 in (0, 1)),
  num_55                   NUMERIC DEFAULT 0 check (num_55 in (0, 1)),
  num_56                   NUMERIC DEFAULT 0 check (num_56 in (0, 1)),
  num_57                   NUMERIC DEFAULT 0 check (num_57 in (0, 1)),
  num_58                   NUMERIC DEFAULT 0 check (num_58 in (0, 1)),
  num_59                   NUMERIC DEFAULT 0 check (num_59 in (0, 1)),
  num_60                   NUMERIC DEFAULT 0 check (num_60 in (0, 1)),
  num_61                   NUMERIC DEFAULT 0 check (num_61 in (0, 1)),
  num_62                   NUMERIC DEFAULT 0 check (num_62 in (0, 1)),
  num_63                   NUMERIC DEFAULT 0 check (num_63 in (0, 1)),
  num_64                   NUMERIC DEFAULT 0 check (num_64 in (0, 1)),
  num_65                   NUMERIC DEFAULT 0 check (num_65 in (0, 1)),
  num_66                   NUMERIC DEFAULT 0 check (num_66 in (0, 1)),
  num_67                   NUMERIC DEFAULT 0 check (num_67 in (0, 1)),
  num_68                   NUMERIC DEFAULT 0 check (num_68 in (0, 1)),
  num_69                   NUMERIC DEFAULT 0 check (num_69 in (0, 1)),
  num_70                   NUMERIC DEFAULT 0 check (num_70 in (0, 1)),
  num_71                   NUMERIC DEFAULT 0 check (num_71 in (0, 1)),
  num_72                   NUMERIC DEFAULT 0 check (num_72 in (0, 1)),
  num_73                   NUMERIC DEFAULT 0 check (num_73 in (0, 1)),
  num_74                   NUMERIC DEFAULT 0 check (num_74 in (0, 1)),
  num_75                   NUMERIC DEFAULT 0 check (num_75 in (0, 1)),
  num_76                   NUMERIC DEFAULT 0 check (num_76 in (0, 1)),
  num_77                   NUMERIC DEFAULT 0 check (num_77 in (0, 1)),
  num_78                   NUMERIC DEFAULT 0 check (num_78 in (0, 1)),
  num_79                   NUMERIC DEFAULT 0 check (num_79 in (0, 1)),
  num_80                   NUMERIC DEFAULT 0 check (num_80 in (0, 1)),
  
  constraint quina_chk_1 check (
  num_1  + num_2   + num_3   + num_4   + num_5   + num_6   + num_7   + num_8   + num_9   + num_10 +
  num_11 + num_12  + num_13  + num_14  + num_15  + num_16  + num_17  + num_18  + num_19  + num_20 +
  num_21 + num_22  + num_23  + num_24  + num_25  + num_26  + num_27  + num_28  + num_29  + num_30 +
  num_31 + num_32  + num_33  + num_34  + num_35  + num_36  + num_37  + num_38  + num_39  + num_40 +
  num_41 + num_42  + num_43  + num_44  + num_45  + num_46  + num_47  + num_48  + num_49  + num_50 +
  num_51 + num_52  + num_53  + num_54  + num_55  + num_56  + num_57  + num_58  + num_59  + num_60 +
  num_61 + num_62  + num_63  + num_64  + num_65  + num_66  + num_67  + num_68  + num_69  + num_70 +
  num_71 + num_72  + num_73  + num_74  + num_75  + num_76  + num_77  + num_78  + num_79  + num_80 = quina_qt),

  /*
  constraint quina_unk unique (  
    num_1  , num_2   , num_3   , num_4   , num_5   , num_6   , num_7   , num_8   , num_9   , num_10 ,
    num_11 , num_12  , num_13  , num_14  , num_15  , num_16  , num_17  , num_18  , num_19  , num_20 ,
    num_21 , num_22  , num_23  , num_24  , num_25  , num_26  , num_27  , num_28  , num_29  , num_30 ,
    num_31 , num_32  , num_33  , num_34  , num_35  , num_36  , num_37  , num_38  , num_39  , num_40 ,
    num_41 , num_42  , num_43  , num_44  , num_45  , num_46  , num_47  , num_48  , num_49  , num_50 ,
    num_51 , num_52  , num_53  , num_54  , num_55  , num_56  , num_57  , num_58  , num_59  , num_60 ,
    num_61 , num_62  , num_63  , num_64  , num_65  , num_66  , num_67  , num_68  , num_69  , num_70 ,
    num_71 , num_72  , num_73  , num_74  , num_75  , num_76  , num_77  , num_78  , num_79  , num_80),
    */

  constraint quina_pk primary key (quina_id)
);
create index quina_num_idx_0 on ltk_quina.quina_num(quina_id);
create index quina_num_idx_1 on ltk_quina.quina_num(num_1);
create index quina_num_idx_2 on ltk_quina.quina_num(num_2);
create index quina_num_idx_3 on ltk_quina.quina_num(num_3);
create index quina_num_idx_4 on ltk_quina.quina_num(num_4);
create index quina_num_idx_5 on ltk_quina.quina_num(num_5);
create index quina_num_idx_6 on ltk_quina.quina_num(num_6);
create index quina_num_idx_7 on ltk_quina.quina_num(num_7);
create index quina_num_idx_8 on ltk_quina.quina_num(num_8);
create index quina_num_idx_9 on ltk_quina.quina_num(num_9);
create index quina_num_idx_10 on ltk_quina.quina_num(num_10);
create index quina_num_idx_11 on ltk_quina.quina_num(num_11);
create index quina_num_idx_12 on ltk_quina.quina_num(num_12);
create index quina_num_idx_13 on ltk_quina.quina_num(num_13);
create index quina_num_idx_14 on ltk_quina.quina_num(num_14);
create index quina_num_idx_15 on ltk_quina.quina_num(num_15);
create index quina_num_idx_16 on ltk_quina.quina_num(num_16);
create index quina_num_idx_17 on ltk_quina.quina_num(num_17);
create index quina_num_idx_18 on ltk_quina.quina_num(num_18);
create index quina_num_idx_19 on ltk_quina.quina_num(num_19);
create index quina_num_idx_20 on ltk_quina.quina_num(num_20);
create index quina_num_idx_21 on ltk_quina.quina_num(num_21);
create index quina_num_idx_22 on ltk_quina.quina_num(num_22);
create index quina_num_idx_23 on ltk_quina.quina_num(num_23);
create index quina_num_idx_24 on ltk_quina.quina_num(num_24);
create index quina_num_idx_25 on ltk_quina.quina_num(num_25);
create index quina_num_idx_26 on ltk_quina.quina_num(num_26);
create index quina_num_idx_27 on ltk_quina.quina_num(num_27);
create index quina_num_idx_28 on ltk_quina.quina_num(num_28);
create index quina_num_idx_29 on ltk_quina.quina_num(num_29);
create index quina_num_idx_30 on ltk_quina.quina_num(num_30);
create index quina_num_idx_31 on ltk_quina.quina_num(num_31);
create index quina_num_idx_32 on ltk_quina.quina_num(num_32);
create index quina_num_idx_33 on ltk_quina.quina_num(num_33);
create index quina_num_idx_34 on ltk_quina.quina_num(num_34);
create index quina_num_idx_35 on ltk_quina.quina_num(num_35);
create index quina_num_idx_36 on ltk_quina.quina_num(num_36);
create index quina_num_idx_37 on ltk_quina.quina_num(num_37);
create index quina_num_idx_38 on ltk_quina.quina_num(num_38);
create index quina_num_idx_39 on ltk_quina.quina_num(num_39);
create index quina_num_idx_40 on ltk_quina.quina_num(num_40);
create index quina_num_idx_41 on ltk_quina.quina_num(num_41);
create index quina_num_idx_42 on ltk_quina.quina_num(num_42);
create index quina_num_idx_43 on ltk_quina.quina_num(num_43);
create index quina_num_idx_44 on ltk_quina.quina_num(num_44);
create index quina_num_idx_45 on ltk_quina.quina_num(num_45);
create index quina_num_idx_46 on ltk_quina.quina_num(num_46);
create index quina_num_idx_47 on ltk_quina.quina_num(num_47);
create index quina_num_idx_48 on ltk_quina.quina_num(num_48);
create index quina_num_idx_49 on ltk_quina.quina_num(num_49);
create index quina_num_idx_50 on ltk_quina.quina_num(num_50);
create index quina_num_idx_51 on ltk_quina.quina_num(num_51);
create index quina_num_idx_52 on ltk_quina.quina_num(num_52);
create index quina_num_idx_53 on ltk_quina.quina_num(num_53);
create index quina_num_idx_54 on ltk_quina.quina_num(num_54);
create index quina_num_idx_55 on ltk_quina.quina_num(num_55);
create index quina_num_idx_56 on ltk_quina.quina_num(num_56);
create index quina_num_idx_57 on ltk_quina.quina_num(num_57);
create index quina_num_idx_58 on ltk_quina.quina_num(num_58);
create index quina_num_idx_59 on ltk_quina.quina_num(num_59);
create index quina_num_idx_60 on ltk_quina.quina_num(num_60);
create index quina_num_idx_61 on ltk_quina.quina_num(num_61);
create index quina_num_idx_62 on ltk_quina.quina_num(num_62);
create index quina_num_idx_63 on ltk_quina.quina_num(num_63);
create index quina_num_idx_64 on ltk_quina.quina_num(num_64);
create index quina_num_idx_65 on ltk_quina.quina_num(num_65);
create index quina_num_idx_66 on ltk_quina.quina_num(num_66);
create index quina_num_idx_67 on ltk_quina.quina_num(num_67);
create index quina_num_idx_68 on ltk_quina.quina_num(num_68);
create index quina_num_idx_69 on ltk_quina.quina_num(num_69);
create index quina_num_idx_70 on ltk_quina.quina_num(num_70);
create index quina_num_idx_71 on ltk_quina.quina_num(num_71);
create index quina_num_idx_72 on ltk_quina.quina_num(num_72);
create index quina_num_idx_73 on ltk_quina.quina_num(num_73);
create index quina_num_idx_74 on ltk_quina.quina_num(num_74);
create index quina_num_idx_75 on ltk_quina.quina_num(num_75);
create index quina_num_idx_76 on ltk_quina.quina_num(num_76);
create index quina_num_idx_77 on ltk_quina.quina_num(num_77);
create index quina_num_idx_78 on ltk_quina.quina_num(num_78);
create index quina_num_idx_79 on ltk_quina.quina_num(num_79);
create index quina_num_idx_80 on ltk_quina.quina_num(num_80);





/**
  Iremos implementar até quina de 7 números!!!.
 */
drop table if exists ltk_quina.quina_bolas;
CREATE TABLE ltk_quina.quina_bolas (
  quina_id NUMERIC NOT NULL,
  quina_qt NUMERIC NOT NULL CHECK (quina_qt >= 5 AND quina_qt <= 7),

  b1       NUMERIC NOT NULL,
  b2       NUMERIC NOT NULL,
  b3       NUMERIC NOT NULL,
  b4       NUMERIC NOT NULL,
  b5       NUMERIC NOT NULL,
  b6       NUMERIC NULL,
  b7       NUMERIC NULL,

  /*
    Não será implementado acima de 7 números.
   */
  /*
  b8 numeric null,
  b9 numeric null,
  b10 numeric NULL,
  b11 numeric null,
  b12 numeric null,
  b13 numeric null,
  b14 numeric null,
  b15 numeric null,
  */

  CONSTRAINT quina_bolas_unk UNIQUE (b1, b2, b3, b4, b5),
  CONSTRAINT quina_bolas_fk FOREIGN KEY (quina_id) REFERENCES ltk_quina.quina_num (quina_id)
  ON UPDATE CASCADE ON DELETE CASCADE,
  CONSTRAINT quina_bolas_pk PRIMARY KEY (quina_id)
);
create index quina_bolas_idx_1 on ltk_quina.quina_bolas(b1);
create index quina_bolas_idx_2 on ltk_quina.quina_bolas(b2);
create index quina_bolas_idx_3 on ltk_quina.quina_bolas(b3);
create index quina_bolas_idx_4 on ltk_quina.quina_bolas(b4);
create index quina_bolas_idx_5 on ltk_quina.quina_bolas(b5);
create index quina_bolas_idx_6 on ltk_quina.quina_bolas(b6);
create index quina_bolas_idx_7 on ltk_quina.quina_bolas(b7);
create index quina_bolas_idx_8 on ltk_quina.quina_bolas(b1, b2, b3, b4, b5);
create index quina_bolas_idx_9 on ltk_quina.quina_bolas(quina_id, b1, b2, b3, b4, b5);
reindex TABLE ltk_quina.quina_bolas;

drop table if exists ltk_quina.quina_num_bolas;
create table ltk_quina.quina_num_bolas(
  quina_seq numeric not null primary key,
  quina_id numeric not null,
  quina_qt numeric not null check(quina_qt IN (5)),
  bola numeric not null check (bola >= 1 and bola <= 80),
  constraint quina_num_bola_UNK unique (quina_id, quina_qt, bola)
);
create index quina_num_bolas_idx on ltk_quina.quina_num_bolas(quina_id, quina_qt, bola);
create index quina_num_bolas_idx2 on ltk_quina.quina_num_bolas(bola);
reindex table ltk_quina.quina_num_bolas;


drop table if exists ltk_quina.quina_estatistica;
create table ltk_quina.quina_estatistica(
  quina_id        NUMERIC NOT NULL,
  quina_qt        NUMERIC NOT NULL,
  dif_b1_b2       NUMERIC NOT NULL,
  dif_b2_b3       NUMERIC NOT NULL,
  dif_b3_b4       NUMERIC NOT NULL,
  dif_b4_b5       NUMERIC NOT NULL,
  dif_b1_b2_b3    NUMERIC NOT NULL,
  dif_b2_b3_b4    NUMERIC NOT NULL,
  dif_b3_b4_b5    NUMERIC NOT NULL,
  dif_b1_b2_b3_b4 NUMERIC NOT NULL,
  dif_b2_b3_b4_b5 NUMERIC NOT NULL,
  dif_padrao      VARCHAR(5),
  m_b1 numeric default 0,
  m_b2 numeric default 0,
  m_b3 numeric default 0,
  m_b4 numeric default 0

  --CONSTRAINT quina_estatistica_fk FOREIGN KEY (quina_id) REFERENCES ltk_quina.quina_num(quina_id)
);
create index quina_estatistica_idx_0 on ltk_quina.quina_estatistica(dif_b1_b2, dif_b2_b3, dif_b3_b4, dif_b4_b5, dif_b1_b2_b3, dif_b2_b3_b4, dif_b3_b4_b5);
create index quina_estatistica_idx_1 on ltk_quina.quina_estatistica(dif_b1_b2_b3, dif_b2_b3_b4, dif_b3_b4_b5);
/**
  Tabela semelhante à tabela quina_bolas, entretanto, ao invés de todas as bolas de uma única
  combinação estarem no mesmo registro, haverá um registro pra cada bola daquela combinação.
 */
drop table if exists ltk_quina.quina_bolas_num;
create table ltk_quina.quina_bolas_num(
  quina_seq numeric not null,
  quina_id numeric not null,
  quina_qt numeric not null,
  bola numeric not null,

  CONSTRAINT quina_bolas_num_pk PRIMARY KEY (quina_seq),
  CONSTRAINT quina_bolas_num_unk unique (quina_id, bola),
  CONSTRAINT quina_bolas_num_fk FOREIGN KEY (quina_id) REFERENCES ltk_quina.quina_num(quina_id)
);

/**
  Agora, deve-se popular as tabelas acima com os arquivos:
  quina_num.csv, quina_bolas.csv, quina_estatistica.csv, quina_bolas_num.csv.
 */
Drop table if exists ltk_quina.quina_dif_padrao;
Create table ltk_quina.quina_dif_padrao(
  dif_padrao varchar(5) not null PRIMARY KEY,
  qt_vezes numeric not null
);
Insert into ltk_quina.quina_dif_padrao
  Select dif_padrao, count(*) qt_vezes from ltk_quina.quina_estatistica
group by dif_padrao order by qt_vezes;


