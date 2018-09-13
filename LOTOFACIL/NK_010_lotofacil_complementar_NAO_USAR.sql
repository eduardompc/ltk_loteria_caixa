/**
  TODO: Não será usado.

  Na lotofacil, dada duas ou mais combinações, sempre haverá 5 ou mais números
  que são comuns em ambas as combinações.
  Então, um complementar de uma combinação são todas as combinações que tem as combinações comum.
  De posse desta informações, podemos formar combinações que são complementares da combinação
  dada, o objetivo disto, por exemplo, combinar as bolas que não estão nesta combinação com
  as bolas da combinação.
  Por exemplo:
  A: 1,   2,  3,  4,  5,  6,  7,  8,  9, 10, 11, 12, 13, 14, 15
  B: 16, 17, 18, 19, 20, 21, 22, 23, 24, 25

  Observe acima que a combinação B, falta 5 números pra completar a combinação,
  então, devemos pegar, 5 bolas da combinação A.
  Então, quantas combinações é possível, usando as bolas que estão em B, com
  5 bolas da combinação A.
  Isto, chama-se Arranjo:
  n = 15, p = 5 => 15! / (5!(15-5)!) => 3003 combinações.

  O que irei fazer então, é bem simples, ao invès de repetir mais de 5 bolas
  da combinação anterior, irei repetir somente 5 delas, ou seja, preciso
  distribuir as 15 bolas, em 3 jogos complementares.

  O objetivo disto, é distribuir as 25 bolas, em 4 jogos cada, isto provávelmente
  aumenta as chances de ganhar, por exemplo, vamos supor que acerte 5 bolas
  da combinação A, quer dizer, que as 10 bolas restantes está na combinação B,
  Então, como irei permutar as 10 bolas, com as bolas da combinação A.
 */

drop table if exists lotofacil.lotofacil_complementar;
create table lotofacil.lotofacil_complementar(
  ltf_id numeric not null,
  ltf_qt numeric not null check(ltf_qt in (15, 16, 17, 18)),
  id_complementar_sequencial numeric default 0
);
/*
  Drop índices, pra inserção mais rápido.
 */
drop index if EXISTS lotofacil_complementar_idx_1;

/**
  Insere dados na tabela lotofacil_complementar capturando tais dados
  da tabela lotofacil.lotofacil_bolas.
 */
Insert into lotofacil.lotofacil_complementar (ltf_id, ltf_qt, id_complementar_sequencial)
    Select ltf_id, ltf_qt, 0 from lotofacil.lotofacil_bolas
order by ltf_id;

create index lotofacil_complementar_idx_1 on lotofacil.lotofacil_complementar(ltf_id);

