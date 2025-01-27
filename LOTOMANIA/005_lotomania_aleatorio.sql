/**
  Tabela que armazena números gerados aleatoriamente.
 */
drop table if exists lotomania.lotomania_aleatorio_num;
CREATE TABLE lotomania.lotomania_aleatorio_num (
  id_sequencial bigserial PRIMARY KEY ,
  data_hora TIMESTAMP,
  id_sequencial_aleatorio numeric not null,

  num_0                    NUMERIC DEFAULT 0 check (num_0 in (0, 1)),
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
  num_81                   NUMERIC DEFAULT 0 check (num_81 in (0, 1)),
  num_82                   NUMERIC DEFAULT 0 check (num_82 in (0, 1)),
  num_83                   NUMERIC DEFAULT 0 check (num_83 in (0, 1)),
  num_84                   NUMERIC DEFAULT 0 check (num_84 in (0, 1)),
  num_85                   NUMERIC DEFAULT 0 check (num_85 in (0, 1)),
  num_86                   NUMERIC DEFAULT 0 check (num_86 in (0, 1)),
  num_87                   NUMERIC DEFAULT 0 check (num_87 in (0, 1)),
  num_88                   NUMERIC DEFAULT 0 check (num_88 in (0, 1)),
  num_89                   NUMERIC DEFAULT 0 check (num_89 in (0, 1)),
  num_90                   NUMERIC DEFAULT 0 check (num_90 in (0, 1)),
  num_91                   NUMERIC DEFAULT 0 check (num_91 in (0, 1)),
  num_92                   NUMERIC DEFAULT 0 check (num_92 in (0, 1)),
  num_93                   NUMERIC DEFAULT 0 check (num_93 in (0, 1)),
  num_94                   NUMERIC DEFAULT 0 check (num_94 in (0, 1)),
  num_95                   NUMERIC DEFAULT 0 check (num_95 in (0, 1)),
  num_96                   NUMERIC DEFAULT 0 check (num_96 in (0, 1)),
  num_97                   NUMERIC DEFAULT 0 check (num_97 in (0, 1)),
  num_98                   NUMERIC DEFAULT 0 check (num_98 in (0, 1)),
  num_99                   NUMERIC DEFAULT 0 check (num_99 in (0, 1)),

  CONSTRAINT soma_0_a_99_check check (
    (num_1 + num_2  + num_3  + num_4  + num_5  + num_6  + num_7  + num_8  + num_9  + num_10 +
    num_11 + num_12 + num_13 + num_14 + num_15 + num_16 + num_17 + num_18 + num_19 + num_20 +
    num_21 + num_22 + num_23 + num_24 + num_25 + num_26 + num_27 + num_28 + num_29 + num_30 +
    num_31 + num_32 + num_33 + num_34 + num_35 + num_36 + num_37 + num_38 + num_39 + num_40 +
    num_41 + num_42 + num_43 + num_44 + num_45 + num_46 + num_47 + num_48 + num_49 + num_50 +
    num_51 + num_52 + num_53 + num_54 + num_55 + num_56 + num_57 + num_58 + num_59 + num_60 +
    num_61 + num_62 + num_63 + num_64 + num_65 + num_66 + num_67 + num_68 + num_69 + num_70 +
    num_71 + num_72 + num_73 + num_74 + num_75 + num_76 + num_77 + num_78 + num_79 + num_80 +
    num_81 + num_82 + num_83 + num_84 + num_85 + num_86 + num_87 + num_88 + num_89 + num_90 +
    num_91 + num_92 + num_93 + num_94 + num_95 + num_96 + num_97 + num_98 + num_99 + num_0) = 50)
);
comment on table lotomania.lotomania_aleatorio_num is
'Esta é a tabela inicial, que são armazenados os aleatorios da lotomania, '
'os campos num_0 a num_99 corresponde respectivamentes às bolas 0 a 99 do lotomania,'
'o campo terá o valor 1, se a bola foi sorteada, 0 (zero) caso contrário.'
'Tem que ser sorteado 20 números, senão a restrição de verificação não irá deixar inserir o registro.';

drop TABLE if exists lotomania.lotomania_aleatorio_bolas;
create table lotomania.lotomania_aleatorio_bolas(
  id_sequencial BIGINT not null,
  data_hora TIMESTAMP,
  id_sequencial_aleatorio numeric not null,
  b_1                    NUMERIC NOT NULL,
  b_2                    NUMERIC NOT NULL,
  b_3                    NUMERIC NOT NULL,
  b_4                    NUMERIC NOT NULL,
  b_5                    NUMERIC NOT NULL,
  b_6                    NUMERIC NOT NULL,
  b_7                    NUMERIC NOT NULL,
  b_8                    NUMERIC NOT NULL,
  b_9                    NUMERIC NOT NULL,
  b_10                   NUMERIC NOT NULL,
  b_11                   NUMERIC NOT NULL,
  b_12                   NUMERIC NOT NULL,
  b_13                   NUMERIC NOT NULL,
  b_14                   NUMERIC NOT NULL,
  b_15                   NUMERIC NOT NULL,
  b_16                   NUMERIC NOT NULL,
  b_17                   NUMERIC NOT NULL,
  b_18                   NUMERIC NOT NULL,
  b_19                   NUMERIC NOT NULL,
  b_20                   NUMERIC NOT NULL,
  b_21                   NUMERIC NOT NULL,
  b_22                   NUMERIC NOT NULL,
  b_23                   NUMERIC NOT NULL,
  b_24                   NUMERIC NOT NULL,
  b_25                   NUMERIC NOT NULL,
  b_26                   NUMERIC NOT NULL,
  b_27                   NUMERIC NOT NULL,
  b_28                   NUMERIC NOT NULL,
  b_29                   NUMERIC NOT NULL,
  b_30                   NUMERIC NOT NULL,
  b_31                   NUMERIC NOT NULL,
  b_32                   NUMERIC NOT NULL,
  b_33                   NUMERIC NOT NULL,
  b_34                   NUMERIC NOT NULL,
  b_35                   NUMERIC NOT NULL,
  b_36                   NUMERIC NOT NULL,
  b_37                   NUMERIC NOT NULL,
  b_38                   NUMERIC NOT NULL,
  b_39                   NUMERIC NOT NULL,
  b_40                   NUMERIC NOT NULL,
  b_41                   NUMERIC NOT NULL,
  b_42                   NUMERIC NOT NULL,
  b_43                   NUMERIC NOT NULL,
  b_44                   NUMERIC NOT NULL,
  b_45                   NUMERIC NOT NULL,
  b_46                   NUMERIC NOT NULL,
  b_47                   NUMERIC NOT NULL,
  b_48                   NUMERIC NOT NULL,
  b_49                   NUMERIC NOT NULL,
  b_50                   NUMERIC NOT NULL,

  CONSTRAINT lotomania_aleatorio_bolas_fk FOREIGN KEY (id_sequencial) REFERENCES lotomania.lotomania_aleatorio_num(id_sequencial)
  on UPDATE cascade on DELETE cascade,
  CONSTRAINT lotomania_aleatorio_bolas_chk CHECK (
    (b_1 < b_2) AND
    (b_2 < b_3) AND
    (b_3 < b_4) AND
    (b_4 < b_5) AND
    (b_5 < b_6) AND
    (b_6 < b_7) AND
    (b_7 < b_8) AND
    (b_8 < b_9) AND
    (b_9 < b_10) AND
    (b_10 < b_11) AND
    (b_11 < b_12) AND
    (b_12 < b_13) AND
    (b_13 < b_14) AND
    (b_14 < b_15) AND
    (b_15 < b_16) AND
    (b_16 < b_17) AND
    (b_17 < b_18) AND
    (b_18 < b_19) AND
    (b_19 < b_20) AND
    (b_20 < b_21) AND
    (b_21 < b_22) AND
    (b_22 < b_23) AND
    (b_23 < b_24) AND
    (b_24 < b_25) AND
    (b_25 < b_26) AND
    (b_26 < b_27) AND
    (b_27 < b_28) AND
    (b_28 < b_29) AND
    (b_29 < b_30) AND
    (b_30 < b_31) AND
    (b_31 < b_32) AND
    (b_32 < b_33) AND
    (b_33 < b_34) AND
    (b_34 < b_35) AND
    (b_35 < b_36) AND
    (b_36 < b_37) AND
    (b_37 < b_38) AND
    (b_38 < b_39) AND
    (b_39 < b_40) AND
    (b_10 < b_11) AND
    (b_41 < b_42) AND
    (b_42 < b_43) AND
    (b_43 < b_44) AND
    (b_44 < b_45) AND
    (b_45 < b_46) AND
    (b_46 < b_47) AND
    (b_47 < b_48) AND
    (b_48 < b_49) AND
    (b_49 < b_50)
  )
);

drop table if exists lotomania.lotomania_aleatorio_par_impar;
create table lotomania.lotomania_aleatorio_par_impar(
  id_sequencial bigint not null,
  qt_par numeric not null,
  qt_impar numeric not null,
  constraint lotomania_aleatorio_par_impar_chk check(qt_par + qt_impar = 50)
);

drop table if exists lotomania.lotomania_aleatorio_acertos;
create table lotomania.lotomania_aleatorio_acertos(
  id_sequencial BIGINT not null,
  acertos numeric not null,
  constraint lotomania_aleatorio_acertos_fk foreign key (id_sequencial) REFERENCES lotomania.lotomania_aleatorio_num(id_sequencial)
);


drop table if exists lotomania.lotomania_aleatorio_opcoes;
create table lotomania.lotomania_aleatorio_opcoes(
  data_hora timestamp,

  concurso numeric not null,

  posicao_das_20_bolas_na_combinacao numeric not null check (posicao_das_20_bolas_na_combinacao in (0, 1, 2)),
  posicao_das_20_bolas numeric not null check(posicao_das_20_bolas in (0, 1, 2)),

  bolas_por_grupo numeric not null check(bolas_por_grupo in (5, 10)),

  qt_bolas_utilizadas numeric not null check(
    (bolas_por_grupo = 5 and qt_bolas_utilizadas in (100, 95, 90, 85, 80, 75, 70, 65, 60, 55))
    OR
    (bolas_por_grupo = 10 and qt_bolas_utilizadas in (100, 90, 80, 70, 60))
  ),
  posicao_bolas_utilizadas numeric not null check (posicao_bolas_utilizadas in (0, 1, 2)),

  qt_bolas_fixas numeric not null check (
    (bolas_por_grupo = 5 and qt_bolas_fixas in (0, 5, 10, 15, 20, 25, 30, 35, 40, 45))
    OR
    (bolas_por_grupo = 10 and qt_bolas_fixas in (0, 10, 20, 30, 40))
  ),

  ordenar_1 numeric not null check(ordenar_1 between 0 and 10),
  ordenar_2 numeric not null check(ordenar_2 between 0 and 10),
  ordenar_3 numeric not null check(ordenar_3 BETWEEN 0 and 10),
  ordenar_4 numeric not null check(ordenar_4 BETWEEN 0 and 10),

  combinacao_espelho numeric not null check (combinacao_espelho in (0, 1, 2)),

  constraint lotomania_aleatorio_opcoes_pk PRIMARY KEY (data_hora)
);
comment on column lotomania.lotomania_aleatorio_opcoes.posicao_das_20_bolas_na_combinacao IS
'0 - Não posicionar,'
'1 - Combinação principal'
'2 - Combinação espelho';
comment on column lotomania.lotomania_aleatorio_opcoes.posicao_das_20_bolas is ''
'0 - Posicionar a esquerda'
'1 - Posicionar no meio'
'2 - Posicionar a direita';
comment on column lotomania.lotomania_aleatorio_opcoes.posicao_bolas_utilizadas is ''
'0 - Capturar bolas do lado esquerdo'
'1 - Capturar bolas centralmente'
'2 - Capturas bolas do lado direito';
comment on column lotomania.lotomania_aleatorio_opcoes.ordenar_1 IS
'0 - Nenhuma ordem definida'
'1 - bolas asc'
'2 - bolas desc'
'3 - par_impar asc'
'4 - par_impar desc'
'5 - freq asc'
'6 - freq desc'
'7 - freq_total asc'
'8 - freq_total desc'
'9 - qt_vezes asc'
'10 - qt_vezes desc';
comment on column lotomania.lotomania_aleatorio_opcoes.ordenar_2 IS
'0 - Nenhuma ordem definida'
'1 - bolas asc'
'2 - bolas desc'
'3 - par_impar asc'
'4 - par_impar desc'
'5 - freq asc'
'6 - freq desc'
'7 - freq_total asc'
'8 - freq_total desc'
'9 - qt_vezes asc'
'10 - qt_vezes desc';
comment on column lotomania.lotomania_aleatorio_opcoes.ordenar_3 IS
'0 - Nenhuma ordem definida'
'1 - bolas asc'
'2 - bolas desc'
'3 - par_impar asc'
'4 - par_impar desc'
'5 - freq asc'
'6 - freq desc'
'7 - freq_total asc'
'8 - freq_total desc'
'9 - qt_vezes asc'
'10 - qt_vezes desc';
comment on column lotomania.lotomania_aleatorio_opcoes.ordenar_4 IS
'0 - Nenhuma ordem definida'
'1 - bolas asc'
'2 - bolas desc'
'3 - par_impar asc'
'4 - par_impar desc'
'5 - freq asc'
'6 - freq desc'
'7 - freq_total asc'
'8 - freq_total desc'
'9 - qt_vezes asc'
'10 - qt_vezes desc';
comment on column lotomania.lotomania_aleatorio_opcoes.combinacao_espelho IS
'0 - Não exibir combinação espelho'
'1 - Exibir combinacao espelho não-adjacente à combinação principal'
'2 - Exibir combinação espelho adjacente à combinação principal';






Insert into lotomania.lotomania_aleatorio_num(data_hora) values('2017-12-31 16:27:00');
