/**
  Análise de coluna b1 a b15.
  Autor: Fábio Moura de Oliveira.

  Os nomes dos campos da forma:
  bx_a_by_id, onde x e y, são números, onde x é menor ou igual a y, corresponde
  ao identificador da combinação considerando a coluna começando em x até a coluna
  terminando em y.
  Por exemplo: b11_a_b15, quer dizer que o identificador corresponde às colunas:
  b1, b2, b3, b4, b5.
  O identificador de cada campo corresponde a um identificador armazenado em
  uma tabela de id de grupos, a quantidade de colunas na combinação indica
  de qual tabela devemos recuperar o identificador.
  No exemplo acima, há 5 colunas, então, a tabela de identificadores a ser
  usada, será a tabela de nome 'lotofacil_id_grupo_5_bolas'.
 */

/**
  Semelhante a toda as outras tabelas, sempre haverá uma tabela que armazena o id
  de cada combinação possível.
  Então, por exemplo, haverá uma tabela 'lotofacil_id_b1_a_b1', pra identificar
  cada combinação possível do campo 'b1_a_b1_id' da tabela 'lotofacil.lotofacil_coluna'.
  Haverá 120 tabelas, que armazenará
  Neste caso, irei, automatizar a criação de tais tabelas através de um programa
  freepascal e inserir o resultado aqui.

  Vamos criar as tabelas baseadas neste modelo:

  Drop view if exists lotofacil.lotofacil_id_@nome_da_tabela@;
  Create table lotofacil.lotofacil_id_@nome_da_tabela@(
    @nome_da_tabela@_id numeric not null,
    #create_dos_campos_b1_da_tabela#,

    constraint lotofacil_id@nome_da_tabela@_pk primary key(@nome_da_tabela@_id)
  );
  Insert into lotofacil_id_@nome_da_tabela(@todos_os_campos)
  Select @nome_da_tabela@id, @campo_b_da_tabela from
    lotofacil.lotofacil


 */

/**
  Este script foi gerado pra automatizar a criação das 120 tabelas.
  Inicio.
 */

/*
TABELA:   lotofacil_id_b1_a_b1##
Objetivo: Armazena um identificador pra a combinação de 1 bolas válidas, iniciando da esquerda
pra direita, a partir da coluna B1 considerando todas as bolas adjacentes a direita até chegar
 na coluna B1.
Por exemplo, se a tabela é lotofacil_id_b1_a_b5, então,
a tabela irá armazenar as combinações de bolas que é possível
nas posições b1, b2, b3, b4, b5, na coluna b1, por exemplo, é
possível armazenar as bolas 1 até 11
Os ids das combinações corresponde ao deslocamento de 25 bolas,
tais ids corresponde aos ids de grupos considerando a quantidade de
 de bolas pra aquela combinação.
*/
Drop table if exists lotofacil.lotofacil_id_b1_a_b1;
Create table lotofacil.lotofacil_id_b1_a_b1(
     b1_a_b1_id numeric not null,
     b1 numeric not null,
     constraint lotofacil_id_b1_a_b1_pk primary key(b1_a_b1_id)
);
Insert into lotofacil.lotofacil_id_b1_a_b1(
     b1_a_b1_id,
     b1
)
Select grp_id,
     bola1
from lotofacil.lotofacil_id_grupo_1_bola
where bola1 >= 1 and bola1 <= 11
 order by bola1;
/*
Cada coluna tem a menor e a maior bola que pode estar
naquela posição, por exemplo, na coluna b1, pode ter
no máximo até a bola 11, vc nunca verá uma bola 12 nesta posição
*/



/*
TABELA:   lotofacil_id_b1_a_b2##
Objetivo: Armazena um identificador pra a combinação de 2 bolas válidas, iniciando da esquerda
pra direita, a partir da coluna B1 considerando todas as bolas adjacentes a direita até chegar
 na coluna B2.
Por exemplo, se a tabela é lotofacil_id_b1_a_b5, então,
a tabela irá armazenar as combinações de bolas que é possível
nas posições b1, b2, b3, b4, b5, na coluna b1, por exemplo, é
possível armazenar as bolas 1 até 11
Os ids das combinações corresponde ao deslocamento de 25 bolas,
tais ids corresponde aos ids de grupos considerando a quantidade de
 de bolas pra aquela combinação.
*/
Drop table if exists lotofacil.lotofacil_id_b1_a_b2;
Create table lotofacil.lotofacil_id_b1_a_b2(
     b1_a_b2_id numeric not null,
     b1 numeric not null,
     b2 numeric not null,
     constraint lotofacil_id_b1_a_b2_pk primary key(b1_a_b2_id)
);
Insert into lotofacil.lotofacil_id_b1_a_b2(
     b1_a_b2_id,
     b1,
     b2
)
Select grp_id,
     bola1,
     bola2
from lotofacil.lotofacil_id_grupo_2_bolas
where bola1 >= 1 and bola1 <= 11
 order by bola1, bola2;
/*
Cada coluna tem a menor e a maior bola que pode estar
naquela posição, por exemplo, na coluna b1, pode ter
no máximo até a bola 11, vc nunca verá uma bola 12 nesta posição
*/



/*
TABELA:   lotofacil_id_b1_a_b3##
Objetivo: Armazena um identificador pra a combinação de 3 bolas válidas, iniciando da esquerda
pra direita, a partir da coluna B1 considerando todas as bolas adjacentes a direita até chegar
 na coluna B3.
Por exemplo, se a tabela é lotofacil_id_b1_a_b5, então,
a tabela irá armazenar as combinações de bolas que é possível
nas posições b1, b2, b3, b4, b5, na coluna b1, por exemplo, é
possível armazenar as bolas 1 até 11
Os ids das combinações corresponde ao deslocamento de 25 bolas,
tais ids corresponde aos ids de grupos considerando a quantidade de
 de bolas pra aquela combinação.
*/
Drop table if exists lotofacil.lotofacil_id_b1_a_b3;
Create table lotofacil.lotofacil_id_b1_a_b3(
     b1_a_b3_id numeric not null,
     b1 numeric not null,
     b2 numeric not null,
     b3 numeric not null,
     constraint lotofacil_id_b1_a_b3_pk primary key(b1_a_b3_id)
);
Insert into lotofacil.lotofacil_id_b1_a_b3(
     b1_a_b3_id,
     b1,
     b2,
     b3
)
Select grp_id,
     bola1,
     bola2,
     bola3
from lotofacil.lotofacil_id_grupo_3_bolas
where bola1 >= 1 and bola1 <= 11
 order by bola1, bola2, bola3;
/*
Cada coluna tem a menor e a maior bola que pode estar
naquela posição, por exemplo, na coluna b1, pode ter
no máximo até a bola 11, vc nunca verá uma bola 12 nesta posição
*/



/*
TABELA:   lotofacil_id_b1_a_b4##
Objetivo: Armazena um identificador pra a combinação de 4 bolas válidas, iniciando da esquerda
pra direita, a partir da coluna B1 considerando todas as bolas adjacentes a direita até chegar
 na coluna B4.
Por exemplo, se a tabela é lotofacil_id_b1_a_b5, então,
a tabela irá armazenar as combinações de bolas que é possível
nas posições b1, b2, b3, b4, b5, na coluna b1, por exemplo, é
possível armazenar as bolas 1 até 11
Os ids das combinações corresponde ao deslocamento de 25 bolas,
tais ids corresponde aos ids de grupos considerando a quantidade de
 de bolas pra aquela combinação.
*/
Drop table if exists lotofacil.lotofacil_id_b1_a_b4;
Create table lotofacil.lotofacil_id_b1_a_b4(
     b1_a_b4_id numeric not null,
     b1 numeric not null,
     b2 numeric not null,
     b3 numeric not null,
     b4 numeric not null,
     constraint lotofacil_id_b1_a_b4_pk primary key(b1_a_b4_id)
);
Insert into lotofacil.lotofacil_id_b1_a_b4(
     b1_a_b4_id,
     b1,
     b2,
     b3,
     b4
)
Select grp_id,
     bola1,
     bola2,
     bola3,
     bola4
from lotofacil.lotofacil_id_grupo_4_bolas
where bola1 >= 1 and bola1 <= 11
 order by bola1, bola2, bola3, bola4;
/*
Cada coluna tem a menor e a maior bola que pode estar
naquela posição, por exemplo, na coluna b1, pode ter
no máximo até a bola 11, vc nunca verá uma bola 12 nesta posição
*/



/*
TABELA:   lotofacil_id_b1_a_b5##
Objetivo: Armazena um identificador pra a combinação de 5 bolas válidas, iniciando da esquerda
pra direita, a partir da coluna B1 considerando todas as bolas adjacentes a direita até chegar
 na coluna B5.
Por exemplo, se a tabela é lotofacil_id_b1_a_b5, então,
a tabela irá armazenar as combinações de bolas que é possível
nas posições b1, b2, b3, b4, b5, na coluna b1, por exemplo, é
possível armazenar as bolas 1 até 11
Os ids das combinações corresponde ao deslocamento de 25 bolas,
tais ids corresponde aos ids de grupos considerando a quantidade de
 de bolas pra aquela combinação.
*/
Drop table if exists lotofacil.lotofacil_id_b1_a_b5;
Create table lotofacil.lotofacil_id_b1_a_b5(
     b1_a_b5_id numeric not null,
     b1 numeric not null,
     b2 numeric not null,
     b3 numeric not null,
     b4 numeric not null,
     b5 numeric not null,
     constraint lotofacil_id_b1_a_b5_pk primary key(b1_a_b5_id)
);
Insert into lotofacil.lotofacil_id_b1_a_b5(
     b1_a_b5_id,
     b1,
     b2,
     b3,
     b4,
     b5
)
Select grp_id,
     bola1,
     bola2,
     bola3,
     bola4,
     bola5
from lotofacil.lotofacil_id_grupo_5_bolas
where bola1 >= 1 and bola1 <= 11
 order by bola1, bola2, bola3, bola4, bola5;
/*
Cada coluna tem a menor e a maior bola que pode estar
naquela posição, por exemplo, na coluna b1, pode ter
no máximo até a bola 11, vc nunca verá uma bola 12 nesta posição
*/



/*
TABELA:   lotofacil_id_b1_a_b6##
Objetivo: Armazena um identificador pra a combinação de 6 bolas válidas, iniciando da esquerda
pra direita, a partir da coluna B1 considerando todas as bolas adjacentes a direita até chegar
 na coluna B6.
Por exemplo, se a tabela é lotofacil_id_b1_a_b5, então,
a tabela irá armazenar as combinações de bolas que é possível
nas posições b1, b2, b3, b4, b5, na coluna b1, por exemplo, é
possível armazenar as bolas 1 até 11
Os ids das combinações corresponde ao deslocamento de 25 bolas,
tais ids corresponde aos ids de grupos considerando a quantidade de
 de bolas pra aquela combinação.
*/
Drop table if exists lotofacil.lotofacil_id_b1_a_b6;
Create table lotofacil.lotofacil_id_b1_a_b6(
     b1_a_b6_id numeric not null,
     b1 numeric not null,
     b2 numeric not null,
     b3 numeric not null,
     b4 numeric not null,
     b5 numeric not null,
     b6 numeric not null,
     constraint lotofacil_id_b1_a_b6_pk primary key(b1_a_b6_id)
);
Insert into lotofacil.lotofacil_id_b1_a_b6(
     b1_a_b6_id,
     b1,
     b2,
     b3,
     b4,
     b5,
     b6
)
Select grp_id,
     bola1,
     bola2,
     bola3,
     bola4,
     bola5,
     bola6
from lotofacil.lotofacil_id_grupo_6_bolas
where bola1 >= 1 and bola1 <= 11
 order by bola1, bola2, bola3, bola4, bola5, bola6;
/*
Cada coluna tem a menor e a maior bola que pode estar
naquela posição, por exemplo, na coluna b1, pode ter
no máximo até a bola 11, vc nunca verá uma bola 12 nesta posição
*/



/*
TABELA:   lotofacil_id_b1_a_b7##
Objetivo: Armazena um identificador pra a combinação de 7 bolas válidas, iniciando da esquerda
pra direita, a partir da coluna B1 considerando todas as bolas adjacentes a direita até chegar
 na coluna B7.
Por exemplo, se a tabela é lotofacil_id_b1_a_b5, então,
a tabela irá armazenar as combinações de bolas que é possível
nas posições b1, b2, b3, b4, b5, na coluna b1, por exemplo, é
possível armazenar as bolas 1 até 11
Os ids das combinações corresponde ao deslocamento de 25 bolas,
tais ids corresponde aos ids de grupos considerando a quantidade de
 de bolas pra aquela combinação.
*/
Drop table if exists lotofacil.lotofacil_id_b1_a_b7;
Create table lotofacil.lotofacil_id_b1_a_b7(
     b1_a_b7_id numeric not null,
     b1 numeric not null,
     b2 numeric not null,
     b3 numeric not null,
     b4 numeric not null,
     b5 numeric not null,
     b6 numeric not null,
     b7 numeric not null,
     constraint lotofacil_id_b1_a_b7_pk primary key(b1_a_b7_id)
);
Insert into lotofacil.lotofacil_id_b1_a_b7(
     b1_a_b7_id,
     b1,
     b2,
     b3,
     b4,
     b5,
     b6,
     b7
)
Select grp_id,
     bola1,
     bola2,
     bola3,
     bola4,
     bola5,
     bola6,
     bola7
from lotofacil.lotofacil_id_grupo_7_bolas
where bola1 >= 1 and bola1 <= 11
 order by bola1, bola2, bola3, bola4, bola5, bola6, bola7;
/*
Cada coluna tem a menor e a maior bola que pode estar
naquela posição, por exemplo, na coluna b1, pode ter
no máximo até a bola 11, vc nunca verá uma bola 12 nesta posição
*/



/*
TABELA:   lotofacil_id_b1_a_b8##
Objetivo: Armazena um identificador pra a combinação de 8 bolas válidas, iniciando da esquerda
pra direita, a partir da coluna B1 considerando todas as bolas adjacentes a direita até chegar
 na coluna B8.
Por exemplo, se a tabela é lotofacil_id_b1_a_b5, então,
a tabela irá armazenar as combinações de bolas que é possível
nas posições b1, b2, b3, b4, b5, na coluna b1, por exemplo, é
possível armazenar as bolas 1 até 11
Os ids das combinações corresponde ao deslocamento de 25 bolas,
tais ids corresponde aos ids de grupos considerando a quantidade de
 de bolas pra aquela combinação.
*/
Drop table if exists lotofacil.lotofacil_id_b1_a_b8;
Create table lotofacil.lotofacil_id_b1_a_b8(
     b1_a_b8_id numeric not null,
     b1 numeric not null,
     b2 numeric not null,
     b3 numeric not null,
     b4 numeric not null,
     b5 numeric not null,
     b6 numeric not null,
     b7 numeric not null,
     b8 numeric not null,
     constraint lotofacil_id_b1_a_b8_pk primary key(b1_a_b8_id)
);
Insert into lotofacil.lotofacil_id_b1_a_b8(
     b1_a_b8_id,
     b1,
     b2,
     b3,
     b4,
     b5,
     b6,
     b7,
     b8
)
Select grp_id,
     bola1,
     bola2,
     bola3,
     bola4,
     bola5,
     bola6,
     bola7,
     bola8
from lotofacil.lotofacil_id_grupo_8_bolas
where bola1 >= 1 and bola1 <= 11
 order by bola1, bola2, bola3, bola4, bola5, bola6, bola7, bola8;
/*
Cada coluna tem a menor e a maior bola que pode estar
naquela posição, por exemplo, na coluna b1, pode ter
no máximo até a bola 11, vc nunca verá uma bola 12 nesta posição
*/



/*
TABELA:   lotofacil_id_b1_a_b9##
Objetivo: Armazena um identificador pra a combinação de 9 bolas válidas, iniciando da esquerda
pra direita, a partir da coluna B1 considerando todas as bolas adjacentes a direita até chegar
 na coluna B9.
Por exemplo, se a tabela é lotofacil_id_b1_a_b5, então,
a tabela irá armazenar as combinações de bolas que é possível
nas posições b1, b2, b3, b4, b5, na coluna b1, por exemplo, é
possível armazenar as bolas 1 até 11
Os ids das combinações corresponde ao deslocamento de 25 bolas,
tais ids corresponde aos ids de grupos considerando a quantidade de
 de bolas pra aquela combinação.
*/
Drop table if exists lotofacil.lotofacil_id_b1_a_b9;
Create table lotofacil.lotofacil_id_b1_a_b9(
     b1_a_b9_id numeric not null,
     b1 numeric not null,
     b2 numeric not null,
     b3 numeric not null,
     b4 numeric not null,
     b5 numeric not null,
     b6 numeric not null,
     b7 numeric not null,
     b8 numeric not null,
     b9 numeric not null,
     constraint lotofacil_id_b1_a_b9_pk primary key(b1_a_b9_id)
);
Insert into lotofacil.lotofacil_id_b1_a_b9(
     b1_a_b9_id,
     b1,
     b2,
     b3,
     b4,
     b5,
     b6,
     b7,
     b8,
     b9
)
Select grp_id,
     bola1,
     bola2,
     bola3,
     bola4,
     bola5,
     bola6,
     bola7,
     bola8,
     bola9
from lotofacil.lotofacil_id_grupo_9_bolas
where bola1 >= 1 and bola1 <= 11
 order by bola1, bola2, bola3, bola4, bola5, bola6, bola7, bola8, bola9;
/*
Cada coluna tem a menor e a maior bola que pode estar
naquela posição, por exemplo, na coluna b1, pode ter
no máximo até a bola 11, vc nunca verá uma bola 12 nesta posição
*/



/*
TABELA:   lotofacil_id_b1_a_b10##
Objetivo: Armazena um identificador pra a combinação de 10 bolas válidas, iniciando da esquerda
pra direita, a partir da coluna B1 considerando todas as bolas adjacentes a direita até chegar
 na coluna B10.
Por exemplo, se a tabela é lotofacil_id_b1_a_b5, então,
a tabela irá armazenar as combinações de bolas que é possível
nas posições b1, b2, b3, b4, b5, na coluna b1, por exemplo, é
possível armazenar as bolas 1 até 11
Os ids das combinações corresponde ao deslocamento de 25 bolas,
tais ids corresponde aos ids de grupos considerando a quantidade de
 de bolas pra aquela combinação.
*/
Drop table if exists lotofacil.lotofacil_id_b1_a_b10;
Create table lotofacil.lotofacil_id_b1_a_b10(
     b1_a_b10_id numeric not null,
     b1 numeric not null,
     b2 numeric not null,
     b3 numeric not null,
     b4 numeric not null,
     b5 numeric not null,
     b6 numeric not null,
     b7 numeric not null,
     b8 numeric not null,
     b9 numeric not null,
     b10 numeric not null,
     constraint lotofacil_id_b1_a_b10_pk primary key(b1_a_b10_id)
);
Insert into lotofacil.lotofacil_id_b1_a_b10(
     b1_a_b10_id,
     b1,
     b2,
     b3,
     b4,
     b5,
     b6,
     b7,
     b8,
     b9,
     b10
)
Select grp_id,
     bola1,
     bola2,
     bola3,
     bola4,
     bola5,
     bola6,
     bola7,
     bola8,
     bola9,
     bola10
from lotofacil.lotofacil_id_grupo_10_bolas
where bola1 >= 1 and bola1 <= 11
 order by bola1, bola2, bola3, bola4, bola5, bola6, bola7, bola8, bola9, bola10;
/*
Cada coluna tem a menor e a maior bola que pode estar
naquela posição, por exemplo, na coluna b1, pode ter
no máximo até a bola 11, vc nunca verá uma bola 12 nesta posição
*/



/*
TABELA:   lotofacil_id_b1_a_b11##
Objetivo: Armazena um identificador pra a combinação de 11 bolas válidas, iniciando da esquerda
pra direita, a partir da coluna B1 considerando todas as bolas adjacentes a direita até chegar
 na coluna B11.
Por exemplo, se a tabela é lotofacil_id_b1_a_b5, então,
a tabela irá armazenar as combinações de bolas que é possível
nas posições b1, b2, b3, b4, b5, na coluna b1, por exemplo, é
possível armazenar as bolas 1 até 11
Os ids das combinações corresponde ao deslocamento de 25 bolas,
tais ids corresponde aos ids de grupos considerando a quantidade de
 de bolas pra aquela combinação.
*/
Drop table if exists lotofacil.lotofacil_id_b1_a_b11;
Create table lotofacil.lotofacil_id_b1_a_b11(
     b1_a_b11_id numeric not null,
     b1 numeric not null,
     b2 numeric not null,
     b3 numeric not null,
     b4 numeric not null,
     b5 numeric not null,
     b6 numeric not null,
     b7 numeric not null,
     b8 numeric not null,
     b9 numeric not null,
     b10 numeric not null,
     b11 numeric not null,
     constraint lotofacil_id_b1_a_b11_pk primary key(b1_a_b11_id)
);
Insert into lotofacil.lotofacil_id_b1_a_b11(
     b1_a_b11_id,
     b1,
     b2,
     b3,
     b4,
     b5,
     b6,
     b7,
     b8,
     b9,
     b10,
     b11
)
Select grp_id,
     bola1,
     bola2,
     bola3,
     bola4,
     bola5,
     bola6,
     bola7,
     bola8,
     bola9,
     bola10,
     bola11
from lotofacil.lotofacil_id_grupo_11_bolas
where bola1 >= 1 and bola1 <= 11
 order by bola1, bola2, bola3, bola4, bola5, bola6, bola7, bola8, bola9, bola10, bola11;
/*
Cada coluna tem a menor e a maior bola que pode estar
naquela posição, por exemplo, na coluna b1, pode ter
no máximo até a bola 11, vc nunca verá uma bola 12 nesta posição
*/



/*
TABELA:   lotofacil_id_b1_a_b12##
Objetivo: Armazena um identificador pra a combinação de 12 bolas válidas, iniciando da esquerda
pra direita, a partir da coluna B1 considerando todas as bolas adjacentes a direita até chegar
 na coluna B12.
Por exemplo, se a tabela é lotofacil_id_b1_a_b5, então,
a tabela irá armazenar as combinações de bolas que é possível
nas posições b1, b2, b3, b4, b5, na coluna b1, por exemplo, é
possível armazenar as bolas 1 até 11
Os ids das combinações corresponde ao deslocamento de 25 bolas,
tais ids corresponde aos ids de grupos considerando a quantidade de
 de bolas pra aquela combinação.
*/
Drop table if exists lotofacil.lotofacil_id_b1_a_b12;
Create table lotofacil.lotofacil_id_b1_a_b12(
     b1_a_b12_id numeric not null,
     b1 numeric not null,
     b2 numeric not null,
     b3 numeric not null,
     b4 numeric not null,
     b5 numeric not null,
     b6 numeric not null,
     b7 numeric not null,
     b8 numeric not null,
     b9 numeric not null,
     b10 numeric not null,
     b11 numeric not null,
     b12 numeric not null,
     constraint lotofacil_id_b1_a_b12_pk primary key(b1_a_b12_id)
);
Insert into lotofacil.lotofacil_id_b1_a_b12(
     b1_a_b12_id,
     b1,
     b2,
     b3,
     b4,
     b5,
     b6,
     b7,
     b8,
     b9,
     b10,
     b11,
     b12
)
Select grp_id,
     bola1,
     bola2,
     bola3,
     bola4,
     bola5,
     bola6,
     bola7,
     bola8,
     bola9,
     bola10,
     bola11,
     bola12
from lotofacil.lotofacil_id_grupo_12_bolas
where bola1 >= 1 and bola1 <= 11
 order by bola1, bola2, bola3, bola4, bola5, bola6, bola7, bola8, bola9, bola10, bola11, bola12;
/*
Cada coluna tem a menor e a maior bola que pode estar
naquela posição, por exemplo, na coluna b1, pode ter
no máximo até a bola 11, vc nunca verá uma bola 12 nesta posição
*/



/*
TABELA:   lotofacil_id_b1_a_b13##
Objetivo: Armazena um identificador pra a combinação de 13 bolas válidas, iniciando da esquerda
pra direita, a partir da coluna B1 considerando todas as bolas adjacentes a direita até chegar
 na coluna B13.
Por exemplo, se a tabela é lotofacil_id_b1_a_b5, então,
a tabela irá armazenar as combinações de bolas que é possível
nas posições b1, b2, b3, b4, b5, na coluna b1, por exemplo, é
possível armazenar as bolas 1 até 11
Os ids das combinações corresponde ao deslocamento de 25 bolas,
tais ids corresponde aos ids de grupos considerando a quantidade de
 de bolas pra aquela combinação.
*/
Drop table if exists lotofacil.lotofacil_id_b1_a_b13;
Create table lotofacil.lotofacil_id_b1_a_b13(
     b1_a_b13_id numeric not null,
     b1 numeric not null,
     b2 numeric not null,
     b3 numeric not null,
     b4 numeric not null,
     b5 numeric not null,
     b6 numeric not null,
     b7 numeric not null,
     b8 numeric not null,
     b9 numeric not null,
     b10 numeric not null,
     b11 numeric not null,
     b12 numeric not null,
     b13 numeric not null,
     constraint lotofacil_id_b1_a_b13_pk primary key(b1_a_b13_id)
);
Insert into lotofacil.lotofacil_id_b1_a_b13(
     b1_a_b13_id,
     b1,
     b2,
     b3,
     b4,
     b5,
     b6,
     b7,
     b8,
     b9,
     b10,
     b11,
     b12,
     b13
)
Select grp_id,
     bola1,
     bola2,
     bola3,
     bola4,
     bola5,
     bola6,
     bola7,
     bola8,
     bola9,
     bola10,
     bola11,
     bola12,
     bola13
from lotofacil.lotofacil_id_grupo_13_bolas
where bola1 >= 1 and bola1 <= 11
 order by bola1, bola2, bola3, bola4, bola5, bola6, bola7, bola8, bola9, bola10, bola11, bola12, bola13;
/*
Cada coluna tem a menor e a maior bola que pode estar
naquela posição, por exemplo, na coluna b1, pode ter
no máximo até a bola 11, vc nunca verá uma bola 12 nesta posição
*/



/*
TABELA:   lotofacil_id_b1_a_b14##
Objetivo: Armazena um identificador pra a combinação de 14 bolas válidas, iniciando da esquerda
pra direita, a partir da coluna B1 considerando todas as bolas adjacentes a direita até chegar
 na coluna B14.
Por exemplo, se a tabela é lotofacil_id_b1_a_b5, então,
a tabela irá armazenar as combinações de bolas que é possível
nas posições b1, b2, b3, b4, b5, na coluna b1, por exemplo, é
possível armazenar as bolas 1 até 11
Os ids das combinações corresponde ao deslocamento de 25 bolas,
tais ids corresponde aos ids de grupos considerando a quantidade de
 de bolas pra aquela combinação.
*/
Drop table if exists lotofacil.lotofacil_id_b1_a_b14;
Create table lotofacil.lotofacil_id_b1_a_b14(
     b1_a_b14_id numeric not null,
     b1 numeric not null,
     b2 numeric not null,
     b3 numeric not null,
     b4 numeric not null,
     b5 numeric not null,
     b6 numeric not null,
     b7 numeric not null,
     b8 numeric not null,
     b9 numeric not null,
     b10 numeric not null,
     b11 numeric not null,
     b12 numeric not null,
     b13 numeric not null,
     b14 numeric not null,
     constraint lotofacil_id_b1_a_b14_pk primary key(b1_a_b14_id)
);
Insert into lotofacil.lotofacil_id_b1_a_b14(
     b1_a_b14_id,
     b1,
     b2,
     b3,
     b4,
     b5,
     b6,
     b7,
     b8,
     b9,
     b10,
     b11,
     b12,
     b13,
     b14
)
Select grp_id,
     bola1,
     bola2,
     bola3,
     bola4,
     bola5,
     bola6,
     bola7,
     bola8,
     bola9,
     bola10,
     bola11,
     bola12,
     bola13,
     bola14
from lotofacil.lotofacil_id_grupo_14_bolas
where bola1 >= 1 and bola1 <= 11
 order by bola1, bola2, bola3, bola4, bola5, bola6, bola7, bola8, bola9, bola10, bola11, bola12, bola13, bola14;
/*
Cada coluna tem a menor e a maior bola que pode estar
naquela posição, por exemplo, na coluna b1, pode ter
no máximo até a bola 11, vc nunca verá uma bola 12 nesta posição
*/



/*
TABELA:   lotofacil_id_b1_a_b15##
Objetivo: Armazena um identificador pra a combinação de 15 bolas válidas, iniciando da esquerda
pra direita, a partir da coluna B1 considerando todas as bolas adjacentes a direita até chegar
 na coluna B15.
Por exemplo, se a tabela é lotofacil_id_b1_a_b5, então,
a tabela irá armazenar as combinações de bolas que é possível
nas posições b1, b2, b3, b4, b5, na coluna b1, por exemplo, é
possível armazenar as bolas 1 até 11
Os ids das combinações corresponde ao deslocamento de 25 bolas,
tais ids corresponde aos ids de grupos considerando a quantidade de
 de bolas pra aquela combinação.
*/
Drop table if exists lotofacil.lotofacil_id_b1_a_b15;
Create table lotofacil.lotofacil_id_b1_a_b15(
     b1_a_b15_id numeric not null,
     b1 numeric not null,
     b2 numeric not null,
     b3 numeric not null,
     b4 numeric not null,
     b5 numeric not null,
     b6 numeric not null,
     b7 numeric not null,
     b8 numeric not null,
     b9 numeric not null,
     b10 numeric not null,
     b11 numeric not null,
     b12 numeric not null,
     b13 numeric not null,
     b14 numeric not null,
     b15 numeric not null,
     constraint lotofacil_id_b1_a_b15_pk primary key(b1_a_b15_id)
);
Insert into lotofacil.lotofacil_id_b1_a_b15(
     b1_a_b15_id,
     b1,
     b2,
     b3,
     b4,
     b5,
     b6,
     b7,
     b8,
     b9,
     b10,
     b11,
     b12,
     b13,
     b14,
     b15
)
Select grp_id,
     bola1,
     bola2,
     bola3,
     bola4,
     bola5,
     bola6,
     bola7,
     bola8,
     bola9,
     bola10,
     bola11,
     bola12,
     bola13,
     bola14,
     bola15
from lotofacil.lotofacil_id_grupo_15_bolas
where bola1 >= 1 and bola1 <= 11
 order by bola1, bola2, bola3, bola4, bola5, bola6, bola7, bola8, bola9, bola10, bola11, bola12, bola13, bola14, bola15;
/*
Cada coluna tem a menor e a maior bola que pode estar
naquela posição, por exemplo, na coluna b1, pode ter
no máximo até a bola 11, vc nunca verá uma bola 12 nesta posição
*/



/*
TABELA:   lotofacil_id_b2_a_b2##
Objetivo: Armazena um identificador pra a combinação de 1 bolas válidas, iniciando da esquerda
pra direita, a partir da coluna B2 considerando todas as bolas adjacentes a direita até chegar
 na coluna B2.
Por exemplo, se a tabela é lotofacil_id_b1_a_b5, então,
a tabela irá armazenar as combinações de bolas que é possível
nas posições b1, b2, b3, b4, b5, na coluna b1, por exemplo, é
possível armazenar as bolas 1 até 11
Os ids das combinações corresponde ao deslocamento de 25 bolas,
tais ids corresponde aos ids de grupos considerando a quantidade de
 de bolas pra aquela combinação.
*/
Drop table if exists lotofacil.lotofacil_id_b2_a_b2;
Create table lotofacil.lotofacil_id_b2_a_b2(
     b2_a_b2_id numeric not null,
     b2 numeric not null,
     constraint lotofacil_id_b2_a_b2_pk primary key(b2_a_b2_id)
);
Insert into lotofacil.lotofacil_id_b2_a_b2(
     b2_a_b2_id,
     b2
)
Select grp_id,
     bola1
from lotofacil.lotofacil_id_grupo_1_bola
where bola1 >= 2 and bola1 <= 12
 order by bola1;
/*
Cada coluna tem a menor e a maior bola que pode estar
naquela posição, por exemplo, na coluna b1, pode ter
no máximo até a bola 11, vc nunca verá uma bola 12 nesta posição
*/



/*
TABELA:   lotofacil_id_b2_a_b3##
Objetivo: Armazena um identificador pra a combinação de 2 bolas válidas, iniciando da esquerda
pra direita, a partir da coluna B2 considerando todas as bolas adjacentes a direita até chegar
 na coluna B3.
Por exemplo, se a tabela é lotofacil_id_b1_a_b5, então,
a tabela irá armazenar as combinações de bolas que é possível
nas posições b1, b2, b3, b4, b5, na coluna b1, por exemplo, é
possível armazenar as bolas 1 até 11
Os ids das combinações corresponde ao deslocamento de 25 bolas,
tais ids corresponde aos ids de grupos considerando a quantidade de
 de bolas pra aquela combinação.
*/
Drop table if exists lotofacil.lotofacil_id_b2_a_b3;
Create table lotofacil.lotofacil_id_b2_a_b3(
     b2_a_b3_id numeric not null,
     b2 numeric not null,
     b3 numeric not null,
     constraint lotofacil_id_b2_a_b3_pk primary key(b2_a_b3_id)
);
Insert into lotofacil.lotofacil_id_b2_a_b3(
     b2_a_b3_id,
     b2,
     b3
)
Select grp_id,
     bola1,
     bola2
from lotofacil.lotofacil_id_grupo_2_bolas
where bola1 >= 2 and bola1 <= 12
 order by bola1, bola2;
/*
Cada coluna tem a menor e a maior bola que pode estar
naquela posição, por exemplo, na coluna b1, pode ter
no máximo até a bola 11, vc nunca verá uma bola 12 nesta posição
*/



/*
TABELA:   lotofacil_id_b2_a_b4##
Objetivo: Armazena um identificador pra a combinação de 3 bolas válidas, iniciando da esquerda
pra direita, a partir da coluna B2 considerando todas as bolas adjacentes a direita até chegar
 na coluna B4.
Por exemplo, se a tabela é lotofacil_id_b1_a_b5, então,
a tabela irá armazenar as combinações de bolas que é possível
nas posições b1, b2, b3, b4, b5, na coluna b1, por exemplo, é
possível armazenar as bolas 1 até 11
Os ids das combinações corresponde ao deslocamento de 25 bolas,
tais ids corresponde aos ids de grupos considerando a quantidade de
 de bolas pra aquela combinação.
*/
Drop table if exists lotofacil.lotofacil_id_b2_a_b4;
Create table lotofacil.lotofacil_id_b2_a_b4(
     b2_a_b4_id numeric not null,
     b2 numeric not null,
     b3 numeric not null,
     b4 numeric not null,
     constraint lotofacil_id_b2_a_b4_pk primary key(b2_a_b4_id)
);
Insert into lotofacil.lotofacil_id_b2_a_b4(
     b2_a_b4_id,
     b2,
     b3,
     b4
)
Select grp_id,
     bola1,
     bola2,
     bola3
from lotofacil.lotofacil_id_grupo_3_bolas
where bola1 >= 2 and bola1 <= 12
 order by bola1, bola2, bola3;
/*
Cada coluna tem a menor e a maior bola que pode estar
naquela posição, por exemplo, na coluna b1, pode ter
no máximo até a bola 11, vc nunca verá uma bola 12 nesta posição
*/



/*
TABELA:   lotofacil_id_b2_a_b5##
Objetivo: Armazena um identificador pra a combinação de 4 bolas válidas, iniciando da esquerda
pra direita, a partir da coluna B2 considerando todas as bolas adjacentes a direita até chegar
 na coluna B5.
Por exemplo, se a tabela é lotofacil_id_b1_a_b5, então,
a tabela irá armazenar as combinações de bolas que é possível
nas posições b1, b2, b3, b4, b5, na coluna b1, por exemplo, é
possível armazenar as bolas 1 até 11
Os ids das combinações corresponde ao deslocamento de 25 bolas,
tais ids corresponde aos ids de grupos considerando a quantidade de
 de bolas pra aquela combinação.
*/
Drop table if exists lotofacil.lotofacil_id_b2_a_b5;
Create table lotofacil.lotofacil_id_b2_a_b5(
     b2_a_b5_id numeric not null,
     b2 numeric not null,
     b3 numeric not null,
     b4 numeric not null,
     b5 numeric not null,
     constraint lotofacil_id_b2_a_b5_pk primary key(b2_a_b5_id)
);
Insert into lotofacil.lotofacil_id_b2_a_b5(
     b2_a_b5_id,
     b2,
     b3,
     b4,
     b5
)
Select grp_id,
     bola1,
     bola2,
     bola3,
     bola4
from lotofacil.lotofacil_id_grupo_4_bolas
where bola1 >= 2 and bola1 <= 12
 order by bola1, bola2, bola3, bola4;
/*
Cada coluna tem a menor e a maior bola que pode estar
naquela posição, por exemplo, na coluna b1, pode ter
no máximo até a bola 11, vc nunca verá uma bola 12 nesta posição
*/



/*
TABELA:   lotofacil_id_b2_a_b6##
Objetivo: Armazena um identificador pra a combinação de 5 bolas válidas, iniciando da esquerda
pra direita, a partir da coluna B2 considerando todas as bolas adjacentes a direita até chegar
 na coluna B6.
Por exemplo, se a tabela é lotofacil_id_b1_a_b5, então,
a tabela irá armazenar as combinações de bolas que é possível
nas posições b1, b2, b3, b4, b5, na coluna b1, por exemplo, é
possível armazenar as bolas 1 até 11
Os ids das combinações corresponde ao deslocamento de 25 bolas,
tais ids corresponde aos ids de grupos considerando a quantidade de
 de bolas pra aquela combinação.
*/
Drop table if exists lotofacil.lotofacil_id_b2_a_b6;
Create table lotofacil.lotofacil_id_b2_a_b6(
     b2_a_b6_id numeric not null,
     b2 numeric not null,
     b3 numeric not null,
     b4 numeric not null,
     b5 numeric not null,
     b6 numeric not null,
     constraint lotofacil_id_b2_a_b6_pk primary key(b2_a_b6_id)
);
Insert into lotofacil.lotofacil_id_b2_a_b6(
     b2_a_b6_id,
     b2,
     b3,
     b4,
     b5,
     b6
)
Select grp_id,
     bola1,
     bola2,
     bola3,
     bola4,
     bola5
from lotofacil.lotofacil_id_grupo_5_bolas
where bola1 >= 2 and bola1 <= 12
 order by bola1, bola2, bola3, bola4, bola5;
/*
Cada coluna tem a menor e a maior bola que pode estar
naquela posição, por exemplo, na coluna b1, pode ter
no máximo até a bola 11, vc nunca verá uma bola 12 nesta posição
*/



/*
TABELA:   lotofacil_id_b2_a_b7##
Objetivo: Armazena um identificador pra a combinação de 6 bolas válidas, iniciando da esquerda
pra direita, a partir da coluna B2 considerando todas as bolas adjacentes a direita até chegar
 na coluna B7.
Por exemplo, se a tabela é lotofacil_id_b1_a_b5, então,
a tabela irá armazenar as combinações de bolas que é possível
nas posições b1, b2, b3, b4, b5, na coluna b1, por exemplo, é
possível armazenar as bolas 1 até 11
Os ids das combinações corresponde ao deslocamento de 25 bolas,
tais ids corresponde aos ids de grupos considerando a quantidade de
 de bolas pra aquela combinação.
*/
Drop table if exists lotofacil.lotofacil_id_b2_a_b7;
Create table lotofacil.lotofacil_id_b2_a_b7(
     b2_a_b7_id numeric not null,
     b2 numeric not null,
     b3 numeric not null,
     b4 numeric not null,
     b5 numeric not null,
     b6 numeric not null,
     b7 numeric not null,
     constraint lotofacil_id_b2_a_b7_pk primary key(b2_a_b7_id)
);
Insert into lotofacil.lotofacil_id_b2_a_b7(
     b2_a_b7_id,
     b2,
     b3,
     b4,
     b5,
     b6,
     b7
)
Select grp_id,
     bola1,
     bola2,
     bola3,
     bola4,
     bola5,
     bola6
from lotofacil.lotofacil_id_grupo_6_bolas
where bola1 >= 2 and bola1 <= 12
 order by bola1, bola2, bola3, bola4, bola5, bola6;
/*
Cada coluna tem a menor e a maior bola que pode estar
naquela posição, por exemplo, na coluna b1, pode ter
no máximo até a bola 11, vc nunca verá uma bola 12 nesta posição
*/



/*
TABELA:   lotofacil_id_b2_a_b8##
Objetivo: Armazena um identificador pra a combinação de 7 bolas válidas, iniciando da esquerda
pra direita, a partir da coluna B2 considerando todas as bolas adjacentes a direita até chegar
 na coluna B8.
Por exemplo, se a tabela é lotofacil_id_b1_a_b5, então,
a tabela irá armazenar as combinações de bolas que é possível
nas posições b1, b2, b3, b4, b5, na coluna b1, por exemplo, é
possível armazenar as bolas 1 até 11
Os ids das combinações corresponde ao deslocamento de 25 bolas,
tais ids corresponde aos ids de grupos considerando a quantidade de
 de bolas pra aquela combinação.
*/
Drop table if exists lotofacil.lotofacil_id_b2_a_b8;
Create table lotofacil.lotofacil_id_b2_a_b8(
     b2_a_b8_id numeric not null,
     b2 numeric not null,
     b3 numeric not null,
     b4 numeric not null,
     b5 numeric not null,
     b6 numeric not null,
     b7 numeric not null,
     b8 numeric not null,
     constraint lotofacil_id_b2_a_b8_pk primary key(b2_a_b8_id)
);
Insert into lotofacil.lotofacil_id_b2_a_b8(
     b2_a_b8_id,
     b2,
     b3,
     b4,
     b5,
     b6,
     b7,
     b8
)
Select grp_id,
     bola1,
     bola2,
     bola3,
     bola4,
     bola5,
     bola6,
     bola7
from lotofacil.lotofacil_id_grupo_7_bolas
where bola1 >= 2 and bola1 <= 12
 order by bola1, bola2, bola3, bola4, bola5, bola6, bola7;
/*
Cada coluna tem a menor e a maior bola que pode estar
naquela posição, por exemplo, na coluna b1, pode ter
no máximo até a bola 11, vc nunca verá uma bola 12 nesta posição
*/



/*
TABELA:   lotofacil_id_b2_a_b9##
Objetivo: Armazena um identificador pra a combinação de 8 bolas válidas, iniciando da esquerda
pra direita, a partir da coluna B2 considerando todas as bolas adjacentes a direita até chegar
 na coluna B9.
Por exemplo, se a tabela é lotofacil_id_b1_a_b5, então,
a tabela irá armazenar as combinações de bolas que é possível
nas posições b1, b2, b3, b4, b5, na coluna b1, por exemplo, é
possível armazenar as bolas 1 até 11
Os ids das combinações corresponde ao deslocamento de 25 bolas,
tais ids corresponde aos ids de grupos considerando a quantidade de
 de bolas pra aquela combinação.
*/
Drop table if exists lotofacil.lotofacil_id_b2_a_b9;
Create table lotofacil.lotofacil_id_b2_a_b9(
     b2_a_b9_id numeric not null,
     b2 numeric not null,
     b3 numeric not null,
     b4 numeric not null,
     b5 numeric not null,
     b6 numeric not null,
     b7 numeric not null,
     b8 numeric not null,
     b9 numeric not null,
     constraint lotofacil_id_b2_a_b9_pk primary key(b2_a_b9_id)
);
Insert into lotofacil.lotofacil_id_b2_a_b9(
     b2_a_b9_id,
     b2,
     b3,
     b4,
     b5,
     b6,
     b7,
     b8,
     b9
)
Select grp_id,
     bola1,
     bola2,
     bola3,
     bola4,
     bola5,
     bola6,
     bola7,
     bola8
from lotofacil.lotofacil_id_grupo_8_bolas
where bola1 >= 2 and bola1 <= 12
 order by bola1, bola2, bola3, bola4, bola5, bola6, bola7, bola8;
/*
Cada coluna tem a menor e a maior bola que pode estar
naquela posição, por exemplo, na coluna b1, pode ter
no máximo até a bola 11, vc nunca verá uma bola 12 nesta posição
*/



/*
TABELA:   lotofacil_id_b2_a_b10##
Objetivo: Armazena um identificador pra a combinação de 9 bolas válidas, iniciando da esquerda
pra direita, a partir da coluna B2 considerando todas as bolas adjacentes a direita até chegar
 na coluna B10.
Por exemplo, se a tabela é lotofacil_id_b1_a_b5, então,
a tabela irá armazenar as combinações de bolas que é possível
nas posições b1, b2, b3, b4, b5, na coluna b1, por exemplo, é
possível armazenar as bolas 1 até 11
Os ids das combinações corresponde ao deslocamento de 25 bolas,
tais ids corresponde aos ids de grupos considerando a quantidade de
 de bolas pra aquela combinação.
*/
Drop table if exists lotofacil.lotofacil_id_b2_a_b10;
Create table lotofacil.lotofacil_id_b2_a_b10(
     b2_a_b10_id numeric not null,
     b2 numeric not null,
     b3 numeric not null,
     b4 numeric not null,
     b5 numeric not null,
     b6 numeric not null,
     b7 numeric not null,
     b8 numeric not null,
     b9 numeric not null,
     b10 numeric not null,
     constraint lotofacil_id_b2_a_b10_pk primary key(b2_a_b10_id)
);
Insert into lotofacil.lotofacil_id_b2_a_b10(
     b2_a_b10_id,
     b2,
     b3,
     b4,
     b5,
     b6,
     b7,
     b8,
     b9,
     b10
)
Select grp_id,
     bola1,
     bola2,
     bola3,
     bola4,
     bola5,
     bola6,
     bola7,
     bola8,
     bola9
from lotofacil.lotofacil_id_grupo_9_bolas
where bola1 >= 2 and bola1 <= 12
 order by bola1, bola2, bola3, bola4, bola5, bola6, bola7, bola8, bola9;
/*
Cada coluna tem a menor e a maior bola que pode estar
naquela posição, por exemplo, na coluna b1, pode ter
no máximo até a bola 11, vc nunca verá uma bola 12 nesta posição
*/



/*
TABELA:   lotofacil_id_b2_a_b11##
Objetivo: Armazena um identificador pra a combinação de 10 bolas válidas, iniciando da esquerda
pra direita, a partir da coluna B2 considerando todas as bolas adjacentes a direita até chegar
 na coluna B11.
Por exemplo, se a tabela é lotofacil_id_b1_a_b5, então,
a tabela irá armazenar as combinações de bolas que é possível
nas posições b1, b2, b3, b4, b5, na coluna b1, por exemplo, é
possível armazenar as bolas 1 até 11
Os ids das combinações corresponde ao deslocamento de 25 bolas,
tais ids corresponde aos ids de grupos considerando a quantidade de
 de bolas pra aquela combinação.
*/
Drop table if exists lotofacil.lotofacil_id_b2_a_b11;
Create table lotofacil.lotofacil_id_b2_a_b11(
     b2_a_b11_id numeric not null,
     b2 numeric not null,
     b3 numeric not null,
     b4 numeric not null,
     b5 numeric not null,
     b6 numeric not null,
     b7 numeric not null,
     b8 numeric not null,
     b9 numeric not null,
     b10 numeric not null,
     b11 numeric not null,
     constraint lotofacil_id_b2_a_b11_pk primary key(b2_a_b11_id)
);
Insert into lotofacil.lotofacil_id_b2_a_b11(
     b2_a_b11_id,
     b2,
     b3,
     b4,
     b5,
     b6,
     b7,
     b8,
     b9,
     b10,
     b11
)
Select grp_id,
     bola1,
     bola2,
     bola3,
     bola4,
     bola5,
     bola6,
     bola7,
     bola8,
     bola9,
     bola10
from lotofacil.lotofacil_id_grupo_10_bolas
where bola1 >= 2 and bola1 <= 12
 order by bola1, bola2, bola3, bola4, bola5, bola6, bola7, bola8, bola9, bola10;
/*
Cada coluna tem a menor e a maior bola que pode estar
naquela posição, por exemplo, na coluna b1, pode ter
no máximo até a bola 11, vc nunca verá uma bola 12 nesta posição
*/



/*
TABELA:   lotofacil_id_b2_a_b12##
Objetivo: Armazena um identificador pra a combinação de 11 bolas válidas, iniciando da esquerda
pra direita, a partir da coluna B2 considerando todas as bolas adjacentes a direita até chegar
 na coluna B12.
Por exemplo, se a tabela é lotofacil_id_b1_a_b5, então,
a tabela irá armazenar as combinações de bolas que é possível
nas posições b1, b2, b3, b4, b5, na coluna b1, por exemplo, é
possível armazenar as bolas 1 até 11
Os ids das combinações corresponde ao deslocamento de 25 bolas,
tais ids corresponde aos ids de grupos considerando a quantidade de
 de bolas pra aquela combinação.
*/
Drop table if exists lotofacil.lotofacil_id_b2_a_b12;
Create table lotofacil.lotofacil_id_b2_a_b12(
     b2_a_b12_id numeric not null,
     b2 numeric not null,
     b3 numeric not null,
     b4 numeric not null,
     b5 numeric not null,
     b6 numeric not null,
     b7 numeric not null,
     b8 numeric not null,
     b9 numeric not null,
     b10 numeric not null,
     b11 numeric not null,
     b12 numeric not null,
     constraint lotofacil_id_b2_a_b12_pk primary key(b2_a_b12_id)
);
Insert into lotofacil.lotofacil_id_b2_a_b12(
     b2_a_b12_id,
     b2,
     b3,
     b4,
     b5,
     b6,
     b7,
     b8,
     b9,
     b10,
     b11,
     b12
)
Select grp_id,
     bola1,
     bola2,
     bola3,
     bola4,
     bola5,
     bola6,
     bola7,
     bola8,
     bola9,
     bola10,
     bola11
from lotofacil.lotofacil_id_grupo_11_bolas
where bola1 >= 2 and bola1 <= 12
 order by bola1, bola2, bola3, bola4, bola5, bola6, bola7, bola8, bola9, bola10, bola11;
/*
Cada coluna tem a menor e a maior bola que pode estar
naquela posição, por exemplo, na coluna b1, pode ter
no máximo até a bola 11, vc nunca verá uma bola 12 nesta posição
*/



/*
TABELA:   lotofacil_id_b2_a_b13##
Objetivo: Armazena um identificador pra a combinação de 12 bolas válidas, iniciando da esquerda
pra direita, a partir da coluna B2 considerando todas as bolas adjacentes a direita até chegar
 na coluna B13.
Por exemplo, se a tabela é lotofacil_id_b1_a_b5, então,
a tabela irá armazenar as combinações de bolas que é possível
nas posições b1, b2, b3, b4, b5, na coluna b1, por exemplo, é
possível armazenar as bolas 1 até 11
Os ids das combinações corresponde ao deslocamento de 25 bolas,
tais ids corresponde aos ids de grupos considerando a quantidade de
 de bolas pra aquela combinação.
*/
Drop table if exists lotofacil.lotofacil_id_b2_a_b13;
Create table lotofacil.lotofacil_id_b2_a_b13(
     b2_a_b13_id numeric not null,
     b2 numeric not null,
     b3 numeric not null,
     b4 numeric not null,
     b5 numeric not null,
     b6 numeric not null,
     b7 numeric not null,
     b8 numeric not null,
     b9 numeric not null,
     b10 numeric not null,
     b11 numeric not null,
     b12 numeric not null,
     b13 numeric not null,
     constraint lotofacil_id_b2_a_b13_pk primary key(b2_a_b13_id)
);
Insert into lotofacil.lotofacil_id_b2_a_b13(
     b2_a_b13_id,
     b2,
     b3,
     b4,
     b5,
     b6,
     b7,
     b8,
     b9,
     b10,
     b11,
     b12,
     b13
)
Select grp_id,
     bola1,
     bola2,
     bola3,
     bola4,
     bola5,
     bola6,
     bola7,
     bola8,
     bola9,
     bola10,
     bola11,
     bola12
from lotofacil.lotofacil_id_grupo_12_bolas
where bola1 >= 2 and bola1 <= 12
 order by bola1, bola2, bola3, bola4, bola5, bola6, bola7, bola8, bola9, bola10, bola11, bola12;
/*
Cada coluna tem a menor e a maior bola que pode estar
naquela posição, por exemplo, na coluna b1, pode ter
no máximo até a bola 11, vc nunca verá uma bola 12 nesta posição
*/



/*
TABELA:   lotofacil_id_b2_a_b14##
Objetivo: Armazena um identificador pra a combinação de 13 bolas válidas, iniciando da esquerda
pra direita, a partir da coluna B2 considerando todas as bolas adjacentes a direita até chegar
 na coluna B14.
Por exemplo, se a tabela é lotofacil_id_b1_a_b5, então,
a tabela irá armazenar as combinações de bolas que é possível
nas posições b1, b2, b3, b4, b5, na coluna b1, por exemplo, é
possível armazenar as bolas 1 até 11
Os ids das combinações corresponde ao deslocamento de 25 bolas,
tais ids corresponde aos ids de grupos considerando a quantidade de
 de bolas pra aquela combinação.
*/
Drop table if exists lotofacil.lotofacil_id_b2_a_b14;
Create table lotofacil.lotofacil_id_b2_a_b14(
     b2_a_b14_id numeric not null,
     b2 numeric not null,
     b3 numeric not null,
     b4 numeric not null,
     b5 numeric not null,
     b6 numeric not null,
     b7 numeric not null,
     b8 numeric not null,
     b9 numeric not null,
     b10 numeric not null,
     b11 numeric not null,
     b12 numeric not null,
     b13 numeric not null,
     b14 numeric not null,
     constraint lotofacil_id_b2_a_b14_pk primary key(b2_a_b14_id)
);
Insert into lotofacil.lotofacil_id_b2_a_b14(
     b2_a_b14_id,
     b2,
     b3,
     b4,
     b5,
     b6,
     b7,
     b8,
     b9,
     b10,
     b11,
     b12,
     b13,
     b14
)
Select grp_id,
     bola1,
     bola2,
     bola3,
     bola4,
     bola5,
     bola6,
     bola7,
     bola8,
     bola9,
     bola10,
     bola11,
     bola12,
     bola13
from lotofacil.lotofacil_id_grupo_13_bolas
where bola1 >= 2 and bola1 <= 12
 order by bola1, bola2, bola3, bola4, bola5, bola6, bola7, bola8, bola9, bola10, bola11, bola12, bola13;
/*
Cada coluna tem a menor e a maior bola que pode estar
naquela posição, por exemplo, na coluna b1, pode ter
no máximo até a bola 11, vc nunca verá uma bola 12 nesta posição
*/



/*
TABELA:   lotofacil_id_b2_a_b15##
Objetivo: Armazena um identificador pra a combinação de 14 bolas válidas, iniciando da esquerda
pra direita, a partir da coluna B2 considerando todas as bolas adjacentes a direita até chegar
 na coluna B15.
Por exemplo, se a tabela é lotofacil_id_b1_a_b5, então,
a tabela irá armazenar as combinações de bolas que é possível
nas posições b1, b2, b3, b4, b5, na coluna b1, por exemplo, é
possível armazenar as bolas 1 até 11
Os ids das combinações corresponde ao deslocamento de 25 bolas,
tais ids corresponde aos ids de grupos considerando a quantidade de
 de bolas pra aquela combinação.
*/
Drop table if exists lotofacil.lotofacil_id_b2_a_b15;
Create table lotofacil.lotofacil_id_b2_a_b15(
     b2_a_b15_id numeric not null,
     b2 numeric not null,
     b3 numeric not null,
     b4 numeric not null,
     b5 numeric not null,
     b6 numeric not null,
     b7 numeric not null,
     b8 numeric not null,
     b9 numeric not null,
     b10 numeric not null,
     b11 numeric not null,
     b12 numeric not null,
     b13 numeric not null,
     b14 numeric not null,
     b15 numeric not null,
     constraint lotofacil_id_b2_a_b15_pk primary key(b2_a_b15_id)
);
Insert into lotofacil.lotofacil_id_b2_a_b15(
     b2_a_b15_id,
     b2,
     b3,
     b4,
     b5,
     b6,
     b7,
     b8,
     b9,
     b10,
     b11,
     b12,
     b13,
     b14,
     b15
)
Select grp_id,
     bola1,
     bola2,
     bola3,
     bola4,
     bola5,
     bola6,
     bola7,
     bola8,
     bola9,
     bola10,
     bola11,
     bola12,
     bola13,
     bola14
from lotofacil.lotofacil_id_grupo_14_bolas
where bola1 >= 2 and bola1 <= 12
 order by bola1, bola2, bola3, bola4, bola5, bola6, bola7, bola8, bola9, bola10, bola11, bola12, bola13, bola14;
/*
Cada coluna tem a menor e a maior bola que pode estar
naquela posição, por exemplo, na coluna b1, pode ter
no máximo até a bola 11, vc nunca verá uma bola 12 nesta posição
*/



/*
TABELA:   lotofacil_id_b3_a_b3##
Objetivo: Armazena um identificador pra a combinação de 1 bolas válidas, iniciando da esquerda
pra direita, a partir da coluna B3 considerando todas as bolas adjacentes a direita até chegar
 na coluna B3.
Por exemplo, se a tabela é lotofacil_id_b1_a_b5, então,
a tabela irá armazenar as combinações de bolas que é possível
nas posições b1, b2, b3, b4, b5, na coluna b1, por exemplo, é
possível armazenar as bolas 1 até 11
Os ids das combinações corresponde ao deslocamento de 25 bolas,
tais ids corresponde aos ids de grupos considerando a quantidade de
 de bolas pra aquela combinação.
*/
Drop table if exists lotofacil.lotofacil_id_b3_a_b3;
Create table lotofacil.lotofacil_id_b3_a_b3(
     b3_a_b3_id numeric not null,
     b3 numeric not null,
     constraint lotofacil_id_b3_a_b3_pk primary key(b3_a_b3_id)
);
Insert into lotofacil.lotofacil_id_b3_a_b3(
     b3_a_b3_id,
     b3
)
Select grp_id,
     bola1
from lotofacil.lotofacil_id_grupo_1_bola
where bola1 >= 3 and bola1 <= 13
 order by bola1;
/*
Cada coluna tem a menor e a maior bola que pode estar
naquela posição, por exemplo, na coluna b1, pode ter
no máximo até a bola 11, vc nunca verá uma bola 12 nesta posição
*/



/*
TABELA:   lotofacil_id_b3_a_b4##
Objetivo: Armazena um identificador pra a combinação de 2 bolas válidas, iniciando da esquerda
pra direita, a partir da coluna B3 considerando todas as bolas adjacentes a direita até chegar
 na coluna B4.
Por exemplo, se a tabela é lotofacil_id_b1_a_b5, então,
a tabela irá armazenar as combinações de bolas que é possível
nas posições b1, b2, b3, b4, b5, na coluna b1, por exemplo, é
possível armazenar as bolas 1 até 11
Os ids das combinações corresponde ao deslocamento de 25 bolas,
tais ids corresponde aos ids de grupos considerando a quantidade de
 de bolas pra aquela combinação.
*/
Drop table if exists lotofacil.lotofacil_id_b3_a_b4;
Create table lotofacil.lotofacil_id_b3_a_b4(
     b3_a_b4_id numeric not null,
     b3 numeric not null,
     b4 numeric not null,
     constraint lotofacil_id_b3_a_b4_pk primary key(b3_a_b4_id)
);
Insert into lotofacil.lotofacil_id_b3_a_b4(
     b3_a_b4_id,
     b3,
     b4
)
Select grp_id,
     bola1,
     bola2
from lotofacil.lotofacil_id_grupo_2_bolas
where bola1 >= 3 and bola1 <= 13
 order by bola1, bola2;
/*
Cada coluna tem a menor e a maior bola que pode estar
naquela posição, por exemplo, na coluna b1, pode ter
no máximo até a bola 11, vc nunca verá uma bola 12 nesta posição
*/



/*
TABELA:   lotofacil_id_b3_a_b5##
Objetivo: Armazena um identificador pra a combinação de 3 bolas válidas, iniciando da esquerda
pra direita, a partir da coluna B3 considerando todas as bolas adjacentes a direita até chegar
 na coluna B5.
Por exemplo, se a tabela é lotofacil_id_b1_a_b5, então,
a tabela irá armazenar as combinações de bolas que é possível
nas posições b1, b2, b3, b4, b5, na coluna b1, por exemplo, é
possível armazenar as bolas 1 até 11
Os ids das combinações corresponde ao deslocamento de 25 bolas,
tais ids corresponde aos ids de grupos considerando a quantidade de
 de bolas pra aquela combinação.
*/
Drop table if exists lotofacil.lotofacil_id_b3_a_b5;
Create table lotofacil.lotofacil_id_b3_a_b5(
     b3_a_b5_id numeric not null,
     b3 numeric not null,
     b4 numeric not null,
     b5 numeric not null,
     constraint lotofacil_id_b3_a_b5_pk primary key(b3_a_b5_id)
);
Insert into lotofacil.lotofacil_id_b3_a_b5(
     b3_a_b5_id,
     b3,
     b4,
     b5
)
Select grp_id,
     bola1,
     bola2,
     bola3
from lotofacil.lotofacil_id_grupo_3_bolas
where bola1 >= 3 and bola1 <= 13
 order by bola1, bola2, bola3;
/*
Cada coluna tem a menor e a maior bola que pode estar
naquela posição, por exemplo, na coluna b1, pode ter
no máximo até a bola 11, vc nunca verá uma bola 12 nesta posição
*/



/*
TABELA:   lotofacil_id_b3_a_b6##
Objetivo: Armazena um identificador pra a combinação de 4 bolas válidas, iniciando da esquerda
pra direita, a partir da coluna B3 considerando todas as bolas adjacentes a direita até chegar
 na coluna B6.
Por exemplo, se a tabela é lotofacil_id_b1_a_b5, então,
a tabela irá armazenar as combinações de bolas que é possível
nas posições b1, b2, b3, b4, b5, na coluna b1, por exemplo, é
possível armazenar as bolas 1 até 11
Os ids das combinações corresponde ao deslocamento de 25 bolas,
tais ids corresponde aos ids de grupos considerando a quantidade de
 de bolas pra aquela combinação.
*/
Drop table if exists lotofacil.lotofacil_id_b3_a_b6;
Create table lotofacil.lotofacil_id_b3_a_b6(
     b3_a_b6_id numeric not null,
     b3 numeric not null,
     b4 numeric not null,
     b5 numeric not null,
     b6 numeric not null,
     constraint lotofacil_id_b3_a_b6_pk primary key(b3_a_b6_id)
);
Insert into lotofacil.lotofacil_id_b3_a_b6(
     b3_a_b6_id,
     b3,
     b4,
     b5,
     b6
)
Select grp_id,
     bola1,
     bola2,
     bola3,
     bola4
from lotofacil.lotofacil_id_grupo_4_bolas
where bola1 >= 3 and bola1 <= 13
 order by bola1, bola2, bola3, bola4;
/*
Cada coluna tem a menor e a maior bola que pode estar
naquela posição, por exemplo, na coluna b1, pode ter
no máximo até a bola 11, vc nunca verá uma bola 12 nesta posição
*/



/*
TABELA:   lotofacil_id_b3_a_b7##
Objetivo: Armazena um identificador pra a combinação de 5 bolas válidas, iniciando da esquerda
pra direita, a partir da coluna B3 considerando todas as bolas adjacentes a direita até chegar
 na coluna B7.
Por exemplo, se a tabela é lotofacil_id_b1_a_b5, então,
a tabela irá armazenar as combinações de bolas que é possível
nas posições b1, b2, b3, b4, b5, na coluna b1, por exemplo, é
possível armazenar as bolas 1 até 11
Os ids das combinações corresponde ao deslocamento de 25 bolas,
tais ids corresponde aos ids de grupos considerando a quantidade de
 de bolas pra aquela combinação.
*/
Drop table if exists lotofacil.lotofacil_id_b3_a_b7;
Create table lotofacil.lotofacil_id_b3_a_b7(
     b3_a_b7_id numeric not null,
     b3 numeric not null,
     b4 numeric not null,
     b5 numeric not null,
     b6 numeric not null,
     b7 numeric not null,
     constraint lotofacil_id_b3_a_b7_pk primary key(b3_a_b7_id)
);
Insert into lotofacil.lotofacil_id_b3_a_b7(
     b3_a_b7_id,
     b3,
     b4,
     b5,
     b6,
     b7
)
Select grp_id,
     bola1,
     bola2,
     bola3,
     bola4,
     bola5
from lotofacil.lotofacil_id_grupo_5_bolas
where bola1 >= 3 and bola1 <= 13
 order by bola1, bola2, bola3, bola4, bola5;
/*
Cada coluna tem a menor e a maior bola que pode estar
naquela posição, por exemplo, na coluna b1, pode ter
no máximo até a bola 11, vc nunca verá uma bola 12 nesta posição
*/



/*
TABELA:   lotofacil_id_b3_a_b8##
Objetivo: Armazena um identificador pra a combinação de 6 bolas válidas, iniciando da esquerda
pra direita, a partir da coluna B3 considerando todas as bolas adjacentes a direita até chegar
 na coluna B8.
Por exemplo, se a tabela é lotofacil_id_b1_a_b5, então,
a tabela irá armazenar as combinações de bolas que é possível
nas posições b1, b2, b3, b4, b5, na coluna b1, por exemplo, é
possível armazenar as bolas 1 até 11
Os ids das combinações corresponde ao deslocamento de 25 bolas,
tais ids corresponde aos ids de grupos considerando a quantidade de
 de bolas pra aquela combinação.
*/
Drop table if exists lotofacil.lotofacil_id_b3_a_b8;
Create table lotofacil.lotofacil_id_b3_a_b8(
     b3_a_b8_id numeric not null,
     b3 numeric not null,
     b4 numeric not null,
     b5 numeric not null,
     b6 numeric not null,
     b7 numeric not null,
     b8 numeric not null,
     constraint lotofacil_id_b3_a_b8_pk primary key(b3_a_b8_id)
);
Insert into lotofacil.lotofacil_id_b3_a_b8(
     b3_a_b8_id,
     b3,
     b4,
     b5,
     b6,
     b7,
     b8
)
Select grp_id,
     bola1,
     bola2,
     bola3,
     bola4,
     bola5,
     bola6
from lotofacil.lotofacil_id_grupo_6_bolas
where bola1 >= 3 and bola1 <= 13
 order by bola1, bola2, bola3, bola4, bola5, bola6;
/*
Cada coluna tem a menor e a maior bola que pode estar
naquela posição, por exemplo, na coluna b1, pode ter
no máximo até a bola 11, vc nunca verá uma bola 12 nesta posição
*/



/*
TABELA:   lotofacil_id_b3_a_b9##
Objetivo: Armazena um identificador pra a combinação de 7 bolas válidas, iniciando da esquerda
pra direita, a partir da coluna B3 considerando todas as bolas adjacentes a direita até chegar
 na coluna B9.
Por exemplo, se a tabela é lotofacil_id_b1_a_b5, então,
a tabela irá armazenar as combinações de bolas que é possível
nas posições b1, b2, b3, b4, b5, na coluna b1, por exemplo, é
possível armazenar as bolas 1 até 11
Os ids das combinações corresponde ao deslocamento de 25 bolas,
tais ids corresponde aos ids de grupos considerando a quantidade de
 de bolas pra aquela combinação.
*/
Drop table if exists lotofacil.lotofacil_id_b3_a_b9;
Create table lotofacil.lotofacil_id_b3_a_b9(
     b3_a_b9_id numeric not null,
     b3 numeric not null,
     b4 numeric not null,
     b5 numeric not null,
     b6 numeric not null,
     b7 numeric not null,
     b8 numeric not null,
     b9 numeric not null,
     constraint lotofacil_id_b3_a_b9_pk primary key(b3_a_b9_id)
);
Insert into lotofacil.lotofacil_id_b3_a_b9(
     b3_a_b9_id,
     b3,
     b4,
     b5,
     b6,
     b7,
     b8,
     b9
)
Select grp_id,
     bola1,
     bola2,
     bola3,
     bola4,
     bola5,
     bola6,
     bola7
from lotofacil.lotofacil_id_grupo_7_bolas
where bola1 >= 3 and bola1 <= 13
 order by bola1, bola2, bola3, bola4, bola5, bola6, bola7;
/*
Cada coluna tem a menor e a maior bola que pode estar
naquela posição, por exemplo, na coluna b1, pode ter
no máximo até a bola 11, vc nunca verá uma bola 12 nesta posição
*/



/*
TABELA:   lotofacil_id_b3_a_b10##
Objetivo: Armazena um identificador pra a combinação de 8 bolas válidas, iniciando da esquerda
pra direita, a partir da coluna B3 considerando todas as bolas adjacentes a direita até chegar
 na coluna B10.
Por exemplo, se a tabela é lotofacil_id_b1_a_b5, então,
a tabela irá armazenar as combinações de bolas que é possível
nas posições b1, b2, b3, b4, b5, na coluna b1, por exemplo, é
possível armazenar as bolas 1 até 11
Os ids das combinações corresponde ao deslocamento de 25 bolas,
tais ids corresponde aos ids de grupos considerando a quantidade de
 de bolas pra aquela combinação.
*/
Drop table if exists lotofacil.lotofacil_id_b3_a_b10;
Create table lotofacil.lotofacil_id_b3_a_b10(
     b3_a_b10_id numeric not null,
     b3 numeric not null,
     b4 numeric not null,
     b5 numeric not null,
     b6 numeric not null,
     b7 numeric not null,
     b8 numeric not null,
     b9 numeric not null,
     b10 numeric not null,
     constraint lotofacil_id_b3_a_b10_pk primary key(b3_a_b10_id)
);
Insert into lotofacil.lotofacil_id_b3_a_b10(
     b3_a_b10_id,
     b3,
     b4,
     b5,
     b6,
     b7,
     b8,
     b9,
     b10
)
Select grp_id,
     bola1,
     bola2,
     bola3,
     bola4,
     bola5,
     bola6,
     bola7,
     bola8
from lotofacil.lotofacil_id_grupo_8_bolas
where bola1 >= 3 and bola1 <= 13
 order by bola1, bola2, bola3, bola4, bola5, bola6, bola7, bola8;
/*
Cada coluna tem a menor e a maior bola que pode estar
naquela posição, por exemplo, na coluna b1, pode ter
no máximo até a bola 11, vc nunca verá uma bola 12 nesta posição
*/



/*
TABELA:   lotofacil_id_b3_a_b11##
Objetivo: Armazena um identificador pra a combinação de 9 bolas válidas, iniciando da esquerda
pra direita, a partir da coluna B3 considerando todas as bolas adjacentes a direita até chegar
 na coluna B11.
Por exemplo, se a tabela é lotofacil_id_b1_a_b5, então,
a tabela irá armazenar as combinações de bolas que é possível
nas posições b1, b2, b3, b4, b5, na coluna b1, por exemplo, é
possível armazenar as bolas 1 até 11
Os ids das combinações corresponde ao deslocamento de 25 bolas,
tais ids corresponde aos ids de grupos considerando a quantidade de
 de bolas pra aquela combinação.
*/
Drop table if exists lotofacil.lotofacil_id_b3_a_b11;
Create table lotofacil.lotofacil_id_b3_a_b11(
     b3_a_b11_id numeric not null,
     b3 numeric not null,
     b4 numeric not null,
     b5 numeric not null,
     b6 numeric not null,
     b7 numeric not null,
     b8 numeric not null,
     b9 numeric not null,
     b10 numeric not null,
     b11 numeric not null,
     constraint lotofacil_id_b3_a_b11_pk primary key(b3_a_b11_id)
);
Insert into lotofacil.lotofacil_id_b3_a_b11(
     b3_a_b11_id,
     b3,
     b4,
     b5,
     b6,
     b7,
     b8,
     b9,
     b10,
     b11
)
Select grp_id,
     bola1,
     bola2,
     bola3,
     bola4,
     bola5,
     bola6,
     bola7,
     bola8,
     bola9
from lotofacil.lotofacil_id_grupo_9_bolas
where bola1 >= 3 and bola1 <= 13
 order by bola1, bola2, bola3, bola4, bola5, bola6, bola7, bola8, bola9;
/*
Cada coluna tem a menor e a maior bola que pode estar
naquela posição, por exemplo, na coluna b1, pode ter
no máximo até a bola 11, vc nunca verá uma bola 12 nesta posição
*/



/*
TABELA:   lotofacil_id_b3_a_b12##
Objetivo: Armazena um identificador pra a combinação de 10 bolas válidas, iniciando da esquerda
pra direita, a partir da coluna B3 considerando todas as bolas adjacentes a direita até chegar
 na coluna B12.
Por exemplo, se a tabela é lotofacil_id_b1_a_b5, então,
a tabela irá armazenar as combinações de bolas que é possível
nas posições b1, b2, b3, b4, b5, na coluna b1, por exemplo, é
possível armazenar as bolas 1 até 11
Os ids das combinações corresponde ao deslocamento de 25 bolas,
tais ids corresponde aos ids de grupos considerando a quantidade de
 de bolas pra aquela combinação.
*/
Drop table if exists lotofacil.lotofacil_id_b3_a_b12;
Create table lotofacil.lotofacil_id_b3_a_b12(
     b3_a_b12_id numeric not null,
     b3 numeric not null,
     b4 numeric not null,
     b5 numeric not null,
     b6 numeric not null,
     b7 numeric not null,
     b8 numeric not null,
     b9 numeric not null,
     b10 numeric not null,
     b11 numeric not null,
     b12 numeric not null,
     constraint lotofacil_id_b3_a_b12_pk primary key(b3_a_b12_id)
);
Insert into lotofacil.lotofacil_id_b3_a_b12(
     b3_a_b12_id,
     b3,
     b4,
     b5,
     b6,
     b7,
     b8,
     b9,
     b10,
     b11,
     b12
)
Select grp_id,
     bola1,
     bola2,
     bola3,
     bola4,
     bola5,
     bola6,
     bola7,
     bola8,
     bola9,
     bola10
from lotofacil.lotofacil_id_grupo_10_bolas
where bola1 >= 3 and bola1 <= 13
 order by bola1, bola2, bola3, bola4, bola5, bola6, bola7, bola8, bola9, bola10;
/*
Cada coluna tem a menor e a maior bola que pode estar
naquela posição, por exemplo, na coluna b1, pode ter
no máximo até a bola 11, vc nunca verá uma bola 12 nesta posição
*/



/*
TABELA:   lotofacil_id_b3_a_b13##
Objetivo: Armazena um identificador pra a combinação de 11 bolas válidas, iniciando da esquerda
pra direita, a partir da coluna B3 considerando todas as bolas adjacentes a direita até chegar
 na coluna B13.
Por exemplo, se a tabela é lotofacil_id_b1_a_b5, então,
a tabela irá armazenar as combinações de bolas que é possível
nas posições b1, b2, b3, b4, b5, na coluna b1, por exemplo, é
possível armazenar as bolas 1 até 11
Os ids das combinações corresponde ao deslocamento de 25 bolas,
tais ids corresponde aos ids de grupos considerando a quantidade de
 de bolas pra aquela combinação.
*/
Drop table if exists lotofacil.lotofacil_id_b3_a_b13;
Create table lotofacil.lotofacil_id_b3_a_b13(
     b3_a_b13_id numeric not null,
     b3 numeric not null,
     b4 numeric not null,
     b5 numeric not null,
     b6 numeric not null,
     b7 numeric not null,
     b8 numeric not null,
     b9 numeric not null,
     b10 numeric not null,
     b11 numeric not null,
     b12 numeric not null,
     b13 numeric not null,
     constraint lotofacil_id_b3_a_b13_pk primary key(b3_a_b13_id)
);
Insert into lotofacil.lotofacil_id_b3_a_b13(
     b3_a_b13_id,
     b3,
     b4,
     b5,
     b6,
     b7,
     b8,
     b9,
     b10,
     b11,
     b12,
     b13
)
Select grp_id,
     bola1,
     bola2,
     bola3,
     bola4,
     bola5,
     bola6,
     bola7,
     bola8,
     bola9,
     bola10,
     bola11
from lotofacil.lotofacil_id_grupo_11_bolas
where bola1 >= 3 and bola1 <= 13
 order by bola1, bola2, bola3, bola4, bola5, bola6, bola7, bola8, bola9, bola10, bola11;
/*
Cada coluna tem a menor e a maior bola que pode estar
naquela posição, por exemplo, na coluna b1, pode ter
no máximo até a bola 11, vc nunca verá uma bola 12 nesta posição
*/



/*
TABELA:   lotofacil_id_b3_a_b14##
Objetivo: Armazena um identificador pra a combinação de 12 bolas válidas, iniciando da esquerda
pra direita, a partir da coluna B3 considerando todas as bolas adjacentes a direita até chegar
 na coluna B14.
Por exemplo, se a tabela é lotofacil_id_b1_a_b5, então,
a tabela irá armazenar as combinações de bolas que é possível
nas posições b1, b2, b3, b4, b5, na coluna b1, por exemplo, é
possível armazenar as bolas 1 até 11
Os ids das combinações corresponde ao deslocamento de 25 bolas,
tais ids corresponde aos ids de grupos considerando a quantidade de
 de bolas pra aquela combinação.
*/
Drop table if exists lotofacil.lotofacil_id_b3_a_b14;
Create table lotofacil.lotofacil_id_b3_a_b14(
     b3_a_b14_id numeric not null,
     b3 numeric not null,
     b4 numeric not null,
     b5 numeric not null,
     b6 numeric not null,
     b7 numeric not null,
     b8 numeric not null,
     b9 numeric not null,
     b10 numeric not null,
     b11 numeric not null,
     b12 numeric not null,
     b13 numeric not null,
     b14 numeric not null,
     constraint lotofacil_id_b3_a_b14_pk primary key(b3_a_b14_id)
);
Insert into lotofacil.lotofacil_id_b3_a_b14(
     b3_a_b14_id,
     b3,
     b4,
     b5,
     b6,
     b7,
     b8,
     b9,
     b10,
     b11,
     b12,
     b13,
     b14
)
Select grp_id,
     bola1,
     bola2,
     bola3,
     bola4,
     bola5,
     bola6,
     bola7,
     bola8,
     bola9,
     bola10,
     bola11,
     bola12
from lotofacil.lotofacil_id_grupo_12_bolas
where bola1 >= 3 and bola1 <= 13
 order by bola1, bola2, bola3, bola4, bola5, bola6, bola7, bola8, bola9, bola10, bola11, bola12;
/*
Cada coluna tem a menor e a maior bola que pode estar
naquela posição, por exemplo, na coluna b1, pode ter
no máximo até a bola 11, vc nunca verá uma bola 12 nesta posição
*/



/*
TABELA:   lotofacil_id_b3_a_b15##
Objetivo: Armazena um identificador pra a combinação de 13 bolas válidas, iniciando da esquerda
pra direita, a partir da coluna B3 considerando todas as bolas adjacentes a direita até chegar
 na coluna B15.
Por exemplo, se a tabela é lotofacil_id_b1_a_b5, então,
a tabela irá armazenar as combinações de bolas que é possível
nas posições b1, b2, b3, b4, b5, na coluna b1, por exemplo, é
possível armazenar as bolas 1 até 11
Os ids das combinações corresponde ao deslocamento de 25 bolas,
tais ids corresponde aos ids de grupos considerando a quantidade de
 de bolas pra aquela combinação.
*/
Drop table if exists lotofacil.lotofacil_id_b3_a_b15;
Create table lotofacil.lotofacil_id_b3_a_b15(
     b3_a_b15_id numeric not null,
     b3 numeric not null,
     b4 numeric not null,
     b5 numeric not null,
     b6 numeric not null,
     b7 numeric not null,
     b8 numeric not null,
     b9 numeric not null,
     b10 numeric not null,
     b11 numeric not null,
     b12 numeric not null,
     b13 numeric not null,
     b14 numeric not null,
     b15 numeric not null,
     constraint lotofacil_id_b3_a_b15_pk primary key(b3_a_b15_id)
);
Insert into lotofacil.lotofacil_id_b3_a_b15(
     b3_a_b15_id,
     b3,
     b4,
     b5,
     b6,
     b7,
     b8,
     b9,
     b10,
     b11,
     b12,
     b13,
     b14,
     b15
)
Select grp_id,
     bola1,
     bola2,
     bola3,
     bola4,
     bola5,
     bola6,
     bola7,
     bola8,
     bola9,
     bola10,
     bola11,
     bola12,
     bola13
from lotofacil.lotofacil_id_grupo_13_bolas
where bola1 >= 3 and bola1 <= 13
 order by bola1, bola2, bola3, bola4, bola5, bola6, bola7, bola8, bola9, bola10, bola11, bola12, bola13;
/*
Cada coluna tem a menor e a maior bola que pode estar
naquela posição, por exemplo, na coluna b1, pode ter
no máximo até a bola 11, vc nunca verá uma bola 12 nesta posição
*/



/*
TABELA:   lotofacil_id_b4_a_b4##
Objetivo: Armazena um identificador pra a combinação de 1 bolas válidas, iniciando da esquerda
pra direita, a partir da coluna B4 considerando todas as bolas adjacentes a direita até chegar
 na coluna B4.
Por exemplo, se a tabela é lotofacil_id_b1_a_b5, então,
a tabela irá armazenar as combinações de bolas que é possível
nas posições b1, b2, b3, b4, b5, na coluna b1, por exemplo, é
possível armazenar as bolas 1 até 11
Os ids das combinações corresponde ao deslocamento de 25 bolas,
tais ids corresponde aos ids de grupos considerando a quantidade de
 de bolas pra aquela combinação.
*/
Drop table if exists lotofacil.lotofacil_id_b4_a_b4;
Create table lotofacil.lotofacil_id_b4_a_b4(
     b4_a_b4_id numeric not null,
     b4 numeric not null,
     constraint lotofacil_id_b4_a_b4_pk primary key(b4_a_b4_id)
);
Insert into lotofacil.lotofacil_id_b4_a_b4(
     b4_a_b4_id,
     b4
)
Select grp_id,
     bola1
from lotofacil.lotofacil_id_grupo_1_bola
where bola1 >= 4 and bola1 <= 14
 order by bola1;
/*
Cada coluna tem a menor e a maior bola que pode estar
naquela posição, por exemplo, na coluna b1, pode ter
no máximo até a bola 11, vc nunca verá uma bola 12 nesta posição
*/



/*
TABELA:   lotofacil_id_b4_a_b5##
Objetivo: Armazena um identificador pra a combinação de 2 bolas válidas, iniciando da esquerda
pra direita, a partir da coluna B4 considerando todas as bolas adjacentes a direita até chegar
 na coluna B5.
Por exemplo, se a tabela é lotofacil_id_b1_a_b5, então,
a tabela irá armazenar as combinações de bolas que é possível
nas posições b1, b2, b3, b4, b5, na coluna b1, por exemplo, é
possível armazenar as bolas 1 até 11
Os ids das combinações corresponde ao deslocamento de 25 bolas,
tais ids corresponde aos ids de grupos considerando a quantidade de
 de bolas pra aquela combinação.
*/
Drop table if exists lotofacil.lotofacil_id_b4_a_b5;
Create table lotofacil.lotofacil_id_b4_a_b5(
     b4_a_b5_id numeric not null,
     b4 numeric not null,
     b5 numeric not null,
     constraint lotofacil_id_b4_a_b5_pk primary key(b4_a_b5_id)
);
Insert into lotofacil.lotofacil_id_b4_a_b5(
     b4_a_b5_id,
     b4,
     b5
)
Select grp_id,
     bola1,
     bola2
from lotofacil.lotofacil_id_grupo_2_bolas
where bola1 >= 4 and bola1 <= 14
 order by bola1, bola2;
/*
Cada coluna tem a menor e a maior bola que pode estar
naquela posição, por exemplo, na coluna b1, pode ter
no máximo até a bola 11, vc nunca verá uma bola 12 nesta posição
*/



/*
TABELA:   lotofacil_id_b4_a_b6##
Objetivo: Armazena um identificador pra a combinação de 3 bolas válidas, iniciando da esquerda
pra direita, a partir da coluna B4 considerando todas as bolas adjacentes a direita até chegar
 na coluna B6.
Por exemplo, se a tabela é lotofacil_id_b1_a_b5, então,
a tabela irá armazenar as combinações de bolas que é possível
nas posições b1, b2, b3, b4, b5, na coluna b1, por exemplo, é
possível armazenar as bolas 1 até 11
Os ids das combinações corresponde ao deslocamento de 25 bolas,
tais ids corresponde aos ids de grupos considerando a quantidade de
 de bolas pra aquela combinação.
*/
Drop table if exists lotofacil.lotofacil_id_b4_a_b6;
Create table lotofacil.lotofacil_id_b4_a_b6(
     b4_a_b6_id numeric not null,
     b4 numeric not null,
     b5 numeric not null,
     b6 numeric not null,
     constraint lotofacil_id_b4_a_b6_pk primary key(b4_a_b6_id)
);
Insert into lotofacil.lotofacil_id_b4_a_b6(
     b4_a_b6_id,
     b4,
     b5,
     b6
)
Select grp_id,
     bola1,
     bola2,
     bola3
from lotofacil.lotofacil_id_grupo_3_bolas
where bola1 >= 4 and bola1 <= 14
 order by bola1, bola2, bola3;
/*
Cada coluna tem a menor e a maior bola que pode estar
naquela posição, por exemplo, na coluna b1, pode ter
no máximo até a bola 11, vc nunca verá uma bola 12 nesta posição
*/



/*
TABELA:   lotofacil_id_b4_a_b7##
Objetivo: Armazena um identificador pra a combinação de 4 bolas válidas, iniciando da esquerda
pra direita, a partir da coluna B4 considerando todas as bolas adjacentes a direita até chegar
 na coluna B7.
Por exemplo, se a tabela é lotofacil_id_b1_a_b5, então,
a tabela irá armazenar as combinações de bolas que é possível
nas posições b1, b2, b3, b4, b5, na coluna b1, por exemplo, é
possível armazenar as bolas 1 até 11
Os ids das combinações corresponde ao deslocamento de 25 bolas,
tais ids corresponde aos ids de grupos considerando a quantidade de
 de bolas pra aquela combinação.
*/
Drop table if exists lotofacil.lotofacil_id_b4_a_b7;
Create table lotofacil.lotofacil_id_b4_a_b7(
     b4_a_b7_id numeric not null,
     b4 numeric not null,
     b5 numeric not null,
     b6 numeric not null,
     b7 numeric not null,
     constraint lotofacil_id_b4_a_b7_pk primary key(b4_a_b7_id)
);
Insert into lotofacil.lotofacil_id_b4_a_b7(
     b4_a_b7_id,
     b4,
     b5,
     b6,
     b7
)
Select grp_id,
     bola1,
     bola2,
     bola3,
     bola4
from lotofacil.lotofacil_id_grupo_4_bolas
where bola1 >= 4 and bola1 <= 14
 order by bola1, bola2, bola3, bola4;
/*
Cada coluna tem a menor e a maior bola que pode estar
naquela posição, por exemplo, na coluna b1, pode ter
no máximo até a bola 11, vc nunca verá uma bola 12 nesta posição
*/



/*
TABELA:   lotofacil_id_b4_a_b8##
Objetivo: Armazena um identificador pra a combinação de 5 bolas válidas, iniciando da esquerda
pra direita, a partir da coluna B4 considerando todas as bolas adjacentes a direita até chegar
 na coluna B8.
Por exemplo, se a tabela é lotofacil_id_b1_a_b5, então,
a tabela irá armazenar as combinações de bolas que é possível
nas posições b1, b2, b3, b4, b5, na coluna b1, por exemplo, é
possível armazenar as bolas 1 até 11
Os ids das combinações corresponde ao deslocamento de 25 bolas,
tais ids corresponde aos ids de grupos considerando a quantidade de
 de bolas pra aquela combinação.
*/
Drop table if exists lotofacil.lotofacil_id_b4_a_b8;
Create table lotofacil.lotofacil_id_b4_a_b8(
     b4_a_b8_id numeric not null,
     b4 numeric not null,
     b5 numeric not null,
     b6 numeric not null,
     b7 numeric not null,
     b8 numeric not null,
     constraint lotofacil_id_b4_a_b8_pk primary key(b4_a_b8_id)
);
Insert into lotofacil.lotofacil_id_b4_a_b8(
     b4_a_b8_id,
     b4,
     b5,
     b6,
     b7,
     b8
)
Select grp_id,
     bola1,
     bola2,
     bola3,
     bola4,
     bola5
from lotofacil.lotofacil_id_grupo_5_bolas
where bola1 >= 4 and bola1 <= 14
 order by bola1, bola2, bola3, bola4, bola5;
/*
Cada coluna tem a menor e a maior bola que pode estar
naquela posição, por exemplo, na coluna b1, pode ter
no máximo até a bola 11, vc nunca verá uma bola 12 nesta posição
*/



/*
TABELA:   lotofacil_id_b4_a_b9##
Objetivo: Armazena um identificador pra a combinação de 6 bolas válidas, iniciando da esquerda
pra direita, a partir da coluna B4 considerando todas as bolas adjacentes a direita até chegar
 na coluna B9.
Por exemplo, se a tabela é lotofacil_id_b1_a_b5, então,
a tabela irá armazenar as combinações de bolas que é possível
nas posições b1, b2, b3, b4, b5, na coluna b1, por exemplo, é
possível armazenar as bolas 1 até 11
Os ids das combinações corresponde ao deslocamento de 25 bolas,
tais ids corresponde aos ids de grupos considerando a quantidade de
 de bolas pra aquela combinação.
*/
Drop table if exists lotofacil.lotofacil_id_b4_a_b9;
Create table lotofacil.lotofacil_id_b4_a_b9(
     b4_a_b9_id numeric not null,
     b4 numeric not null,
     b5 numeric not null,
     b6 numeric not null,
     b7 numeric not null,
     b8 numeric not null,
     b9 numeric not null,
     constraint lotofacil_id_b4_a_b9_pk primary key(b4_a_b9_id)
);
Insert into lotofacil.lotofacil_id_b4_a_b9(
     b4_a_b9_id,
     b4,
     b5,
     b6,
     b7,
     b8,
     b9
)
Select grp_id,
     bola1,
     bola2,
     bola3,
     bola4,
     bola5,
     bola6
from lotofacil.lotofacil_id_grupo_6_bolas
where bola1 >= 4 and bola1 <= 14
 order by bola1, bola2, bola3, bola4, bola5, bola6;
/*
Cada coluna tem a menor e a maior bola que pode estar
naquela posição, por exemplo, na coluna b1, pode ter
no máximo até a bola 11, vc nunca verá uma bola 12 nesta posição
*/



/*
TABELA:   lotofacil_id_b4_a_b10##
Objetivo: Armazena um identificador pra a combinação de 7 bolas válidas, iniciando da esquerda
pra direita, a partir da coluna B4 considerando todas as bolas adjacentes a direita até chegar
 na coluna B10.
Por exemplo, se a tabela é lotofacil_id_b1_a_b5, então,
a tabela irá armazenar as combinações de bolas que é possível
nas posições b1, b2, b3, b4, b5, na coluna b1, por exemplo, é
possível armazenar as bolas 1 até 11
Os ids das combinações corresponde ao deslocamento de 25 bolas,
tais ids corresponde aos ids de grupos considerando a quantidade de
 de bolas pra aquela combinação.
*/
Drop table if exists lotofacil.lotofacil_id_b4_a_b10;
Create table lotofacil.lotofacil_id_b4_a_b10(
     b4_a_b10_id numeric not null,
     b4 numeric not null,
     b5 numeric not null,
     b6 numeric not null,
     b7 numeric not null,
     b8 numeric not null,
     b9 numeric not null,
     b10 numeric not null,
     constraint lotofacil_id_b4_a_b10_pk primary key(b4_a_b10_id)
);
Insert into lotofacil.lotofacil_id_b4_a_b10(
     b4_a_b10_id,
     b4,
     b5,
     b6,
     b7,
     b8,
     b9,
     b10
)
Select grp_id,
     bola1,
     bola2,
     bola3,
     bola4,
     bola5,
     bola6,
     bola7
from lotofacil.lotofacil_id_grupo_7_bolas
where bola1 >= 4 and bola1 <= 14
 order by bola1, bola2, bola3, bola4, bola5, bola6, bola7;
/*
Cada coluna tem a menor e a maior bola que pode estar
naquela posição, por exemplo, na coluna b1, pode ter
no máximo até a bola 11, vc nunca verá uma bola 12 nesta posição
*/



/*
TABELA:   lotofacil_id_b4_a_b11##
Objetivo: Armazena um identificador pra a combinação de 8 bolas válidas, iniciando da esquerda
pra direita, a partir da coluna B4 considerando todas as bolas adjacentes a direita até chegar
 na coluna B11.
Por exemplo, se a tabela é lotofacil_id_b1_a_b5, então,
a tabela irá armazenar as combinações de bolas que é possível
nas posições b1, b2, b3, b4, b5, na coluna b1, por exemplo, é
possível armazenar as bolas 1 até 11
Os ids das combinações corresponde ao deslocamento de 25 bolas,
tais ids corresponde aos ids de grupos considerando a quantidade de
 de bolas pra aquela combinação.
*/
Drop table if exists lotofacil.lotofacil_id_b4_a_b11;
Create table lotofacil.lotofacil_id_b4_a_b11(
     b4_a_b11_id numeric not null,
     b4 numeric not null,
     b5 numeric not null,
     b6 numeric not null,
     b7 numeric not null,
     b8 numeric not null,
     b9 numeric not null,
     b10 numeric not null,
     b11 numeric not null,
     constraint lotofacil_id_b4_a_b11_pk primary key(b4_a_b11_id)
);
Insert into lotofacil.lotofacil_id_b4_a_b11(
     b4_a_b11_id,
     b4,
     b5,
     b6,
     b7,
     b8,
     b9,
     b10,
     b11
)
Select grp_id,
     bola1,
     bola2,
     bola3,
     bola4,
     bola5,
     bola6,
     bola7,
     bola8
from lotofacil.lotofacil_id_grupo_8_bolas
where bola1 >= 4 and bola1 <= 14
 order by bola1, bola2, bola3, bola4, bola5, bola6, bola7, bola8;
/*
Cada coluna tem a menor e a maior bola que pode estar
naquela posição, por exemplo, na coluna b1, pode ter
no máximo até a bola 11, vc nunca verá uma bola 12 nesta posição
*/



/*
TABELA:   lotofacil_id_b4_a_b12##
Objetivo: Armazena um identificador pra a combinação de 9 bolas válidas, iniciando da esquerda
pra direita, a partir da coluna B4 considerando todas as bolas adjacentes a direita até chegar
 na coluna B12.
Por exemplo, se a tabela é lotofacil_id_b1_a_b5, então,
a tabela irá armazenar as combinações de bolas que é possível
nas posições b1, b2, b3, b4, b5, na coluna b1, por exemplo, é
possível armazenar as bolas 1 até 11
Os ids das combinações corresponde ao deslocamento de 25 bolas,
tais ids corresponde aos ids de grupos considerando a quantidade de
 de bolas pra aquela combinação.
*/
Drop table if exists lotofacil.lotofacil_id_b4_a_b12;
Create table lotofacil.lotofacil_id_b4_a_b12(
     b4_a_b12_id numeric not null,
     b4 numeric not null,
     b5 numeric not null,
     b6 numeric not null,
     b7 numeric not null,
     b8 numeric not null,
     b9 numeric not null,
     b10 numeric not null,
     b11 numeric not null,
     b12 numeric not null,
     constraint lotofacil_id_b4_a_b12_pk primary key(b4_a_b12_id)
);
Insert into lotofacil.lotofacil_id_b4_a_b12(
     b4_a_b12_id,
     b4,
     b5,
     b6,
     b7,
     b8,
     b9,
     b10,
     b11,
     b12
)
Select grp_id,
     bola1,
     bola2,
     bola3,
     bola4,
     bola5,
     bola6,
     bola7,
     bola8,
     bola9
from lotofacil.lotofacil_id_grupo_9_bolas
where bola1 >= 4 and bola1 <= 14
 order by bola1, bola2, bola3, bola4, bola5, bola6, bola7, bola8, bola9;
/*
Cada coluna tem a menor e a maior bola que pode estar
naquela posição, por exemplo, na coluna b1, pode ter
no máximo até a bola 11, vc nunca verá uma bola 12 nesta posição
*/



/*
TABELA:   lotofacil_id_b4_a_b13##
Objetivo: Armazena um identificador pra a combinação de 10 bolas válidas, iniciando da esquerda
pra direita, a partir da coluna B4 considerando todas as bolas adjacentes a direita até chegar
 na coluna B13.
Por exemplo, se a tabela é lotofacil_id_b1_a_b5, então,
a tabela irá armazenar as combinações de bolas que é possível
nas posições b1, b2, b3, b4, b5, na coluna b1, por exemplo, é
possível armazenar as bolas 1 até 11
Os ids das combinações corresponde ao deslocamento de 25 bolas,
tais ids corresponde aos ids de grupos considerando a quantidade de
 de bolas pra aquela combinação.
*/
Drop table if exists lotofacil.lotofacil_id_b4_a_b13;
Create table lotofacil.lotofacil_id_b4_a_b13(
     b4_a_b13_id numeric not null,
     b4 numeric not null,
     b5 numeric not null,
     b6 numeric not null,
     b7 numeric not null,
     b8 numeric not null,
     b9 numeric not null,
     b10 numeric not null,
     b11 numeric not null,
     b12 numeric not null,
     b13 numeric not null,
     constraint lotofacil_id_b4_a_b13_pk primary key(b4_a_b13_id)
);
Insert into lotofacil.lotofacil_id_b4_a_b13(
     b4_a_b13_id,
     b4,
     b5,
     b6,
     b7,
     b8,
     b9,
     b10,
     b11,
     b12,
     b13
)
Select grp_id,
     bola1,
     bola2,
     bola3,
     bola4,
     bola5,
     bola6,
     bola7,
     bola8,
     bola9,
     bola10
from lotofacil.lotofacil_id_grupo_10_bolas
where bola1 >= 4 and bola1 <= 14
 order by bola1, bola2, bola3, bola4, bola5, bola6, bola7, bola8, bola9, bola10;
/*
Cada coluna tem a menor e a maior bola que pode estar
naquela posição, por exemplo, na coluna b1, pode ter
no máximo até a bola 11, vc nunca verá uma bola 12 nesta posição
*/



/*
TABELA:   lotofacil_id_b4_a_b14##
Objetivo: Armazena um identificador pra a combinação de 11 bolas válidas, iniciando da esquerda
pra direita, a partir da coluna B4 considerando todas as bolas adjacentes a direita até chegar
 na coluna B14.
Por exemplo, se a tabela é lotofacil_id_b1_a_b5, então,
a tabela irá armazenar as combinações de bolas que é possível
nas posições b1, b2, b3, b4, b5, na coluna b1, por exemplo, é
possível armazenar as bolas 1 até 11
Os ids das combinações corresponde ao deslocamento de 25 bolas,
tais ids corresponde aos ids de grupos considerando a quantidade de
 de bolas pra aquela combinação.
*/
Drop table if exists lotofacil.lotofacil_id_b4_a_b14;
Create table lotofacil.lotofacil_id_b4_a_b14(
     b4_a_b14_id numeric not null,
     b4 numeric not null,
     b5 numeric not null,
     b6 numeric not null,
     b7 numeric not null,
     b8 numeric not null,
     b9 numeric not null,
     b10 numeric not null,
     b11 numeric not null,
     b12 numeric not null,
     b13 numeric not null,
     b14 numeric not null,
     constraint lotofacil_id_b4_a_b14_pk primary key(b4_a_b14_id)
);
Insert into lotofacil.lotofacil_id_b4_a_b14(
     b4_a_b14_id,
     b4,
     b5,
     b6,
     b7,
     b8,
     b9,
     b10,
     b11,
     b12,
     b13,
     b14
)
Select grp_id,
     bola1,
     bola2,
     bola3,
     bola4,
     bola5,
     bola6,
     bola7,
     bola8,
     bola9,
     bola10,
     bola11
from lotofacil.lotofacil_id_grupo_11_bolas
where bola1 >= 4 and bola1 <= 14
 order by bola1, bola2, bola3, bola4, bola5, bola6, bola7, bola8, bola9, bola10, bola11;
/*
Cada coluna tem a menor e a maior bola que pode estar
naquela posição, por exemplo, na coluna b1, pode ter
no máximo até a bola 11, vc nunca verá uma bola 12 nesta posição
*/



/*
TABELA:   lotofacil_id_b4_a_b15##
Objetivo: Armazena um identificador pra a combinação de 12 bolas válidas, iniciando da esquerda
pra direita, a partir da coluna B4 considerando todas as bolas adjacentes a direita até chegar
 na coluna B15.
Por exemplo, se a tabela é lotofacil_id_b1_a_b5, então,
a tabela irá armazenar as combinações de bolas que é possível
nas posições b1, b2, b3, b4, b5, na coluna b1, por exemplo, é
possível armazenar as bolas 1 até 11
Os ids das combinações corresponde ao deslocamento de 25 bolas,
tais ids corresponde aos ids de grupos considerando a quantidade de
 de bolas pra aquela combinação.
*/
Drop table if exists lotofacil.lotofacil_id_b4_a_b15;
Create table lotofacil.lotofacil_id_b4_a_b15(
     b4_a_b15_id numeric not null,
     b4 numeric not null,
     b5 numeric not null,
     b6 numeric not null,
     b7 numeric not null,
     b8 numeric not null,
     b9 numeric not null,
     b10 numeric not null,
     b11 numeric not null,
     b12 numeric not null,
     b13 numeric not null,
     b14 numeric not null,
     b15 numeric not null,
     constraint lotofacil_id_b4_a_b15_pk primary key(b4_a_b15_id)
);
Insert into lotofacil.lotofacil_id_b4_a_b15(
     b4_a_b15_id,
     b4,
     b5,
     b6,
     b7,
     b8,
     b9,
     b10,
     b11,
     b12,
     b13,
     b14,
     b15
)
Select grp_id,
     bola1,
     bola2,
     bola3,
     bola4,
     bola5,
     bola6,
     bola7,
     bola8,
     bola9,
     bola10,
     bola11,
     bola12
from lotofacil.lotofacil_id_grupo_12_bolas
where bola1 >= 4 and bola1 <= 14
 order by bola1, bola2, bola3, bola4, bola5, bola6, bola7, bola8, bola9, bola10, bola11, bola12;
/*
Cada coluna tem a menor e a maior bola que pode estar
naquela posição, por exemplo, na coluna b1, pode ter
no máximo até a bola 11, vc nunca verá uma bola 12 nesta posição
*/



/*
TABELA:   lotofacil_id_b5_a_b5##
Objetivo: Armazena um identificador pra a combinação de 1 bolas válidas, iniciando da esquerda
pra direita, a partir da coluna B5 considerando todas as bolas adjacentes a direita até chegar
 na coluna B5.
Por exemplo, se a tabela é lotofacil_id_b1_a_b5, então,
a tabela irá armazenar as combinações de bolas que é possível
nas posições b1, b2, b3, b4, b5, na coluna b1, por exemplo, é
possível armazenar as bolas 1 até 11
Os ids das combinações corresponde ao deslocamento de 25 bolas,
tais ids corresponde aos ids de grupos considerando a quantidade de
 de bolas pra aquela combinação.
*/
Drop table if exists lotofacil.lotofacil_id_b5_a_b5;
Create table lotofacil.lotofacil_id_b5_a_b5(
     b5_a_b5_id numeric not null,
     b5 numeric not null,
     constraint lotofacil_id_b5_a_b5_pk primary key(b5_a_b5_id)
);
Insert into lotofacil.lotofacil_id_b5_a_b5(
     b5_a_b5_id,
     b5
)
Select grp_id,
     bola1
from lotofacil.lotofacil_id_grupo_1_bola
where bola1 >= 5 and bola1 <= 15
 order by bola1;
/*
Cada coluna tem a menor e a maior bola que pode estar
naquela posição, por exemplo, na coluna b1, pode ter
no máximo até a bola 11, vc nunca verá uma bola 12 nesta posição
*/



/*
TABELA:   lotofacil_id_b5_a_b6##
Objetivo: Armazena um identificador pra a combinação de 2 bolas válidas, iniciando da esquerda
pra direita, a partir da coluna B5 considerando todas as bolas adjacentes a direita até chegar
 na coluna B6.
Por exemplo, se a tabela é lotofacil_id_b1_a_b5, então,
a tabela irá armazenar as combinações de bolas que é possível
nas posições b1, b2, b3, b4, b5, na coluna b1, por exemplo, é
possível armazenar as bolas 1 até 11
Os ids das combinações corresponde ao deslocamento de 25 bolas,
tais ids corresponde aos ids de grupos considerando a quantidade de
 de bolas pra aquela combinação.
*/
Drop table if exists lotofacil.lotofacil_id_b5_a_b6;
Create table lotofacil.lotofacil_id_b5_a_b6(
     b5_a_b6_id numeric not null,
     b5 numeric not null,
     b6 numeric not null,
     constraint lotofacil_id_b5_a_b6_pk primary key(b5_a_b6_id)
);
Insert into lotofacil.lotofacil_id_b5_a_b6(
     b5_a_b6_id,
     b5,
     b6
)
Select grp_id,
     bola1,
     bola2
from lotofacil.lotofacil_id_grupo_2_bolas
where bola1 >= 5 and bola1 <= 15
 order by bola1, bola2;
/*
Cada coluna tem a menor e a maior bola que pode estar
naquela posição, por exemplo, na coluna b1, pode ter
no máximo até a bola 11, vc nunca verá uma bola 12 nesta posição
*/



/*
TABELA:   lotofacil_id_b5_a_b7##
Objetivo: Armazena um identificador pra a combinação de 3 bolas válidas, iniciando da esquerda
pra direita, a partir da coluna B5 considerando todas as bolas adjacentes a direita até chegar
 na coluna B7.
Por exemplo, se a tabela é lotofacil_id_b1_a_b5, então,
a tabela irá armazenar as combinações de bolas que é possível
nas posições b1, b2, b3, b4, b5, na coluna b1, por exemplo, é
possível armazenar as bolas 1 até 11
Os ids das combinações corresponde ao deslocamento de 25 bolas,
tais ids corresponde aos ids de grupos considerando a quantidade de
 de bolas pra aquela combinação.
*/
Drop table if exists lotofacil.lotofacil_id_b5_a_b7;
Create table lotofacil.lotofacil_id_b5_a_b7(
     b5_a_b7_id numeric not null,
     b5 numeric not null,
     b6 numeric not null,
     b7 numeric not null,
     constraint lotofacil_id_b5_a_b7_pk primary key(b5_a_b7_id)
);
Insert into lotofacil.lotofacil_id_b5_a_b7(
     b5_a_b7_id,
     b5,
     b6,
     b7
)
Select grp_id,
     bola1,
     bola2,
     bola3
from lotofacil.lotofacil_id_grupo_3_bolas
where bola1 >= 5 and bola1 <= 15
 order by bola1, bola2, bola3;
/*
Cada coluna tem a menor e a maior bola que pode estar
naquela posição, por exemplo, na coluna b1, pode ter
no máximo até a bola 11, vc nunca verá uma bola 12 nesta posição
*/



/*
TABELA:   lotofacil_id_b5_a_b8##
Objetivo: Armazena um identificador pra a combinação de 4 bolas válidas, iniciando da esquerda
pra direita, a partir da coluna B5 considerando todas as bolas adjacentes a direita até chegar
 na coluna B8.
Por exemplo, se a tabela é lotofacil_id_b1_a_b5, então,
a tabela irá armazenar as combinações de bolas que é possível
nas posições b1, b2, b3, b4, b5, na coluna b1, por exemplo, é
possível armazenar as bolas 1 até 11
Os ids das combinações corresponde ao deslocamento de 25 bolas,
tais ids corresponde aos ids de grupos considerando a quantidade de
 de bolas pra aquela combinação.
*/
Drop table if exists lotofacil.lotofacil_id_b5_a_b8;
Create table lotofacil.lotofacil_id_b5_a_b8(
     b5_a_b8_id numeric not null,
     b5 numeric not null,
     b6 numeric not null,
     b7 numeric not null,
     b8 numeric not null,
     constraint lotofacil_id_b5_a_b8_pk primary key(b5_a_b8_id)
);
Insert into lotofacil.lotofacil_id_b5_a_b8(
     b5_a_b8_id,
     b5,
     b6,
     b7,
     b8
)
Select grp_id,
     bola1,
     bola2,
     bola3,
     bola4
from lotofacil.lotofacil_id_grupo_4_bolas
where bola1 >= 5 and bola1 <= 15
 order by bola1, bola2, bola3, bola4;
/*
Cada coluna tem a menor e a maior bola que pode estar
naquela posição, por exemplo, na coluna b1, pode ter
no máximo até a bola 11, vc nunca verá uma bola 12 nesta posição
*/



/*
TABELA:   lotofacil_id_b5_a_b9##
Objetivo: Armazena um identificador pra a combinação de 5 bolas válidas, iniciando da esquerda
pra direita, a partir da coluna B5 considerando todas as bolas adjacentes a direita até chegar
 na coluna B9.
Por exemplo, se a tabela é lotofacil_id_b1_a_b5, então,
a tabela irá armazenar as combinações de bolas que é possível
nas posições b1, b2, b3, b4, b5, na coluna b1, por exemplo, é
possível armazenar as bolas 1 até 11
Os ids das combinações corresponde ao deslocamento de 25 bolas,
tais ids corresponde aos ids de grupos considerando a quantidade de
 de bolas pra aquela combinação.
*/
Drop table if exists lotofacil.lotofacil_id_b5_a_b9;
Create table lotofacil.lotofacil_id_b5_a_b9(
     b5_a_b9_id numeric not null,
     b5 numeric not null,
     b6 numeric not null,
     b7 numeric not null,
     b8 numeric not null,
     b9 numeric not null,
     constraint lotofacil_id_b5_a_b9_pk primary key(b5_a_b9_id)
);
Insert into lotofacil.lotofacil_id_b5_a_b9(
     b5_a_b9_id,
     b5,
     b6,
     b7,
     b8,
     b9
)
Select grp_id,
     bola1,
     bola2,
     bola3,
     bola4,
     bola5
from lotofacil.lotofacil_id_grupo_5_bolas
where bola1 >= 5 and bola1 <= 15
 order by bola1, bola2, bola3, bola4, bola5;
/*
Cada coluna tem a menor e a maior bola que pode estar
naquela posição, por exemplo, na coluna b1, pode ter
no máximo até a bola 11, vc nunca verá uma bola 12 nesta posição
*/



/*
TABELA:   lotofacil_id_b5_a_b10##
Objetivo: Armazena um identificador pra a combinação de 6 bolas válidas, iniciando da esquerda
pra direita, a partir da coluna B5 considerando todas as bolas adjacentes a direita até chegar
 na coluna B10.
Por exemplo, se a tabela é lotofacil_id_b1_a_b5, então,
a tabela irá armazenar as combinações de bolas que é possível
nas posições b1, b2, b3, b4, b5, na coluna b1, por exemplo, é
possível armazenar as bolas 1 até 11
Os ids das combinações corresponde ao deslocamento de 25 bolas,
tais ids corresponde aos ids de grupos considerando a quantidade de
 de bolas pra aquela combinação.
*/
Drop table if exists lotofacil.lotofacil_id_b5_a_b10;
Create table lotofacil.lotofacil_id_b5_a_b10(
     b5_a_b10_id numeric not null,
     b5 numeric not null,
     b6 numeric not null,
     b7 numeric not null,
     b8 numeric not null,
     b9 numeric not null,
     b10 numeric not null,
     constraint lotofacil_id_b5_a_b10_pk primary key(b5_a_b10_id)
);
Insert into lotofacil.lotofacil_id_b5_a_b10(
     b5_a_b10_id,
     b5,
     b6,
     b7,
     b8,
     b9,
     b10
)
Select grp_id,
     bola1,
     bola2,
     bola3,
     bola4,
     bola5,
     bola6
from lotofacil.lotofacil_id_grupo_6_bolas
where bola1 >= 5 and bola1 <= 15
 order by bola1, bola2, bola3, bola4, bola5, bola6;
/*
Cada coluna tem a menor e a maior bola que pode estar
naquela posição, por exemplo, na coluna b1, pode ter
no máximo até a bola 11, vc nunca verá uma bola 12 nesta posição
*/



/*
TABELA:   lotofacil_id_b5_a_b11##
Objetivo: Armazena um identificador pra a combinação de 7 bolas válidas, iniciando da esquerda
pra direita, a partir da coluna B5 considerando todas as bolas adjacentes a direita até chegar
 na coluna B11.
Por exemplo, se a tabela é lotofacil_id_b1_a_b5, então,
a tabela irá armazenar as combinações de bolas que é possível
nas posições b1, b2, b3, b4, b5, na coluna b1, por exemplo, é
possível armazenar as bolas 1 até 11
Os ids das combinações corresponde ao deslocamento de 25 bolas,
tais ids corresponde aos ids de grupos considerando a quantidade de
 de bolas pra aquela combinação.
*/
Drop table if exists lotofacil.lotofacil_id_b5_a_b11;
Create table lotofacil.lotofacil_id_b5_a_b11(
     b5_a_b11_id numeric not null,
     b5 numeric not null,
     b6 numeric not null,
     b7 numeric not null,
     b8 numeric not null,
     b9 numeric not null,
     b10 numeric not null,
     b11 numeric not null,
     constraint lotofacil_id_b5_a_b11_pk primary key(b5_a_b11_id)
);
Insert into lotofacil.lotofacil_id_b5_a_b11(
     b5_a_b11_id,
     b5,
     b6,
     b7,
     b8,
     b9,
     b10,
     b11
)
Select grp_id,
     bola1,
     bola2,
     bola3,
     bola4,
     bola5,
     bola6,
     bola7
from lotofacil.lotofacil_id_grupo_7_bolas
where bola1 >= 5 and bola1 <= 15
 order by bola1, bola2, bola3, bola4, bola5, bola6, bola7;
/*
Cada coluna tem a menor e a maior bola que pode estar
naquela posição, por exemplo, na coluna b1, pode ter
no máximo até a bola 11, vc nunca verá uma bola 12 nesta posição
*/



/*
TABELA:   lotofacil_id_b5_a_b12##
Objetivo: Armazena um identificador pra a combinação de 8 bolas válidas, iniciando da esquerda
pra direita, a partir da coluna B5 considerando todas as bolas adjacentes a direita até chegar
 na coluna B12.
Por exemplo, se a tabela é lotofacil_id_b1_a_b5, então,
a tabela irá armazenar as combinações de bolas que é possível
nas posições b1, b2, b3, b4, b5, na coluna b1, por exemplo, é
possível armazenar as bolas 1 até 11
Os ids das combinações corresponde ao deslocamento de 25 bolas,
tais ids corresponde aos ids de grupos considerando a quantidade de
 de bolas pra aquela combinação.
*/
Drop table if exists lotofacil.lotofacil_id_b5_a_b12;
Create table lotofacil.lotofacil_id_b5_a_b12(
     b5_a_b12_id numeric not null,
     b5 numeric not null,
     b6 numeric not null,
     b7 numeric not null,
     b8 numeric not null,
     b9 numeric not null,
     b10 numeric not null,
     b11 numeric not null,
     b12 numeric not null,
     constraint lotofacil_id_b5_a_b12_pk primary key(b5_a_b12_id)
);
Insert into lotofacil.lotofacil_id_b5_a_b12(
     b5_a_b12_id,
     b5,
     b6,
     b7,
     b8,
     b9,
     b10,
     b11,
     b12
)
Select grp_id,
     bola1,
     bola2,
     bola3,
     bola4,
     bola5,
     bola6,
     bola7,
     bola8
from lotofacil.lotofacil_id_grupo_8_bolas
where bola1 >= 5 and bola1 <= 15
 order by bola1, bola2, bola3, bola4, bola5, bola6, bola7, bola8;
/*
Cada coluna tem a menor e a maior bola que pode estar
naquela posição, por exemplo, na coluna b1, pode ter
no máximo até a bola 11, vc nunca verá uma bola 12 nesta posição
*/



/*
TABELA:   lotofacil_id_b5_a_b13##
Objetivo: Armazena um identificador pra a combinação de 9 bolas válidas, iniciando da esquerda
pra direita, a partir da coluna B5 considerando todas as bolas adjacentes a direita até chegar
 na coluna B13.
Por exemplo, se a tabela é lotofacil_id_b1_a_b5, então,
a tabela irá armazenar as combinações de bolas que é possível
nas posições b1, b2, b3, b4, b5, na coluna b1, por exemplo, é
possível armazenar as bolas 1 até 11
Os ids das combinações corresponde ao deslocamento de 25 bolas,
tais ids corresponde aos ids de grupos considerando a quantidade de
 de bolas pra aquela combinação.
*/
Drop table if exists lotofacil.lotofacil_id_b5_a_b13;
Create table lotofacil.lotofacil_id_b5_a_b13(
     b5_a_b13_id numeric not null,
     b5 numeric not null,
     b6 numeric not null,
     b7 numeric not null,
     b8 numeric not null,
     b9 numeric not null,
     b10 numeric not null,
     b11 numeric not null,
     b12 numeric not null,
     b13 numeric not null,
     constraint lotofacil_id_b5_a_b13_pk primary key(b5_a_b13_id)
);
Insert into lotofacil.lotofacil_id_b5_a_b13(
     b5_a_b13_id,
     b5,
     b6,
     b7,
     b8,
     b9,
     b10,
     b11,
     b12,
     b13
)
Select grp_id,
     bola1,
     bola2,
     bola3,
     bola4,
     bola5,
     bola6,
     bola7,
     bola8,
     bola9
from lotofacil.lotofacil_id_grupo_9_bolas
where bola1 >= 5 and bola1 <= 15
 order by bola1, bola2, bola3, bola4, bola5, bola6, bola7, bola8, bola9;
/*
Cada coluna tem a menor e a maior bola que pode estar
naquela posição, por exemplo, na coluna b1, pode ter
no máximo até a bola 11, vc nunca verá uma bola 12 nesta posição
*/



/*
TABELA:   lotofacil_id_b5_a_b14##
Objetivo: Armazena um identificador pra a combinação de 10 bolas válidas, iniciando da esquerda
pra direita, a partir da coluna B5 considerando todas as bolas adjacentes a direita até chegar
 na coluna B14.
Por exemplo, se a tabela é lotofacil_id_b1_a_b5, então,
a tabela irá armazenar as combinações de bolas que é possível
nas posições b1, b2, b3, b4, b5, na coluna b1, por exemplo, é
possível armazenar as bolas 1 até 11
Os ids das combinações corresponde ao deslocamento de 25 bolas,
tais ids corresponde aos ids de grupos considerando a quantidade de
 de bolas pra aquela combinação.
*/
Drop table if exists lotofacil.lotofacil_id_b5_a_b14;
Create table lotofacil.lotofacil_id_b5_a_b14(
     b5_a_b14_id numeric not null,
     b5 numeric not null,
     b6 numeric not null,
     b7 numeric not null,
     b8 numeric not null,
     b9 numeric not null,
     b10 numeric not null,
     b11 numeric not null,
     b12 numeric not null,
     b13 numeric not null,
     b14 numeric not null,
     constraint lotofacil_id_b5_a_b14_pk primary key(b5_a_b14_id)
);
Insert into lotofacil.lotofacil_id_b5_a_b14(
     b5_a_b14_id,
     b5,
     b6,
     b7,
     b8,
     b9,
     b10,
     b11,
     b12,
     b13,
     b14
)
Select grp_id,
     bola1,
     bola2,
     bola3,
     bola4,
     bola5,
     bola6,
     bola7,
     bola8,
     bola9,
     bola10
from lotofacil.lotofacil_id_grupo_10_bolas
where bola1 >= 5 and bola1 <= 15
 order by bola1, bola2, bola3, bola4, bola5, bola6, bola7, bola8, bola9, bola10;
/*
Cada coluna tem a menor e a maior bola que pode estar
naquela posição, por exemplo, na coluna b1, pode ter
no máximo até a bola 11, vc nunca verá uma bola 12 nesta posição
*/



/*
TABELA:   lotofacil_id_b5_a_b15##
Objetivo: Armazena um identificador pra a combinação de 11 bolas válidas, iniciando da esquerda
pra direita, a partir da coluna B5 considerando todas as bolas adjacentes a direita até chegar
 na coluna B15.
Por exemplo, se a tabela é lotofacil_id_b1_a_b5, então,
a tabela irá armazenar as combinações de bolas que é possível
nas posições b1, b2, b3, b4, b5, na coluna b1, por exemplo, é
possível armazenar as bolas 1 até 11
Os ids das combinações corresponde ao deslocamento de 25 bolas,
tais ids corresponde aos ids de grupos considerando a quantidade de
 de bolas pra aquela combinação.
*/
Drop table if exists lotofacil.lotofacil_id_b5_a_b15;
Create table lotofacil.lotofacil_id_b5_a_b15(
     b5_a_b15_id numeric not null,
     b5 numeric not null,
     b6 numeric not null,
     b7 numeric not null,
     b8 numeric not null,
     b9 numeric not null,
     b10 numeric not null,
     b11 numeric not null,
     b12 numeric not null,
     b13 numeric not null,
     b14 numeric not null,
     b15 numeric not null,
     constraint lotofacil_id_b5_a_b15_pk primary key(b5_a_b15_id)
);
Insert into lotofacil.lotofacil_id_b5_a_b15(
     b5_a_b15_id,
     b5,
     b6,
     b7,
     b8,
     b9,
     b10,
     b11,
     b12,
     b13,
     b14,
     b15
)
Select grp_id,
     bola1,
     bola2,
     bola3,
     bola4,
     bola5,
     bola6,
     bola7,
     bola8,
     bola9,
     bola10,
     bola11
from lotofacil.lotofacil_id_grupo_11_bolas
where bola1 >= 5 and bola1 <= 15
 order by bola1, bola2, bola3, bola4, bola5, bola6, bola7, bola8, bola9, bola10, bola11;
/*
Cada coluna tem a menor e a maior bola que pode estar
naquela posição, por exemplo, na coluna b1, pode ter
no máximo até a bola 11, vc nunca verá uma bola 12 nesta posição
*/



/*
TABELA:   lotofacil_id_b6_a_b6##
Objetivo: Armazena um identificador pra a combinação de 1 bolas válidas, iniciando da esquerda
pra direita, a partir da coluna B6 considerando todas as bolas adjacentes a direita até chegar
 na coluna B6.
Por exemplo, se a tabela é lotofacil_id_b1_a_b5, então,
a tabela irá armazenar as combinações de bolas que é possível
nas posições b1, b2, b3, b4, b5, na coluna b1, por exemplo, é
possível armazenar as bolas 1 até 11
Os ids das combinações corresponde ao deslocamento de 25 bolas,
tais ids corresponde aos ids de grupos considerando a quantidade de
 de bolas pra aquela combinação.
*/
Drop table if exists lotofacil.lotofacil_id_b6_a_b6;
Create table lotofacil.lotofacil_id_b6_a_b6(
     b6_a_b6_id numeric not null,
     b6 numeric not null,
     constraint lotofacil_id_b6_a_b6_pk primary key(b6_a_b6_id)
);
Insert into lotofacil.lotofacil_id_b6_a_b6(
     b6_a_b6_id,
     b6
)
Select grp_id,
     bola1
from lotofacil.lotofacil_id_grupo_1_bola
where bola1 >= 6 and bola1 <= 16
 order by bola1;
/*
Cada coluna tem a menor e a maior bola que pode estar
naquela posição, por exemplo, na coluna b1, pode ter
no máximo até a bola 11, vc nunca verá uma bola 12 nesta posição
*/



/*
TABELA:   lotofacil_id_b6_a_b7##
Objetivo: Armazena um identificador pra a combinação de 2 bolas válidas, iniciando da esquerda
pra direita, a partir da coluna B6 considerando todas as bolas adjacentes a direita até chegar
 na coluna B7.
Por exemplo, se a tabela é lotofacil_id_b1_a_b5, então,
a tabela irá armazenar as combinações de bolas que é possível
nas posições b1, b2, b3, b4, b5, na coluna b1, por exemplo, é
possível armazenar as bolas 1 até 11
Os ids das combinações corresponde ao deslocamento de 25 bolas,
tais ids corresponde aos ids de grupos considerando a quantidade de
 de bolas pra aquela combinação.
*/
Drop table if exists lotofacil.lotofacil_id_b6_a_b7;
Create table lotofacil.lotofacil_id_b6_a_b7(
     b6_a_b7_id numeric not null,
     b6 numeric not null,
     b7 numeric not null,
     constraint lotofacil_id_b6_a_b7_pk primary key(b6_a_b7_id)
);
Insert into lotofacil.lotofacil_id_b6_a_b7(
     b6_a_b7_id,
     b6,
     b7
)
Select grp_id,
     bola1,
     bola2
from lotofacil.lotofacil_id_grupo_2_bolas
where bola1 >= 6 and bola1 <= 16
 order by bola1, bola2;
/*
Cada coluna tem a menor e a maior bola que pode estar
naquela posição, por exemplo, na coluna b1, pode ter
no máximo até a bola 11, vc nunca verá uma bola 12 nesta posição
*/



/*
TABELA:   lotofacil_id_b6_a_b8##
Objetivo: Armazena um identificador pra a combinação de 3 bolas válidas, iniciando da esquerda
pra direita, a partir da coluna B6 considerando todas as bolas adjacentes a direita até chegar
 na coluna B8.
Por exemplo, se a tabela é lotofacil_id_b1_a_b5, então,
a tabela irá armazenar as combinações de bolas que é possível
nas posições b1, b2, b3, b4, b5, na coluna b1, por exemplo, é
possível armazenar as bolas 1 até 11
Os ids das combinações corresponde ao deslocamento de 25 bolas,
tais ids corresponde aos ids de grupos considerando a quantidade de
 de bolas pra aquela combinação.
*/
Drop table if exists lotofacil.lotofacil_id_b6_a_b8;
Create table lotofacil.lotofacil_id_b6_a_b8(
     b6_a_b8_id numeric not null,
     b6 numeric not null,
     b7 numeric not null,
     b8 numeric not null,
     constraint lotofacil_id_b6_a_b8_pk primary key(b6_a_b8_id)
);
Insert into lotofacil.lotofacil_id_b6_a_b8(
     b6_a_b8_id,
     b6,
     b7,
     b8
)
Select grp_id,
     bola1,
     bola2,
     bola3
from lotofacil.lotofacil_id_grupo_3_bolas
where bola1 >= 6 and bola1 <= 16
 order by bola1, bola2, bola3;
/*
Cada coluna tem a menor e a maior bola que pode estar
naquela posição, por exemplo, na coluna b1, pode ter
no máximo até a bola 11, vc nunca verá uma bola 12 nesta posição
*/



/*
TABELA:   lotofacil_id_b6_a_b9##
Objetivo: Armazena um identificador pra a combinação de 4 bolas válidas, iniciando da esquerda
pra direita, a partir da coluna B6 considerando todas as bolas adjacentes a direita até chegar
 na coluna B9.
Por exemplo, se a tabela é lotofacil_id_b1_a_b5, então,
a tabela irá armazenar as combinações de bolas que é possível
nas posições b1, b2, b3, b4, b5, na coluna b1, por exemplo, é
possível armazenar as bolas 1 até 11
Os ids das combinações corresponde ao deslocamento de 25 bolas,
tais ids corresponde aos ids de grupos considerando a quantidade de
 de bolas pra aquela combinação.
*/
Drop table if exists lotofacil.lotofacil_id_b6_a_b9;
Create table lotofacil.lotofacil_id_b6_a_b9(
     b6_a_b9_id numeric not null,
     b6 numeric not null,
     b7 numeric not null,
     b8 numeric not null,
     b9 numeric not null,
     constraint lotofacil_id_b6_a_b9_pk primary key(b6_a_b9_id)
);
Insert into lotofacil.lotofacil_id_b6_a_b9(
     b6_a_b9_id,
     b6,
     b7,
     b8,
     b9
)
Select grp_id,
     bola1,
     bola2,
     bola3,
     bola4
from lotofacil.lotofacil_id_grupo_4_bolas
where bola1 >= 6 and bola1 <= 16
 order by bola1, bola2, bola3, bola4;
/*
Cada coluna tem a menor e a maior bola que pode estar
naquela posição, por exemplo, na coluna b1, pode ter
no máximo até a bola 11, vc nunca verá uma bola 12 nesta posição
*/



/*
TABELA:   lotofacil_id_b6_a_b10##
Objetivo: Armazena um identificador pra a combinação de 5 bolas válidas, iniciando da esquerda
pra direita, a partir da coluna B6 considerando todas as bolas adjacentes a direita até chegar
 na coluna B10.
Por exemplo, se a tabela é lotofacil_id_b1_a_b5, então,
a tabela irá armazenar as combinações de bolas que é possível
nas posições b1, b2, b3, b4, b5, na coluna b1, por exemplo, é
possível armazenar as bolas 1 até 11
Os ids das combinações corresponde ao deslocamento de 25 bolas,
tais ids corresponde aos ids de grupos considerando a quantidade de
 de bolas pra aquela combinação.
*/
Drop table if exists lotofacil.lotofacil_id_b6_a_b10;
Create table lotofacil.lotofacil_id_b6_a_b10(
     b6_a_b10_id numeric not null,
     b6 numeric not null,
     b7 numeric not null,
     b8 numeric not null,
     b9 numeric not null,
     b10 numeric not null,
     constraint lotofacil_id_b6_a_b10_pk primary key(b6_a_b10_id)
);
Insert into lotofacil.lotofacil_id_b6_a_b10(
     b6_a_b10_id,
     b6,
     b7,
     b8,
     b9,
     b10
)
Select grp_id,
     bola1,
     bola2,
     bola3,
     bola4,
     bola5
from lotofacil.lotofacil_id_grupo_5_bolas
where bola1 >= 6 and bola1 <= 16
 order by bola1, bola2, bola3, bola4, bola5;
/*
Cada coluna tem a menor e a maior bola que pode estar
naquela posição, por exemplo, na coluna b1, pode ter
no máximo até a bola 11, vc nunca verá uma bola 12 nesta posição
*/



/*
TABELA:   lotofacil_id_b6_a_b11##
Objetivo: Armazena um identificador pra a combinação de 6 bolas válidas, iniciando da esquerda
pra direita, a partir da coluna B6 considerando todas as bolas adjacentes a direita até chegar
 na coluna B11.
Por exemplo, se a tabela é lotofacil_id_b1_a_b5, então,
a tabela irá armazenar as combinações de bolas que é possível
nas posições b1, b2, b3, b4, b5, na coluna b1, por exemplo, é
possível armazenar as bolas 1 até 11
Os ids das combinações corresponde ao deslocamento de 25 bolas,
tais ids corresponde aos ids de grupos considerando a quantidade de
 de bolas pra aquela combinação.
*/
Drop table if exists lotofacil.lotofacil_id_b6_a_b11;
Create table lotofacil.lotofacil_id_b6_a_b11(
     b6_a_b11_id numeric not null,
     b6 numeric not null,
     b7 numeric not null,
     b8 numeric not null,
     b9 numeric not null,
     b10 numeric not null,
     b11 numeric not null,
     constraint lotofacil_id_b6_a_b11_pk primary key(b6_a_b11_id)
);
Insert into lotofacil.lotofacil_id_b6_a_b11(
     b6_a_b11_id,
     b6,
     b7,
     b8,
     b9,
     b10,
     b11
)
Select grp_id,
     bola1,
     bola2,
     bola3,
     bola4,
     bola5,
     bola6
from lotofacil.lotofacil_id_grupo_6_bolas
where bola1 >= 6 and bola1 <= 16
 order by bola1, bola2, bola3, bola4, bola5, bola6;
/*
Cada coluna tem a menor e a maior bola que pode estar
naquela posição, por exemplo, na coluna b1, pode ter
no máximo até a bola 11, vc nunca verá uma bola 12 nesta posição
*/



/*
TABELA:   lotofacil_id_b6_a_b12##
Objetivo: Armazena um identificador pra a combinação de 7 bolas válidas, iniciando da esquerda
pra direita, a partir da coluna B6 considerando todas as bolas adjacentes a direita até chegar
 na coluna B12.
Por exemplo, se a tabela é lotofacil_id_b1_a_b5, então,
a tabela irá armazenar as combinações de bolas que é possível
nas posições b1, b2, b3, b4, b5, na coluna b1, por exemplo, é
possível armazenar as bolas 1 até 11
Os ids das combinações corresponde ao deslocamento de 25 bolas,
tais ids corresponde aos ids de grupos considerando a quantidade de
 de bolas pra aquela combinação.
*/
Drop table if exists lotofacil.lotofacil_id_b6_a_b12;
Create table lotofacil.lotofacil_id_b6_a_b12(
     b6_a_b12_id numeric not null,
     b6 numeric not null,
     b7 numeric not null,
     b8 numeric not null,
     b9 numeric not null,
     b10 numeric not null,
     b11 numeric not null,
     b12 numeric not null,
     constraint lotofacil_id_b6_a_b12_pk primary key(b6_a_b12_id)
);
Insert into lotofacil.lotofacil_id_b6_a_b12(
     b6_a_b12_id,
     b6,
     b7,
     b8,
     b9,
     b10,
     b11,
     b12
)
Select grp_id,
     bola1,
     bola2,
     bola3,
     bola4,
     bola5,
     bola6,
     bola7
from lotofacil.lotofacil_id_grupo_7_bolas
where bola1 >= 6 and bola1 <= 16
 order by bola1, bola2, bola3, bola4, bola5, bola6, bola7;
/*
Cada coluna tem a menor e a maior bola que pode estar
naquela posição, por exemplo, na coluna b1, pode ter
no máximo até a bola 11, vc nunca verá uma bola 12 nesta posição
*/



/*
TABELA:   lotofacil_id_b6_a_b13##
Objetivo: Armazena um identificador pra a combinação de 8 bolas válidas, iniciando da esquerda
pra direita, a partir da coluna B6 considerando todas as bolas adjacentes a direita até chegar
 na coluna B13.
Por exemplo, se a tabela é lotofacil_id_b1_a_b5, então,
a tabela irá armazenar as combinações de bolas que é possível
nas posições b1, b2, b3, b4, b5, na coluna b1, por exemplo, é
possível armazenar as bolas 1 até 11
Os ids das combinações corresponde ao deslocamento de 25 bolas,
tais ids corresponde aos ids de grupos considerando a quantidade de
 de bolas pra aquela combinação.
*/
Drop table if exists lotofacil.lotofacil_id_b6_a_b13;
Create table lotofacil.lotofacil_id_b6_a_b13(
     b6_a_b13_id numeric not null,
     b6 numeric not null,
     b7 numeric not null,
     b8 numeric not null,
     b9 numeric not null,
     b10 numeric not null,
     b11 numeric not null,
     b12 numeric not null,
     b13 numeric not null,
     constraint lotofacil_id_b6_a_b13_pk primary key(b6_a_b13_id)
);
Insert into lotofacil.lotofacil_id_b6_a_b13(
     b6_a_b13_id,
     b6,
     b7,
     b8,
     b9,
     b10,
     b11,
     b12,
     b13
)
Select grp_id,
     bola1,
     bola2,
     bola3,
     bola4,
     bola5,
     bola6,
     bola7,
     bola8
from lotofacil.lotofacil_id_grupo_8_bolas
where bola1 >= 6 and bola1 <= 16
 order by bola1, bola2, bola3, bola4, bola5, bola6, bola7, bola8;
/*
Cada coluna tem a menor e a maior bola que pode estar
naquela posição, por exemplo, na coluna b1, pode ter
no máximo até a bola 11, vc nunca verá uma bola 12 nesta posição
*/



/*
TABELA:   lotofacil_id_b6_a_b14##
Objetivo: Armazena um identificador pra a combinação de 9 bolas válidas, iniciando da esquerda
pra direita, a partir da coluna B6 considerando todas as bolas adjacentes a direita até chegar
 na coluna B14.
Por exemplo, se a tabela é lotofacil_id_b1_a_b5, então,
a tabela irá armazenar as combinações de bolas que é possível
nas posições b1, b2, b3, b4, b5, na coluna b1, por exemplo, é
possível armazenar as bolas 1 até 11
Os ids das combinações corresponde ao deslocamento de 25 bolas,
tais ids corresponde aos ids de grupos considerando a quantidade de
 de bolas pra aquela combinação.
*/
Drop table if exists lotofacil.lotofacil_id_b6_a_b14;
Create table lotofacil.lotofacil_id_b6_a_b14(
     b6_a_b14_id numeric not null,
     b6 numeric not null,
     b7 numeric not null,
     b8 numeric not null,
     b9 numeric not null,
     b10 numeric not null,
     b11 numeric not null,
     b12 numeric not null,
     b13 numeric not null,
     b14 numeric not null,
     constraint lotofacil_id_b6_a_b14_pk primary key(b6_a_b14_id)
);
Insert into lotofacil.lotofacil_id_b6_a_b14(
     b6_a_b14_id,
     b6,
     b7,
     b8,
     b9,
     b10,
     b11,
     b12,
     b13,
     b14
)
Select grp_id,
     bola1,
     bola2,
     bola3,
     bola4,
     bola5,
     bola6,
     bola7,
     bola8,
     bola9
from lotofacil.lotofacil_id_grupo_9_bolas
where bola1 >= 6 and bola1 <= 16
 order by bola1, bola2, bola3, bola4, bola5, bola6, bola7, bola8, bola9;
/*
Cada coluna tem a menor e a maior bola que pode estar
naquela posição, por exemplo, na coluna b1, pode ter
no máximo até a bola 11, vc nunca verá uma bola 12 nesta posição
*/



/*
TABELA:   lotofacil_id_b6_a_b15##
Objetivo: Armazena um identificador pra a combinação de 10 bolas válidas, iniciando da esquerda
pra direita, a partir da coluna B6 considerando todas as bolas adjacentes a direita até chegar
 na coluna B15.
Por exemplo, se a tabela é lotofacil_id_b1_a_b5, então,
a tabela irá armazenar as combinações de bolas que é possível
nas posições b1, b2, b3, b4, b5, na coluna b1, por exemplo, é
possível armazenar as bolas 1 até 11
Os ids das combinações corresponde ao deslocamento de 25 bolas,
tais ids corresponde aos ids de grupos considerando a quantidade de
 de bolas pra aquela combinação.
*/
Drop table if exists lotofacil.lotofacil_id_b6_a_b15;
Create table lotofacil.lotofacil_id_b6_a_b15(
     b6_a_b15_id numeric not null,
     b6 numeric not null,
     b7 numeric not null,
     b8 numeric not null,
     b9 numeric not null,
     b10 numeric not null,
     b11 numeric not null,
     b12 numeric not null,
     b13 numeric not null,
     b14 numeric not null,
     b15 numeric not null,
     constraint lotofacil_id_b6_a_b15_pk primary key(b6_a_b15_id)
);
Insert into lotofacil.lotofacil_id_b6_a_b15(
     b6_a_b15_id,
     b6,
     b7,
     b8,
     b9,
     b10,
     b11,
     b12,
     b13,
     b14,
     b15
)
Select grp_id,
     bola1,
     bola2,
     bola3,
     bola4,
     bola5,
     bola6,
     bola7,
     bola8,
     bola9,
     bola10
from lotofacil.lotofacil_id_grupo_10_bolas
where bola1 >= 6 and bola1 <= 16
 order by bola1, bola2, bola3, bola4, bola5, bola6, bola7, bola8, bola9, bola10;
/*
Cada coluna tem a menor e a maior bola que pode estar
naquela posição, por exemplo, na coluna b1, pode ter
no máximo até a bola 11, vc nunca verá uma bola 12 nesta posição
*/



/*
TABELA:   lotofacil_id_b7_a_b7##
Objetivo: Armazena um identificador pra a combinação de 1 bolas válidas, iniciando da esquerda
pra direita, a partir da coluna B7 considerando todas as bolas adjacentes a direita até chegar
 na coluna B7.
Por exemplo, se a tabela é lotofacil_id_b1_a_b5, então,
a tabela irá armazenar as combinações de bolas que é possível
nas posições b1, b2, b3, b4, b5, na coluna b1, por exemplo, é
possível armazenar as bolas 1 até 11
Os ids das combinações corresponde ao deslocamento de 25 bolas,
tais ids corresponde aos ids de grupos considerando a quantidade de
 de bolas pra aquela combinação.
*/
Drop table if exists lotofacil.lotofacil_id_b7_a_b7;
Create table lotofacil.lotofacil_id_b7_a_b7(
     b7_a_b7_id numeric not null,
     b7 numeric not null,
     constraint lotofacil_id_b7_a_b7_pk primary key(b7_a_b7_id)
);
Insert into lotofacil.lotofacil_id_b7_a_b7(
     b7_a_b7_id,
     b7
)
Select grp_id,
     bola1
from lotofacil.lotofacil_id_grupo_1_bola
where bola1 >= 7 and bola1 <= 17
 order by bola1;
/*
Cada coluna tem a menor e a maior bola que pode estar
naquela posição, por exemplo, na coluna b1, pode ter
no máximo até a bola 11, vc nunca verá uma bola 12 nesta posição
*/



/*
TABELA:   lotofacil_id_b7_a_b8##
Objetivo: Armazena um identificador pra a combinação de 2 bolas válidas, iniciando da esquerda
pra direita, a partir da coluna B7 considerando todas as bolas adjacentes a direita até chegar
 na coluna B8.
Por exemplo, se a tabela é lotofacil_id_b1_a_b5, então,
a tabela irá armazenar as combinações de bolas que é possível
nas posições b1, b2, b3, b4, b5, na coluna b1, por exemplo, é
possível armazenar as bolas 1 até 11
Os ids das combinações corresponde ao deslocamento de 25 bolas,
tais ids corresponde aos ids de grupos considerando a quantidade de
 de bolas pra aquela combinação.
*/
Drop table if exists lotofacil.lotofacil_id_b7_a_b8;
Create table lotofacil.lotofacil_id_b7_a_b8(
     b7_a_b8_id numeric not null,
     b7 numeric not null,
     b8 numeric not null,
     constraint lotofacil_id_b7_a_b8_pk primary key(b7_a_b8_id)
);
Insert into lotofacil.lotofacil_id_b7_a_b8(
     b7_a_b8_id,
     b7,
     b8
)
Select grp_id,
     bola1,
     bola2
from lotofacil.lotofacil_id_grupo_2_bolas
where bola1 >= 7 and bola1 <= 17
 order by bola1, bola2;
/*
Cada coluna tem a menor e a maior bola que pode estar
naquela posição, por exemplo, na coluna b1, pode ter
no máximo até a bola 11, vc nunca verá uma bola 12 nesta posição
*/



/*
TABELA:   lotofacil_id_b7_a_b9##
Objetivo: Armazena um identificador pra a combinação de 3 bolas válidas, iniciando da esquerda
pra direita, a partir da coluna B7 considerando todas as bolas adjacentes a direita até chegar
 na coluna B9.
Por exemplo, se a tabela é lotofacil_id_b1_a_b5, então,
a tabela irá armazenar as combinações de bolas que é possível
nas posições b1, b2, b3, b4, b5, na coluna b1, por exemplo, é
possível armazenar as bolas 1 até 11
Os ids das combinações corresponde ao deslocamento de 25 bolas,
tais ids corresponde aos ids de grupos considerando a quantidade de
 de bolas pra aquela combinação.
*/
Drop table if exists lotofacil.lotofacil_id_b7_a_b9;
Create table lotofacil.lotofacil_id_b7_a_b9(
     b7_a_b9_id numeric not null,
     b7 numeric not null,
     b8 numeric not null,
     b9 numeric not null,
     constraint lotofacil_id_b7_a_b9_pk primary key(b7_a_b9_id)
);
Insert into lotofacil.lotofacil_id_b7_a_b9(
     b7_a_b9_id,
     b7,
     b8,
     b9
)
Select grp_id,
     bola1,
     bola2,
     bola3
from lotofacil.lotofacil_id_grupo_3_bolas
where bola1 >= 7 and bola1 <= 17
 order by bola1, bola2, bola3;
/*
Cada coluna tem a menor e a maior bola que pode estar
naquela posição, por exemplo, na coluna b1, pode ter
no máximo até a bola 11, vc nunca verá uma bola 12 nesta posição
*/



/*
TABELA:   lotofacil_id_b7_a_b10##
Objetivo: Armazena um identificador pra a combinação de 4 bolas válidas, iniciando da esquerda
pra direita, a partir da coluna B7 considerando todas as bolas adjacentes a direita até chegar
 na coluna B10.
Por exemplo, se a tabela é lotofacil_id_b1_a_b5, então,
a tabela irá armazenar as combinações de bolas que é possível
nas posições b1, b2, b3, b4, b5, na coluna b1, por exemplo, é
possível armazenar as bolas 1 até 11
Os ids das combinações corresponde ao deslocamento de 25 bolas,
tais ids corresponde aos ids de grupos considerando a quantidade de
 de bolas pra aquela combinação.
*/
Drop table if exists lotofacil.lotofacil_id_b7_a_b10;
Create table lotofacil.lotofacil_id_b7_a_b10(
     b7_a_b10_id numeric not null,
     b7 numeric not null,
     b8 numeric not null,
     b9 numeric not null,
     b10 numeric not null,
     constraint lotofacil_id_b7_a_b10_pk primary key(b7_a_b10_id)
);
Insert into lotofacil.lotofacil_id_b7_a_b10(
     b7_a_b10_id,
     b7,
     b8,
     b9,
     b10
)
Select grp_id,
     bola1,
     bola2,
     bola3,
     bola4
from lotofacil.lotofacil_id_grupo_4_bolas
where bola1 >= 7 and bola1 <= 17
 order by bola1, bola2, bola3, bola4;
/*
Cada coluna tem a menor e a maior bola que pode estar
naquela posição, por exemplo, na coluna b1, pode ter
no máximo até a bola 11, vc nunca verá uma bola 12 nesta posição
*/



/*
TABELA:   lotofacil_id_b7_a_b11##
Objetivo: Armazena um identificador pra a combinação de 5 bolas válidas, iniciando da esquerda
pra direita, a partir da coluna B7 considerando todas as bolas adjacentes a direita até chegar
 na coluna B11.
Por exemplo, se a tabela é lotofacil_id_b1_a_b5, então,
a tabela irá armazenar as combinações de bolas que é possível
nas posições b1, b2, b3, b4, b5, na coluna b1, por exemplo, é
possível armazenar as bolas 1 até 11
Os ids das combinações corresponde ao deslocamento de 25 bolas,
tais ids corresponde aos ids de grupos considerando a quantidade de
 de bolas pra aquela combinação.
*/
Drop table if exists lotofacil.lotofacil_id_b7_a_b11;
Create table lotofacil.lotofacil_id_b7_a_b11(
     b7_a_b11_id numeric not null,
     b7 numeric not null,
     b8 numeric not null,
     b9 numeric not null,
     b10 numeric not null,
     b11 numeric not null,
     constraint lotofacil_id_b7_a_b11_pk primary key(b7_a_b11_id)
);
Insert into lotofacil.lotofacil_id_b7_a_b11(
     b7_a_b11_id,
     b7,
     b8,
     b9,
     b10,
     b11
)
Select grp_id,
     bola1,
     bola2,
     bola3,
     bola4,
     bola5
from lotofacil.lotofacil_id_grupo_5_bolas
where bola1 >= 7 and bola1 <= 17
 order by bola1, bola2, bola3, bola4, bola5;
/*
Cada coluna tem a menor e a maior bola que pode estar
naquela posição, por exemplo, na coluna b1, pode ter
no máximo até a bola 11, vc nunca verá uma bola 12 nesta posição
*/



/*
TABELA:   lotofacil_id_b7_a_b12##
Objetivo: Armazena um identificador pra a combinação de 6 bolas válidas, iniciando da esquerda
pra direita, a partir da coluna B7 considerando todas as bolas adjacentes a direita até chegar
 na coluna B12.
Por exemplo, se a tabela é lotofacil_id_b1_a_b5, então,
a tabela irá armazenar as combinações de bolas que é possível
nas posições b1, b2, b3, b4, b5, na coluna b1, por exemplo, é
possível armazenar as bolas 1 até 11
Os ids das combinações corresponde ao deslocamento de 25 bolas,
tais ids corresponde aos ids de grupos considerando a quantidade de
 de bolas pra aquela combinação.
*/
Drop table if exists lotofacil.lotofacil_id_b7_a_b12;
Create table lotofacil.lotofacil_id_b7_a_b12(
     b7_a_b12_id numeric not null,
     b7 numeric not null,
     b8 numeric not null,
     b9 numeric not null,
     b10 numeric not null,
     b11 numeric not null,
     b12 numeric not null,
     constraint lotofacil_id_b7_a_b12_pk primary key(b7_a_b12_id)
);
Insert into lotofacil.lotofacil_id_b7_a_b12(
     b7_a_b12_id,
     b7,
     b8,
     b9,
     b10,
     b11,
     b12
)
Select grp_id,
     bola1,
     bola2,
     bola3,
     bola4,
     bola5,
     bola6
from lotofacil.lotofacil_id_grupo_6_bolas
where bola1 >= 7 and bola1 <= 17
 order by bola1, bola2, bola3, bola4, bola5, bola6;
/*
Cada coluna tem a menor e a maior bola que pode estar
naquela posição, por exemplo, na coluna b1, pode ter
no máximo até a bola 11, vc nunca verá uma bola 12 nesta posição
*/



/*
TABELA:   lotofacil_id_b7_a_b13##
Objetivo: Armazena um identificador pra a combinação de 7 bolas válidas, iniciando da esquerda
pra direita, a partir da coluna B7 considerando todas as bolas adjacentes a direita até chegar
 na coluna B13.
Por exemplo, se a tabela é lotofacil_id_b1_a_b5, então,
a tabela irá armazenar as combinações de bolas que é possível
nas posições b1, b2, b3, b4, b5, na coluna b1, por exemplo, é
possível armazenar as bolas 1 até 11
Os ids das combinações corresponde ao deslocamento de 25 bolas,
tais ids corresponde aos ids de grupos considerando a quantidade de
 de bolas pra aquela combinação.
*/
Drop table if exists lotofacil.lotofacil_id_b7_a_b13;
Create table lotofacil.lotofacil_id_b7_a_b13(
     b7_a_b13_id numeric not null,
     b7 numeric not null,
     b8 numeric not null,
     b9 numeric not null,
     b10 numeric not null,
     b11 numeric not null,
     b12 numeric not null,
     b13 numeric not null,
     constraint lotofacil_id_b7_a_b13_pk primary key(b7_a_b13_id)
);
Insert into lotofacil.lotofacil_id_b7_a_b13(
     b7_a_b13_id,
     b7,
     b8,
     b9,
     b10,
     b11,
     b12,
     b13
)
Select grp_id,
     bola1,
     bola2,
     bola3,
     bola4,
     bola5,
     bola6,
     bola7
from lotofacil.lotofacil_id_grupo_7_bolas
where bola1 >= 7 and bola1 <= 17
 order by bola1, bola2, bola3, bola4, bola5, bola6, bola7;
/*
Cada coluna tem a menor e a maior bola que pode estar
naquela posição, por exemplo, na coluna b1, pode ter
no máximo até a bola 11, vc nunca verá uma bola 12 nesta posição
*/



/*
TABELA:   lotofacil_id_b7_a_b14##
Objetivo: Armazena um identificador pra a combinação de 8 bolas válidas, iniciando da esquerda
pra direita, a partir da coluna B7 considerando todas as bolas adjacentes a direita até chegar
 na coluna B14.
Por exemplo, se a tabela é lotofacil_id_b1_a_b5, então,
a tabela irá armazenar as combinações de bolas que é possível
nas posições b1, b2, b3, b4, b5, na coluna b1, por exemplo, é
possível armazenar as bolas 1 até 11
Os ids das combinações corresponde ao deslocamento de 25 bolas,
tais ids corresponde aos ids de grupos considerando a quantidade de
 de bolas pra aquela combinação.
*/
Drop table if exists lotofacil.lotofacil_id_b7_a_b14;
Create table lotofacil.lotofacil_id_b7_a_b14(
     b7_a_b14_id numeric not null,
     b7 numeric not null,
     b8 numeric not null,
     b9 numeric not null,
     b10 numeric not null,
     b11 numeric not null,
     b12 numeric not null,
     b13 numeric not null,
     b14 numeric not null,
     constraint lotofacil_id_b7_a_b14_pk primary key(b7_a_b14_id)
);
Insert into lotofacil.lotofacil_id_b7_a_b14(
     b7_a_b14_id,
     b7,
     b8,
     b9,
     b10,
     b11,
     b12,
     b13,
     b14
)
Select grp_id,
     bola1,
     bola2,
     bola3,
     bola4,
     bola5,
     bola6,
     bola7,
     bola8
from lotofacil.lotofacil_id_grupo_8_bolas
where bola1 >= 7 and bola1 <= 17
 order by bola1, bola2, bola3, bola4, bola5, bola6, bola7, bola8;
/*
Cada coluna tem a menor e a maior bola que pode estar
naquela posição, por exemplo, na coluna b1, pode ter
no máximo até a bola 11, vc nunca verá uma bola 12 nesta posição
*/



/*
TABELA:   lotofacil_id_b7_a_b15##
Objetivo: Armazena um identificador pra a combinação de 9 bolas válidas, iniciando da esquerda
pra direita, a partir da coluna B7 considerando todas as bolas adjacentes a direita até chegar
 na coluna B15.
Por exemplo, se a tabela é lotofacil_id_b1_a_b5, então,
a tabela irá armazenar as combinações de bolas que é possível
nas posições b1, b2, b3, b4, b5, na coluna b1, por exemplo, é
possível armazenar as bolas 1 até 11
Os ids das combinações corresponde ao deslocamento de 25 bolas,
tais ids corresponde aos ids de grupos considerando a quantidade de
 de bolas pra aquela combinação.
*/
Drop table if exists lotofacil.lotofacil_id_b7_a_b15;
Create table lotofacil.lotofacil_id_b7_a_b15(
     b7_a_b15_id numeric not null,
     b7 numeric not null,
     b8 numeric not null,
     b9 numeric not null,
     b10 numeric not null,
     b11 numeric not null,
     b12 numeric not null,
     b13 numeric not null,
     b14 numeric not null,
     b15 numeric not null,
     constraint lotofacil_id_b7_a_b15_pk primary key(b7_a_b15_id)
);
Insert into lotofacil.lotofacil_id_b7_a_b15(
     b7_a_b15_id,
     b7,
     b8,
     b9,
     b10,
     b11,
     b12,
     b13,
     b14,
     b15
)
Select grp_id,
     bola1,
     bola2,
     bola3,
     bola4,
     bola5,
     bola6,
     bola7,
     bola8,
     bola9
from lotofacil.lotofacil_id_grupo_9_bolas
where bola1 >= 7 and bola1 <= 17
 order by bola1, bola2, bola3, bola4, bola5, bola6, bola7, bola8, bola9;
/*
Cada coluna tem a menor e a maior bola que pode estar
naquela posição, por exemplo, na coluna b1, pode ter
no máximo até a bola 11, vc nunca verá uma bola 12 nesta posição
*/



/*
TABELA:   lotofacil_id_b8_a_b8##
Objetivo: Armazena um identificador pra a combinação de 1 bolas válidas, iniciando da esquerda
pra direita, a partir da coluna B8 considerando todas as bolas adjacentes a direita até chegar
 na coluna B8.
Por exemplo, se a tabela é lotofacil_id_b1_a_b5, então,
a tabela irá armazenar as combinações de bolas que é possível
nas posições b1, b2, b3, b4, b5, na coluna b1, por exemplo, é
possível armazenar as bolas 1 até 11
Os ids das combinações corresponde ao deslocamento de 25 bolas,
tais ids corresponde aos ids de grupos considerando a quantidade de
 de bolas pra aquela combinação.
*/
Drop table if exists lotofacil.lotofacil_id_b8_a_b8;
Create table lotofacil.lotofacil_id_b8_a_b8(
     b8_a_b8_id numeric not null,
     b8 numeric not null,
     constraint lotofacil_id_b8_a_b8_pk primary key(b8_a_b8_id)
);
Insert into lotofacil.lotofacil_id_b8_a_b8(
     b8_a_b8_id,
     b8
)
Select grp_id,
     bola1
from lotofacil.lotofacil_id_grupo_1_bola
where bola1 >= 8 and bola1 <= 18
 order by bola1;
/*
Cada coluna tem a menor e a maior bola que pode estar
naquela posição, por exemplo, na coluna b1, pode ter
no máximo até a bola 11, vc nunca verá uma bola 12 nesta posição
*/



/*
TABELA:   lotofacil_id_b8_a_b9##
Objetivo: Armazena um identificador pra a combinação de 2 bolas válidas, iniciando da esquerda
pra direita, a partir da coluna B8 considerando todas as bolas adjacentes a direita até chegar
 na coluna B9.
Por exemplo, se a tabela é lotofacil_id_b1_a_b5, então,
a tabela irá armazenar as combinações de bolas que é possível
nas posições b1, b2, b3, b4, b5, na coluna b1, por exemplo, é
possível armazenar as bolas 1 até 11
Os ids das combinações corresponde ao deslocamento de 25 bolas,
tais ids corresponde aos ids de grupos considerando a quantidade de
 de bolas pra aquela combinação.
*/
Drop table if exists lotofacil.lotofacil_id_b8_a_b9;
Create table lotofacil.lotofacil_id_b8_a_b9(
     b8_a_b9_id numeric not null,
     b8 numeric not null,
     b9 numeric not null,
     constraint lotofacil_id_b8_a_b9_pk primary key(b8_a_b9_id)
);
Insert into lotofacil.lotofacil_id_b8_a_b9(
     b8_a_b9_id,
     b8,
     b9
)
Select grp_id,
     bola1,
     bola2
from lotofacil.lotofacil_id_grupo_2_bolas
where bola1 >= 8 and bola1 <= 18
 order by bola1, bola2;
/*
Cada coluna tem a menor e a maior bola que pode estar
naquela posição, por exemplo, na coluna b1, pode ter
no máximo até a bola 11, vc nunca verá uma bola 12 nesta posição
*/



/*
TABELA:   lotofacil_id_b8_a_b10##
Objetivo: Armazena um identificador pra a combinação de 3 bolas válidas, iniciando da esquerda
pra direita, a partir da coluna B8 considerando todas as bolas adjacentes a direita até chegar
 na coluna B10.
Por exemplo, se a tabela é lotofacil_id_b1_a_b5, então,
a tabela irá armazenar as combinações de bolas que é possível
nas posições b1, b2, b3, b4, b5, na coluna b1, por exemplo, é
possível armazenar as bolas 1 até 11
Os ids das combinações corresponde ao deslocamento de 25 bolas,
tais ids corresponde aos ids de grupos considerando a quantidade de
 de bolas pra aquela combinação.
*/
Drop table if exists lotofacil.lotofacil_id_b8_a_b10;
Create table lotofacil.lotofacil_id_b8_a_b10(
     b8_a_b10_id numeric not null,
     b8 numeric not null,
     b9 numeric not null,
     b10 numeric not null,
     constraint lotofacil_id_b8_a_b10_pk primary key(b8_a_b10_id)
);
Insert into lotofacil.lotofacil_id_b8_a_b10(
     b8_a_b10_id,
     b8,
     b9,
     b10
)
Select grp_id,
     bola1,
     bola2,
     bola3
from lotofacil.lotofacil_id_grupo_3_bolas
where bola1 >= 8 and bola1 <= 18
 order by bola1, bola2, bola3;
/*
Cada coluna tem a menor e a maior bola que pode estar
naquela posição, por exemplo, na coluna b1, pode ter
no máximo até a bola 11, vc nunca verá uma bola 12 nesta posição
*/



/*
TABELA:   lotofacil_id_b8_a_b11##
Objetivo: Armazena um identificador pra a combinação de 4 bolas válidas, iniciando da esquerda
pra direita, a partir da coluna B8 considerando todas as bolas adjacentes a direita até chegar
 na coluna B11.
Por exemplo, se a tabela é lotofacil_id_b1_a_b5, então,
a tabela irá armazenar as combinações de bolas que é possível
nas posições b1, b2, b3, b4, b5, na coluna b1, por exemplo, é
possível armazenar as bolas 1 até 11
Os ids das combinações corresponde ao deslocamento de 25 bolas,
tais ids corresponde aos ids de grupos considerando a quantidade de
 de bolas pra aquela combinação.
*/
Drop table if exists lotofacil.lotofacil_id_b8_a_b11;
Create table lotofacil.lotofacil_id_b8_a_b11(
     b8_a_b11_id numeric not null,
     b8 numeric not null,
     b9 numeric not null,
     b10 numeric not null,
     b11 numeric not null,
     constraint lotofacil_id_b8_a_b11_pk primary key(b8_a_b11_id)
);
Insert into lotofacil.lotofacil_id_b8_a_b11(
     b8_a_b11_id,
     b8,
     b9,
     b10,
     b11
)
Select grp_id,
     bola1,
     bola2,
     bola3,
     bola4
from lotofacil.lotofacil_id_grupo_4_bolas
where bola1 >= 8 and bola1 <= 18
 order by bola1, bola2, bola3, bola4;
/*
Cada coluna tem a menor e a maior bola que pode estar
naquela posição, por exemplo, na coluna b1, pode ter
no máximo até a bola 11, vc nunca verá uma bola 12 nesta posição
*/



/*
TABELA:   lotofacil_id_b8_a_b12##
Objetivo: Armazena um identificador pra a combinação de 5 bolas válidas, iniciando da esquerda
pra direita, a partir da coluna B8 considerando todas as bolas adjacentes a direita até chegar
 na coluna B12.
Por exemplo, se a tabela é lotofacil_id_b1_a_b5, então,
a tabela irá armazenar as combinações de bolas que é possível
nas posições b1, b2, b3, b4, b5, na coluna b1, por exemplo, é
possível armazenar as bolas 1 até 11
Os ids das combinações corresponde ao deslocamento de 25 bolas,
tais ids corresponde aos ids de grupos considerando a quantidade de
 de bolas pra aquela combinação.
*/
Drop table if exists lotofacil.lotofacil_id_b8_a_b12;
Create table lotofacil.lotofacil_id_b8_a_b12(
     b8_a_b12_id numeric not null,
     b8 numeric not null,
     b9 numeric not null,
     b10 numeric not null,
     b11 numeric not null,
     b12 numeric not null,
     constraint lotofacil_id_b8_a_b12_pk primary key(b8_a_b12_id)
);
Insert into lotofacil.lotofacil_id_b8_a_b12(
     b8_a_b12_id,
     b8,
     b9,
     b10,
     b11,
     b12
)
Select grp_id,
     bola1,
     bola2,
     bola3,
     bola4,
     bola5
from lotofacil.lotofacil_id_grupo_5_bolas
where bola1 >= 8 and bola1 <= 18
 order by bola1, bola2, bola3, bola4, bola5;
/*
Cada coluna tem a menor e a maior bola que pode estar
naquela posição, por exemplo, na coluna b1, pode ter
no máximo até a bola 11, vc nunca verá uma bola 12 nesta posição
*/



/*
TABELA:   lotofacil_id_b8_a_b13##
Objetivo: Armazena um identificador pra a combinação de 6 bolas válidas, iniciando da esquerda
pra direita, a partir da coluna B8 considerando todas as bolas adjacentes a direita até chegar
 na coluna B13.
Por exemplo, se a tabela é lotofacil_id_b1_a_b5, então,
a tabela irá armazenar as combinações de bolas que é possível
nas posições b1, b2, b3, b4, b5, na coluna b1, por exemplo, é
possível armazenar as bolas 1 até 11
Os ids das combinações corresponde ao deslocamento de 25 bolas,
tais ids corresponde aos ids de grupos considerando a quantidade de
 de bolas pra aquela combinação.
*/
Drop table if exists lotofacil.lotofacil_id_b8_a_b13;
Create table lotofacil.lotofacil_id_b8_a_b13(
     b8_a_b13_id numeric not null,
     b8 numeric not null,
     b9 numeric not null,
     b10 numeric not null,
     b11 numeric not null,
     b12 numeric not null,
     b13 numeric not null,
     constraint lotofacil_id_b8_a_b13_pk primary key(b8_a_b13_id)
);
Insert into lotofacil.lotofacil_id_b8_a_b13(
     b8_a_b13_id,
     b8,
     b9,
     b10,
     b11,
     b12,
     b13
)
Select grp_id,
     bola1,
     bola2,
     bola3,
     bola4,
     bola5,
     bola6
from lotofacil.lotofacil_id_grupo_6_bolas
where bola1 >= 8 and bola1 <= 18
 order by bola1, bola2, bola3, bola4, bola5, bola6;
/*
Cada coluna tem a menor e a maior bola que pode estar
naquela posição, por exemplo, na coluna b1, pode ter
no máximo até a bola 11, vc nunca verá uma bola 12 nesta posição
*/



/*
TABELA:   lotofacil_id_b8_a_b14##
Objetivo: Armazena um identificador pra a combinação de 7 bolas válidas, iniciando da esquerda
pra direita, a partir da coluna B8 considerando todas as bolas adjacentes a direita até chegar
 na coluna B14.
Por exemplo, se a tabela é lotofacil_id_b1_a_b5, então,
a tabela irá armazenar as combinações de bolas que é possível
nas posições b1, b2, b3, b4, b5, na coluna b1, por exemplo, é
possível armazenar as bolas 1 até 11
Os ids das combinações corresponde ao deslocamento de 25 bolas,
tais ids corresponde aos ids de grupos considerando a quantidade de
 de bolas pra aquela combinação.
*/
Drop table if exists lotofacil.lotofacil_id_b8_a_b14;
Create table lotofacil.lotofacil_id_b8_a_b14(
     b8_a_b14_id numeric not null,
     b8 numeric not null,
     b9 numeric not null,
     b10 numeric not null,
     b11 numeric not null,
     b12 numeric not null,
     b13 numeric not null,
     b14 numeric not null,
     constraint lotofacil_id_b8_a_b14_pk primary key(b8_a_b14_id)
);
Insert into lotofacil.lotofacil_id_b8_a_b14(
     b8_a_b14_id,
     b8,
     b9,
     b10,
     b11,
     b12,
     b13,
     b14
)
Select grp_id,
     bola1,
     bola2,
     bola3,
     bola4,
     bola5,
     bola6,
     bola7
from lotofacil.lotofacil_id_grupo_7_bolas
where bola1 >= 8 and bola1 <= 18
 order by bola1, bola2, bola3, bola4, bola5, bola6, bola7;
/*
Cada coluna tem a menor e a maior bola que pode estar
naquela posição, por exemplo, na coluna b1, pode ter
no máximo até a bola 11, vc nunca verá uma bola 12 nesta posição
*/



/*
TABELA:   lotofacil_id_b8_a_b15##
Objetivo: Armazena um identificador pra a combinação de 8 bolas válidas, iniciando da esquerda
pra direita, a partir da coluna B8 considerando todas as bolas adjacentes a direita até chegar
 na coluna B15.
Por exemplo, se a tabela é lotofacil_id_b1_a_b5, então,
a tabela irá armazenar as combinações de bolas que é possível
nas posições b1, b2, b3, b4, b5, na coluna b1, por exemplo, é
possível armazenar as bolas 1 até 11
Os ids das combinações corresponde ao deslocamento de 25 bolas,
tais ids corresponde aos ids de grupos considerando a quantidade de
 de bolas pra aquela combinação.
*/
Drop table if exists lotofacil.lotofacil_id_b8_a_b15;
Create table lotofacil.lotofacil_id_b8_a_b15(
     b8_a_b15_id numeric not null,
     b8 numeric not null,
     b9 numeric not null,
     b10 numeric not null,
     b11 numeric not null,
     b12 numeric not null,
     b13 numeric not null,
     b14 numeric not null,
     b15 numeric not null,
     constraint lotofacil_id_b8_a_b15_pk primary key(b8_a_b15_id)
);
Insert into lotofacil.lotofacil_id_b8_a_b15(
     b8_a_b15_id,
     b8,
     b9,
     b10,
     b11,
     b12,
     b13,
     b14,
     b15
)
Select grp_id,
     bola1,
     bola2,
     bola3,
     bola4,
     bola5,
     bola6,
     bola7,
     bola8
from lotofacil.lotofacil_id_grupo_8_bolas
where bola1 >= 8 and bola1 <= 18
 order by bola1, bola2, bola3, bola4, bola5, bola6, bola7, bola8;
/*
Cada coluna tem a menor e a maior bola que pode estar
naquela posição, por exemplo, na coluna b1, pode ter
no máximo até a bola 11, vc nunca verá uma bola 12 nesta posição
*/



/*
TABELA:   lotofacil_id_b9_a_b9##
Objetivo: Armazena um identificador pra a combinação de 1 bolas válidas, iniciando da esquerda
pra direita, a partir da coluna B9 considerando todas as bolas adjacentes a direita até chegar
 na coluna B9.
Por exemplo, se a tabela é lotofacil_id_b1_a_b5, então,
a tabela irá armazenar as combinações de bolas que é possível
nas posições b1, b2, b3, b4, b5, na coluna b1, por exemplo, é
possível armazenar as bolas 1 até 11
Os ids das combinações corresponde ao deslocamento de 25 bolas,
tais ids corresponde aos ids de grupos considerando a quantidade de
 de bolas pra aquela combinação.
*/
Drop table if exists lotofacil.lotofacil_id_b9_a_b9;
Create table lotofacil.lotofacil_id_b9_a_b9(
     b9_a_b9_id numeric not null,
     b9 numeric not null,
     constraint lotofacil_id_b9_a_b9_pk primary key(b9_a_b9_id)
);
Insert into lotofacil.lotofacil_id_b9_a_b9(
     b9_a_b9_id,
     b9
)
Select grp_id,
     bola1
from lotofacil.lotofacil_id_grupo_1_bola
where bola1 >= 9 and bola1 <= 19
 order by bola1;
/*
Cada coluna tem a menor e a maior bola que pode estar
naquela posição, por exemplo, na coluna b1, pode ter
no máximo até a bola 11, vc nunca verá uma bola 12 nesta posição
*/



/*
TABELA:   lotofacil_id_b9_a_b10##
Objetivo: Armazena um identificador pra a combinação de 2 bolas válidas, iniciando da esquerda
pra direita, a partir da coluna B9 considerando todas as bolas adjacentes a direita até chegar
 na coluna B10.
Por exemplo, se a tabela é lotofacil_id_b1_a_b5, então,
a tabela irá armazenar as combinações de bolas que é possível
nas posições b1, b2, b3, b4, b5, na coluna b1, por exemplo, é
possível armazenar as bolas 1 até 11
Os ids das combinações corresponde ao deslocamento de 25 bolas,
tais ids corresponde aos ids de grupos considerando a quantidade de
 de bolas pra aquela combinação.
*/
Drop table if exists lotofacil.lotofacil_id_b9_a_b10;
Create table lotofacil.lotofacil_id_b9_a_b10(
     b9_a_b10_id numeric not null,
     b9 numeric not null,
     b10 numeric not null,
     constraint lotofacil_id_b9_a_b10_pk primary key(b9_a_b10_id)
);
Insert into lotofacil.lotofacil_id_b9_a_b10(
     b9_a_b10_id,
     b9,
     b10
)
Select grp_id,
     bola1,
     bola2
from lotofacil.lotofacil_id_grupo_2_bolas
where bola1 >= 9 and bola1 <= 19
 order by bola1, bola2;
/*
Cada coluna tem a menor e a maior bola que pode estar
naquela posição, por exemplo, na coluna b1, pode ter
no máximo até a bola 11, vc nunca verá uma bola 12 nesta posição
*/



/*
TABELA:   lotofacil_id_b9_a_b11##
Objetivo: Armazena um identificador pra a combinação de 3 bolas válidas, iniciando da esquerda
pra direita, a partir da coluna B9 considerando todas as bolas adjacentes a direita até chegar
 na coluna B11.
Por exemplo, se a tabela é lotofacil_id_b1_a_b5, então,
a tabela irá armazenar as combinações de bolas que é possível
nas posições b1, b2, b3, b4, b5, na coluna b1, por exemplo, é
possível armazenar as bolas 1 até 11
Os ids das combinações corresponde ao deslocamento de 25 bolas,
tais ids corresponde aos ids de grupos considerando a quantidade de
 de bolas pra aquela combinação.
*/
Drop table if exists lotofacil.lotofacil_id_b9_a_b11;
Create table lotofacil.lotofacil_id_b9_a_b11(
     b9_a_b11_id numeric not null,
     b9 numeric not null,
     b10 numeric not null,
     b11 numeric not null,
     constraint lotofacil_id_b9_a_b11_pk primary key(b9_a_b11_id)
);
Insert into lotofacil.lotofacil_id_b9_a_b11(
     b9_a_b11_id,
     b9,
     b10,
     b11
)
Select grp_id,
     bola1,
     bola2,
     bola3
from lotofacil.lotofacil_id_grupo_3_bolas
where bola1 >= 9 and bola1 <= 19
 order by bola1, bola2, bola3;
/*
Cada coluna tem a menor e a maior bola que pode estar
naquela posição, por exemplo, na coluna b1, pode ter
no máximo até a bola 11, vc nunca verá uma bola 12 nesta posição
*/



/*
TABELA:   lotofacil_id_b9_a_b12##
Objetivo: Armazena um identificador pra a combinação de 4 bolas válidas, iniciando da esquerda
pra direita, a partir da coluna B9 considerando todas as bolas adjacentes a direita até chegar
 na coluna B12.
Por exemplo, se a tabela é lotofacil_id_b1_a_b5, então,
a tabela irá armazenar as combinações de bolas que é possível
nas posições b1, b2, b3, b4, b5, na coluna b1, por exemplo, é
possível armazenar as bolas 1 até 11
Os ids das combinações corresponde ao deslocamento de 25 bolas,
tais ids corresponde aos ids de grupos considerando a quantidade de
 de bolas pra aquela combinação.
*/
Drop table if exists lotofacil.lotofacil_id_b9_a_b12;
Create table lotofacil.lotofacil_id_b9_a_b12(
     b9_a_b12_id numeric not null,
     b9 numeric not null,
     b10 numeric not null,
     b11 numeric not null,
     b12 numeric not null,
     constraint lotofacil_id_b9_a_b12_pk primary key(b9_a_b12_id)
);
Insert into lotofacil.lotofacil_id_b9_a_b12(
     b9_a_b12_id,
     b9,
     b10,
     b11,
     b12
)
Select grp_id,
     bola1,
     bola2,
     bola3,
     bola4
from lotofacil.lotofacil_id_grupo_4_bolas
where bola1 >= 9 and bola1 <= 19
 order by bola1, bola2, bola3, bola4;
/*
Cada coluna tem a menor e a maior bola que pode estar
naquela posição, por exemplo, na coluna b1, pode ter
no máximo até a bola 11, vc nunca verá uma bola 12 nesta posição
*/



/*
TABELA:   lotofacil_id_b9_a_b13##
Objetivo: Armazena um identificador pra a combinação de 5 bolas válidas, iniciando da esquerda
pra direita, a partir da coluna B9 considerando todas as bolas adjacentes a direita até chegar
 na coluna B13.
Por exemplo, se a tabela é lotofacil_id_b1_a_b5, então,
a tabela irá armazenar as combinações de bolas que é possível
nas posições b1, b2, b3, b4, b5, na coluna b1, por exemplo, é
possível armazenar as bolas 1 até 11
Os ids das combinações corresponde ao deslocamento de 25 bolas,
tais ids corresponde aos ids de grupos considerando a quantidade de
 de bolas pra aquela combinação.
*/
Drop table if exists lotofacil.lotofacil_id_b9_a_b13;
Create table lotofacil.lotofacil_id_b9_a_b13(
     b9_a_b13_id numeric not null,
     b9 numeric not null,
     b10 numeric not null,
     b11 numeric not null,
     b12 numeric not null,
     b13 numeric not null,
     constraint lotofacil_id_b9_a_b13_pk primary key(b9_a_b13_id)
);
Insert into lotofacil.lotofacil_id_b9_a_b13(
     b9_a_b13_id,
     b9,
     b10,
     b11,
     b12,
     b13
)
Select grp_id,
     bola1,
     bola2,
     bola3,
     bola4,
     bola5
from lotofacil.lotofacil_id_grupo_5_bolas
where bola1 >= 9 and bola1 <= 19
 order by bola1, bola2, bola3, bola4, bola5;
/*
Cada coluna tem a menor e a maior bola que pode estar
naquela posição, por exemplo, na coluna b1, pode ter
no máximo até a bola 11, vc nunca verá uma bola 12 nesta posição
*/



/*
TABELA:   lotofacil_id_b9_a_b14##
Objetivo: Armazena um identificador pra a combinação de 6 bolas válidas, iniciando da esquerda
pra direita, a partir da coluna B9 considerando todas as bolas adjacentes a direita até chegar
 na coluna B14.
Por exemplo, se a tabela é lotofacil_id_b1_a_b5, então,
a tabela irá armazenar as combinações de bolas que é possível
nas posições b1, b2, b3, b4, b5, na coluna b1, por exemplo, é
possível armazenar as bolas 1 até 11
Os ids das combinações corresponde ao deslocamento de 25 bolas,
tais ids corresponde aos ids de grupos considerando a quantidade de
 de bolas pra aquela combinação.
*/
Drop table if exists lotofacil.lotofacil_id_b9_a_b14;
Create table lotofacil.lotofacil_id_b9_a_b14(
     b9_a_b14_id numeric not null,
     b9 numeric not null,
     b10 numeric not null,
     b11 numeric not null,
     b12 numeric not null,
     b13 numeric not null,
     b14 numeric not null,
     constraint lotofacil_id_b9_a_b14_pk primary key(b9_a_b14_id)
);
Insert into lotofacil.lotofacil_id_b9_a_b14(
     b9_a_b14_id,
     b9,
     b10,
     b11,
     b12,
     b13,
     b14
)
Select grp_id,
     bola1,
     bola2,
     bola3,
     bola4,
     bola5,
     bola6
from lotofacil.lotofacil_id_grupo_6_bolas
where bola1 >= 9 and bola1 <= 19
 order by bola1, bola2, bola3, bola4, bola5, bola6;
/*
Cada coluna tem a menor e a maior bola que pode estar
naquela posição, por exemplo, na coluna b1, pode ter
no máximo até a bola 11, vc nunca verá uma bola 12 nesta posição
*/



/*
TABELA:   lotofacil_id_b9_a_b15##
Objetivo: Armazena um identificador pra a combinação de 7 bolas válidas, iniciando da esquerda
pra direita, a partir da coluna B9 considerando todas as bolas adjacentes a direita até chegar
 na coluna B15.
Por exemplo, se a tabela é lotofacil_id_b1_a_b5, então,
a tabela irá armazenar as combinações de bolas que é possível
nas posições b1, b2, b3, b4, b5, na coluna b1, por exemplo, é
possível armazenar as bolas 1 até 11
Os ids das combinações corresponde ao deslocamento de 25 bolas,
tais ids corresponde aos ids de grupos considerando a quantidade de
 de bolas pra aquela combinação.
*/
Drop table if exists lotofacil.lotofacil_id_b9_a_b15;
Create table lotofacil.lotofacil_id_b9_a_b15(
     b9_a_b15_id numeric not null,
     b9 numeric not null,
     b10 numeric not null,
     b11 numeric not null,
     b12 numeric not null,
     b13 numeric not null,
     b14 numeric not null,
     b15 numeric not null,
     constraint lotofacil_id_b9_a_b15_pk primary key(b9_a_b15_id)
);
Insert into lotofacil.lotofacil_id_b9_a_b15(
     b9_a_b15_id,
     b9,
     b10,
     b11,
     b12,
     b13,
     b14,
     b15
)
Select grp_id,
     bola1,
     bola2,
     bola3,
     bola4,
     bola5,
     bola6,
     bola7
from lotofacil.lotofacil_id_grupo_7_bolas
where bola1 >= 9 and bola1 <= 19
 order by bola1, bola2, bola3, bola4, bola5, bola6, bola7;
/*
Cada coluna tem a menor e a maior bola que pode estar
naquela posição, por exemplo, na coluna b1, pode ter
no máximo até a bola 11, vc nunca verá uma bola 12 nesta posição
*/



/*
TABELA:   lotofacil_id_b10_a_b10##
Objetivo: Armazena um identificador pra a combinação de 1 bolas válidas, iniciando da esquerda
pra direita, a partir da coluna B10 considerando todas as bolas adjacentes a direita até chegar
 na coluna B10.
Por exemplo, se a tabela é lotofacil_id_b1_a_b5, então,
a tabela irá armazenar as combinações de bolas que é possível
nas posições b1, b2, b3, b4, b5, na coluna b1, por exemplo, é
possível armazenar as bolas 1 até 11
Os ids das combinações corresponde ao deslocamento de 25 bolas,
tais ids corresponde aos ids de grupos considerando a quantidade de
 de bolas pra aquela combinação.
*/
Drop table if exists lotofacil.lotofacil_id_b10_a_b10;
Create table lotofacil.lotofacil_id_b10_a_b10(
     b10_a_b10_id numeric not null,
     b10 numeric not null,
     constraint lotofacil_id_b10_a_b10_pk primary key(b10_a_b10_id)
);
Insert into lotofacil.lotofacil_id_b10_a_b10(
     b10_a_b10_id,
     b10
)
Select grp_id,
     bola1
from lotofacil.lotofacil_id_grupo_1_bola
where bola1 >= 10 and bola1 <= 20
 order by bola1;
/*
Cada coluna tem a menor e a maior bola que pode estar
naquela posição, por exemplo, na coluna b1, pode ter
no máximo até a bola 11, vc nunca verá uma bola 12 nesta posição
*/



/*
TABELA:   lotofacil_id_b10_a_b11##
Objetivo: Armazena um identificador pra a combinação de 2 bolas válidas, iniciando da esquerda
pra direita, a partir da coluna B10 considerando todas as bolas adjacentes a direita até chegar
 na coluna B11.
Por exemplo, se a tabela é lotofacil_id_b1_a_b5, então,
a tabela irá armazenar as combinações de bolas que é possível
nas posições b1, b2, b3, b4, b5, na coluna b1, por exemplo, é
possível armazenar as bolas 1 até 11
Os ids das combinações corresponde ao deslocamento de 25 bolas,
tais ids corresponde aos ids de grupos considerando a quantidade de
 de bolas pra aquela combinação.
*/
Drop table if exists lotofacil.lotofacil_id_b10_a_b11;
Create table lotofacil.lotofacil_id_b10_a_b11(
     b10_a_b11_id numeric not null,
     b10 numeric not null,
     b11 numeric not null,
     constraint lotofacil_id_b10_a_b11_pk primary key(b10_a_b11_id)
);
Insert into lotofacil.lotofacil_id_b10_a_b11(
     b10_a_b11_id,
     b10,
     b11
)
Select grp_id,
     bola1,
     bola2
from lotofacil.lotofacil_id_grupo_2_bolas
where bola1 >= 10 and bola1 <= 20
 order by bola1, bola2;
/*
Cada coluna tem a menor e a maior bola que pode estar
naquela posição, por exemplo, na coluna b1, pode ter
no máximo até a bola 11, vc nunca verá uma bola 12 nesta posição
*/



/*
TABELA:   lotofacil_id_b10_a_b12##
Objetivo: Armazena um identificador pra a combinação de 3 bolas válidas, iniciando da esquerda
pra direita, a partir da coluna B10 considerando todas as bolas adjacentes a direita até chegar
 na coluna B12.
Por exemplo, se a tabela é lotofacil_id_b1_a_b5, então,
a tabela irá armazenar as combinações de bolas que é possível
nas posições b1, b2, b3, b4, b5, na coluna b1, por exemplo, é
possível armazenar as bolas 1 até 11
Os ids das combinações corresponde ao deslocamento de 25 bolas,
tais ids corresponde aos ids de grupos considerando a quantidade de
 de bolas pra aquela combinação.
*/
Drop table if exists lotofacil.lotofacil_id_b10_a_b12;
Create table lotofacil.lotofacil_id_b10_a_b12(
     b10_a_b12_id numeric not null,
     b10 numeric not null,
     b11 numeric not null,
     b12 numeric not null,
     constraint lotofacil_id_b10_a_b12_pk primary key(b10_a_b12_id)
);
Insert into lotofacil.lotofacil_id_b10_a_b12(
     b10_a_b12_id,
     b10,
     b11,
     b12
)
Select grp_id,
     bola1,
     bola2,
     bola3
from lotofacil.lotofacil_id_grupo_3_bolas
where bola1 >= 10 and bola1 <= 20
 order by bola1, bola2, bola3;
/*
Cada coluna tem a menor e a maior bola que pode estar
naquela posição, por exemplo, na coluna b1, pode ter
no máximo até a bola 11, vc nunca verá uma bola 12 nesta posição
*/



/*
TABELA:   lotofacil_id_b10_a_b13##
Objetivo: Armazena um identificador pra a combinação de 4 bolas válidas, iniciando da esquerda
pra direita, a partir da coluna B10 considerando todas as bolas adjacentes a direita até chegar
 na coluna B13.
Por exemplo, se a tabela é lotofacil_id_b1_a_b5, então,
a tabela irá armazenar as combinações de bolas que é possível
nas posições b1, b2, b3, b4, b5, na coluna b1, por exemplo, é
possível armazenar as bolas 1 até 11
Os ids das combinações corresponde ao deslocamento de 25 bolas,
tais ids corresponde aos ids de grupos considerando a quantidade de
 de bolas pra aquela combinação.
*/
Drop table if exists lotofacil.lotofacil_id_b10_a_b13;
Create table lotofacil.lotofacil_id_b10_a_b13(
     b10_a_b13_id numeric not null,
     b10 numeric not null,
     b11 numeric not null,
     b12 numeric not null,
     b13 numeric not null,
     constraint lotofacil_id_b10_a_b13_pk primary key(b10_a_b13_id)
);
Insert into lotofacil.lotofacil_id_b10_a_b13(
     b10_a_b13_id,
     b10,
     b11,
     b12,
     b13
)
Select grp_id,
     bola1,
     bola2,
     bola3,
     bola4
from lotofacil.lotofacil_id_grupo_4_bolas
where bola1 >= 10 and bola1 <= 20
 order by bola1, bola2, bola3, bola4;
/*
Cada coluna tem a menor e a maior bola que pode estar
naquela posição, por exemplo, na coluna b1, pode ter
no máximo até a bola 11, vc nunca verá uma bola 12 nesta posição
*/



/*
TABELA:   lotofacil_id_b10_a_b14##
Objetivo: Armazena um identificador pra a combinação de 5 bolas válidas, iniciando da esquerda
pra direita, a partir da coluna B10 considerando todas as bolas adjacentes a direita até chegar
 na coluna B14.
Por exemplo, se a tabela é lotofacil_id_b1_a_b5, então,
a tabela irá armazenar as combinações de bolas que é possível
nas posições b1, b2, b3, b4, b5, na coluna b1, por exemplo, é
possível armazenar as bolas 1 até 11
Os ids das combinações corresponde ao deslocamento de 25 bolas,
tais ids corresponde aos ids de grupos considerando a quantidade de
 de bolas pra aquela combinação.
*/
Drop table if exists lotofacil.lotofacil_id_b10_a_b14;
Create table lotofacil.lotofacil_id_b10_a_b14(
     b10_a_b14_id numeric not null,
     b10 numeric not null,
     b11 numeric not null,
     b12 numeric not null,
     b13 numeric not null,
     b14 numeric not null,
     constraint lotofacil_id_b10_a_b14_pk primary key(b10_a_b14_id)
);
Insert into lotofacil.lotofacil_id_b10_a_b14(
     b10_a_b14_id,
     b10,
     b11,
     b12,
     b13,
     b14
)
Select grp_id,
     bola1,
     bola2,
     bola3,
     bola4,
     bola5
from lotofacil.lotofacil_id_grupo_5_bolas
where bola1 >= 10 and bola1 <= 20
 order by bola1, bola2, bola3, bola4, bola5;
/*
Cada coluna tem a menor e a maior bola que pode estar
naquela posição, por exemplo, na coluna b1, pode ter
no máximo até a bola 11, vc nunca verá uma bola 12 nesta posição
*/



/*
TABELA:   lotofacil_id_b10_a_b15##
Objetivo: Armazena um identificador pra a combinação de 6 bolas válidas, iniciando da esquerda
pra direita, a partir da coluna B10 considerando todas as bolas adjacentes a direita até chegar
 na coluna B15.
Por exemplo, se a tabela é lotofacil_id_b1_a_b5, então,
a tabela irá armazenar as combinações de bolas que é possível
nas posições b1, b2, b3, b4, b5, na coluna b1, por exemplo, é
possível armazenar as bolas 1 até 11
Os ids das combinações corresponde ao deslocamento de 25 bolas,
tais ids corresponde aos ids de grupos considerando a quantidade de
 de bolas pra aquela combinação.
*/
Drop table if exists lotofacil.lotofacil_id_b10_a_b15;
Create table lotofacil.lotofacil_id_b10_a_b15(
     b10_a_b15_id numeric not null,
     b10 numeric not null,
     b11 numeric not null,
     b12 numeric not null,
     b13 numeric not null,
     b14 numeric not null,
     b15 numeric not null,
     constraint lotofacil_id_b10_a_b15_pk primary key(b10_a_b15_id)
);
Insert into lotofacil.lotofacil_id_b10_a_b15(
     b10_a_b15_id,
     b10,
     b11,
     b12,
     b13,
     b14,
     b15
)
Select grp_id,
     bola1,
     bola2,
     bola3,
     bola4,
     bola5,
     bola6
from lotofacil.lotofacil_id_grupo_6_bolas
where bola1 >= 10 and bola1 <= 20
 order by bola1, bola2, bola3, bola4, bola5, bola6;
/*
Cada coluna tem a menor e a maior bola que pode estar
naquela posição, por exemplo, na coluna b1, pode ter
no máximo até a bola 11, vc nunca verá uma bola 12 nesta posição
*/



/*
TABELA:   lotofacil_id_b11_a_b11##
Objetivo: Armazena um identificador pra a combinação de 1 bolas válidas, iniciando da esquerda
pra direita, a partir da coluna B11 considerando todas as bolas adjacentes a direita até chegar
 na coluna B11.
Por exemplo, se a tabela é lotofacil_id_b1_a_b5, então,
a tabela irá armazenar as combinações de bolas que é possível
nas posições b1, b2, b3, b4, b5, na coluna b1, por exemplo, é
possível armazenar as bolas 1 até 11
Os ids das combinações corresponde ao deslocamento de 25 bolas,
tais ids corresponde aos ids de grupos considerando a quantidade de
 de bolas pra aquela combinação.
*/
Drop table if exists lotofacil.lotofacil_id_b11_a_b11;
Create table lotofacil.lotofacil_id_b11_a_b11(
     b11_a_b11_id numeric not null,
     b11 numeric not null,
     constraint lotofacil_id_b11_a_b11_pk primary key(b11_a_b11_id)
);
Insert into lotofacil.lotofacil_id_b11_a_b11(
     b11_a_b11_id,
     b11
)
Select grp_id,
     bola1
from lotofacil.lotofacil_id_grupo_1_bola
where bola1 >= 11 and bola1 <= 21
 order by bola1;
/*
Cada coluna tem a menor e a maior bola que pode estar
naquela posição, por exemplo, na coluna b1, pode ter
no máximo até a bola 11, vc nunca verá uma bola 12 nesta posição
*/



/*
TABELA:   lotofacil_id_b11_a_b12##
Objetivo: Armazena um identificador pra a combinação de 2 bolas válidas, iniciando da esquerda
pra direita, a partir da coluna B11 considerando todas as bolas adjacentes a direita até chegar
 na coluna B12.
Por exemplo, se a tabela é lotofacil_id_b1_a_b5, então,
a tabela irá armazenar as combinações de bolas que é possível
nas posições b1, b2, b3, b4, b5, na coluna b1, por exemplo, é
possível armazenar as bolas 1 até 11
Os ids das combinações corresponde ao deslocamento de 25 bolas,
tais ids corresponde aos ids de grupos considerando a quantidade de
 de bolas pra aquela combinação.
*/
Drop table if exists lotofacil.lotofacil_id_b11_a_b12;
Create table lotofacil.lotofacil_id_b11_a_b12(
     b11_a_b12_id numeric not null,
     b11 numeric not null,
     b12 numeric not null,
     constraint lotofacil_id_b11_a_b12_pk primary key(b11_a_b12_id)
);
Insert into lotofacil.lotofacil_id_b11_a_b12(
     b11_a_b12_id,
     b11,
     b12
)
Select grp_id,
     bola1,
     bola2
from lotofacil.lotofacil_id_grupo_2_bolas
where bola1 >= 11 and bola1 <= 21
 order by bola1, bola2;
/*
Cada coluna tem a menor e a maior bola que pode estar
naquela posição, por exemplo, na coluna b1, pode ter
no máximo até a bola 11, vc nunca verá uma bola 12 nesta posição
*/



/*
TABELA:   lotofacil_id_b11_a_b13##
Objetivo: Armazena um identificador pra a combinação de 3 bolas válidas, iniciando da esquerda
pra direita, a partir da coluna B11 considerando todas as bolas adjacentes a direita até chegar
 na coluna B13.
Por exemplo, se a tabela é lotofacil_id_b1_a_b5, então,
a tabela irá armazenar as combinações de bolas que é possível
nas posições b1, b2, b3, b4, b5, na coluna b1, por exemplo, é
possível armazenar as bolas 1 até 11
Os ids das combinações corresponde ao deslocamento de 25 bolas,
tais ids corresponde aos ids de grupos considerando a quantidade de
 de bolas pra aquela combinação.
*/
Drop table if exists lotofacil.lotofacil_id_b11_a_b13;
Create table lotofacil.lotofacil_id_b11_a_b13(
     b11_a_b13_id numeric not null,
     b11 numeric not null,
     b12 numeric not null,
     b13 numeric not null,
     constraint lotofacil_id_b11_a_b13_pk primary key(b11_a_b13_id)
);
Insert into lotofacil.lotofacil_id_b11_a_b13(
     b11_a_b13_id,
     b11,
     b12,
     b13
)
Select grp_id,
     bola1,
     bola2,
     bola3
from lotofacil.lotofacil_id_grupo_3_bolas
where bola1 >= 11 and bola1 <= 21
 order by bola1, bola2, bola3;
/*
Cada coluna tem a menor e a maior bola que pode estar
naquela posição, por exemplo, na coluna b1, pode ter
no máximo até a bola 11, vc nunca verá uma bola 12 nesta posição
*/



/*
TABELA:   lotofacil_id_b11_a_b14##
Objetivo: Armazena um identificador pra a combinação de 4 bolas válidas, iniciando da esquerda
pra direita, a partir da coluna B11 considerando todas as bolas adjacentes a direita até chegar
 na coluna B14.
Por exemplo, se a tabela é lotofacil_id_b1_a_b5, então,
a tabela irá armazenar as combinações de bolas que é possível
nas posições b1, b2, b3, b4, b5, na coluna b1, por exemplo, é
possível armazenar as bolas 1 até 11
Os ids das combinações corresponde ao deslocamento de 25 bolas,
tais ids corresponde aos ids de grupos considerando a quantidade de
 de bolas pra aquela combinação.
*/
Drop table if exists lotofacil.lotofacil_id_b11_a_b14;
Create table lotofacil.lotofacil_id_b11_a_b14(
     b11_a_b14_id numeric not null,
     b11 numeric not null,
     b12 numeric not null,
     b13 numeric not null,
     b14 numeric not null,
     constraint lotofacil_id_b11_a_b14_pk primary key(b11_a_b14_id)
);
Insert into lotofacil.lotofacil_id_b11_a_b14(
     b11_a_b14_id,
     b11,
     b12,
     b13,
     b14
)
Select grp_id,
     bola1,
     bola2,
     bola3,
     bola4
from lotofacil.lotofacil_id_grupo_4_bolas
where bola1 >= 11 and bola1 <= 21
 order by bola1, bola2, bola3, bola4;
/*
Cada coluna tem a menor e a maior bola que pode estar
naquela posição, por exemplo, na coluna b1, pode ter
no máximo até a bola 11, vc nunca verá uma bola 12 nesta posição
*/



/*
TABELA:   lotofacil_id_b11_a_b15##
Objetivo: Armazena um identificador pra a combinação de 5 bolas válidas, iniciando da esquerda
pra direita, a partir da coluna B11 considerando todas as bolas adjacentes a direita até chegar
 na coluna B15.
Por exemplo, se a tabela é lotofacil_id_b1_a_b5, então,
a tabela irá armazenar as combinações de bolas que é possível
nas posições b1, b2, b3, b4, b5, na coluna b1, por exemplo, é
possível armazenar as bolas 1 até 11
Os ids das combinações corresponde ao deslocamento de 25 bolas,
tais ids corresponde aos ids de grupos considerando a quantidade de
 de bolas pra aquela combinação.
*/
Drop table if exists lotofacil.lotofacil_id_b11_a_b15;
Create table lotofacil.lotofacil_id_b11_a_b15(
     b11_a_b15_id numeric not null,
     b11 numeric not null,
     b12 numeric not null,
     b13 numeric not null,
     b14 numeric not null,
     b15 numeric not null,
     constraint lotofacil_id_b11_a_b15_pk primary key(b11_a_b15_id)
);
Insert into lotofacil.lotofacil_id_b11_a_b15(
     b11_a_b15_id,
     b11,
     b12,
     b13,
     b14,
     b15
)
Select grp_id,
     bola1,
     bola2,
     bola3,
     bola4,
     bola5
from lotofacil.lotofacil_id_grupo_5_bolas
where bola1 >= 11 and bola1 <= 21
 order by bola1, bola2, bola3, bola4, bola5;
/*
Cada coluna tem a menor e a maior bola que pode estar
naquela posição, por exemplo, na coluna b1, pode ter
no máximo até a bola 11, vc nunca verá uma bola 12 nesta posição
*/



/*
TABELA:   lotofacil_id_b12_a_b12##
Objetivo: Armazena um identificador pra a combinação de 1 bolas válidas, iniciando da esquerda
pra direita, a partir da coluna B12 considerando todas as bolas adjacentes a direita até chegar
 na coluna B12.
Por exemplo, se a tabela é lotofacil_id_b1_a_b5, então,
a tabela irá armazenar as combinações de bolas que é possível
nas posições b1, b2, b3, b4, b5, na coluna b1, por exemplo, é
possível armazenar as bolas 1 até 11
Os ids das combinações corresponde ao deslocamento de 25 bolas,
tais ids corresponde aos ids de grupos considerando a quantidade de
 de bolas pra aquela combinação.
*/
Drop table if exists lotofacil.lotofacil_id_b12_a_b12;
Create table lotofacil.lotofacil_id_b12_a_b12(
     b12_a_b12_id numeric not null,
     b12 numeric not null,
     constraint lotofacil_id_b12_a_b12_pk primary key(b12_a_b12_id)
);
Insert into lotofacil.lotofacil_id_b12_a_b12(
     b12_a_b12_id,
     b12
)
Select grp_id,
     bola1
from lotofacil.lotofacil_id_grupo_1_bola
where bola1 >= 12 and bola1 <= 22
 order by bola1;
/*
Cada coluna tem a menor e a maior bola que pode estar
naquela posição, por exemplo, na coluna b1, pode ter
no máximo até a bola 11, vc nunca verá uma bola 12 nesta posição
*/



/*
TABELA:   lotofacil_id_b12_a_b13##
Objetivo: Armazena um identificador pra a combinação de 2 bolas válidas, iniciando da esquerda
pra direita, a partir da coluna B12 considerando todas as bolas adjacentes a direita até chegar
 na coluna B13.
Por exemplo, se a tabela é lotofacil_id_b1_a_b5, então,
a tabela irá armazenar as combinações de bolas que é possível
nas posições b1, b2, b3, b4, b5, na coluna b1, por exemplo, é
possível armazenar as bolas 1 até 11
Os ids das combinações corresponde ao deslocamento de 25 bolas,
tais ids corresponde aos ids de grupos considerando a quantidade de
 de bolas pra aquela combinação.
*/
Drop table if exists lotofacil.lotofacil_id_b12_a_b13;
Create table lotofacil.lotofacil_id_b12_a_b13(
     b12_a_b13_id numeric not null,
     b12 numeric not null,
     b13 numeric not null,
     constraint lotofacil_id_b12_a_b13_pk primary key(b12_a_b13_id)
);
Insert into lotofacil.lotofacil_id_b12_a_b13(
     b12_a_b13_id,
     b12,
     b13
)
Select grp_id,
     bola1,
     bola2
from lotofacil.lotofacil_id_grupo_2_bolas
where bola1 >= 12 and bola1 <= 22
 order by bola1, bola2;
/*
Cada coluna tem a menor e a maior bola que pode estar
naquela posição, por exemplo, na coluna b1, pode ter
no máximo até a bola 11, vc nunca verá uma bola 12 nesta posição
*/



/*
TABELA:   lotofacil_id_b12_a_b14##
Objetivo: Armazena um identificador pra a combinação de 3 bolas válidas, iniciando da esquerda
pra direita, a partir da coluna B12 considerando todas as bolas adjacentes a direita até chegar
 na coluna B14.
Por exemplo, se a tabela é lotofacil_id_b1_a_b5, então,
a tabela irá armazenar as combinações de bolas que é possível
nas posições b1, b2, b3, b4, b5, na coluna b1, por exemplo, é
possível armazenar as bolas 1 até 11
Os ids das combinações corresponde ao deslocamento de 25 bolas,
tais ids corresponde aos ids de grupos considerando a quantidade de
 de bolas pra aquela combinação.
*/
Drop table if exists lotofacil.lotofacil_id_b12_a_b14;
Create table lotofacil.lotofacil_id_b12_a_b14(
     b12_a_b14_id numeric not null,
     b12 numeric not null,
     b13 numeric not null,
     b14 numeric not null,
     constraint lotofacil_id_b12_a_b14_pk primary key(b12_a_b14_id)
);
Insert into lotofacil.lotofacil_id_b12_a_b14(
     b12_a_b14_id,
     b12,
     b13,
     b14
)
Select grp_id,
     bola1,
     bola2,
     bola3
from lotofacil.lotofacil_id_grupo_3_bolas
where bola1 >= 12 and bola1 <= 22
 order by bola1, bola2, bola3;
/*
Cada coluna tem a menor e a maior bola que pode estar
naquela posição, por exemplo, na coluna b1, pode ter
no máximo até a bola 11, vc nunca verá uma bola 12 nesta posição
*/



/*
TABELA:   lotofacil_id_b12_a_b15##
Objetivo: Armazena um identificador pra a combinação de 4 bolas válidas, iniciando da esquerda
pra direita, a partir da coluna B12 considerando todas as bolas adjacentes a direita até chegar
 na coluna B15.
Por exemplo, se a tabela é lotofacil_id_b1_a_b5, então,
a tabela irá armazenar as combinações de bolas que é possível
nas posições b1, b2, b3, b4, b5, na coluna b1, por exemplo, é
possível armazenar as bolas 1 até 11
Os ids das combinações corresponde ao deslocamento de 25 bolas,
tais ids corresponde aos ids de grupos considerando a quantidade de
 de bolas pra aquela combinação.
*/
Drop table if exists lotofacil.lotofacil_id_b12_a_b15;
Create table lotofacil.lotofacil_id_b12_a_b15(
     b12_a_b15_id numeric not null,
     b12 numeric not null,
     b13 numeric not null,
     b14 numeric not null,
     b15 numeric not null,
     constraint lotofacil_id_b12_a_b15_pk primary key(b12_a_b15_id)
);
Insert into lotofacil.lotofacil_id_b12_a_b15(
     b12_a_b15_id,
     b12,
     b13,
     b14,
     b15
)
Select grp_id,
     bola1,
     bola2,
     bola3,
     bola4
from lotofacil.lotofacil_id_grupo_4_bolas
where bola1 >= 12 and bola1 <= 22
 order by bola1, bola2, bola3, bola4;
/*
Cada coluna tem a menor e a maior bola que pode estar
naquela posição, por exemplo, na coluna b1, pode ter
no máximo até a bola 11, vc nunca verá uma bola 12 nesta posição
*/



/*
TABELA:   lotofacil_id_b13_a_b13##
Objetivo: Armazena um identificador pra a combinação de 1 bolas válidas, iniciando da esquerda
pra direita, a partir da coluna B13 considerando todas as bolas adjacentes a direita até chegar
 na coluna B13.
Por exemplo, se a tabela é lotofacil_id_b1_a_b5, então,
a tabela irá armazenar as combinações de bolas que é possível
nas posições b1, b2, b3, b4, b5, na coluna b1, por exemplo, é
possível armazenar as bolas 1 até 11
Os ids das combinações corresponde ao deslocamento de 25 bolas,
tais ids corresponde aos ids de grupos considerando a quantidade de
 de bolas pra aquela combinação.
*/
Drop table if exists lotofacil.lotofacil_id_b13_a_b13;
Create table lotofacil.lotofacil_id_b13_a_b13(
     b13_a_b13_id numeric not null,
     b13 numeric not null,
     constraint lotofacil_id_b13_a_b13_pk primary key(b13_a_b13_id)
);
Insert into lotofacil.lotofacil_id_b13_a_b13(
     b13_a_b13_id,
     b13
)
Select grp_id,
     bola1
from lotofacil.lotofacil_id_grupo_1_bola
where bola1 >= 13 and bola1 <= 23
 order by bola1;
/*
Cada coluna tem a menor e a maior bola que pode estar
naquela posição, por exemplo, na coluna b1, pode ter
no máximo até a bola 11, vc nunca verá uma bola 12 nesta posição
*/



/*
TABELA:   lotofacil_id_b13_a_b14##
Objetivo: Armazena um identificador pra a combinação de 2 bolas válidas, iniciando da esquerda
pra direita, a partir da coluna B13 considerando todas as bolas adjacentes a direita até chegar
 na coluna B14.
Por exemplo, se a tabela é lotofacil_id_b1_a_b5, então,
a tabela irá armazenar as combinações de bolas que é possível
nas posições b1, b2, b3, b4, b5, na coluna b1, por exemplo, é
possível armazenar as bolas 1 até 11
Os ids das combinações corresponde ao deslocamento de 25 bolas,
tais ids corresponde aos ids de grupos considerando a quantidade de
 de bolas pra aquela combinação.
*/
Drop table if exists lotofacil.lotofacil_id_b13_a_b14;
Create table lotofacil.lotofacil_id_b13_a_b14(
     b13_a_b14_id numeric not null,
     b13 numeric not null,
     b14 numeric not null,
     constraint lotofacil_id_b13_a_b14_pk primary key(b13_a_b14_id)
);
Insert into lotofacil.lotofacil_id_b13_a_b14(
     b13_a_b14_id,
     b13,
     b14
)
Select grp_id,
     bola1,
     bola2
from lotofacil.lotofacil_id_grupo_2_bolas
where bola1 >= 13 and bola1 <= 23
 order by bola1, bola2;
/*
Cada coluna tem a menor e a maior bola que pode estar
naquela posição, por exemplo, na coluna b1, pode ter
no máximo até a bola 11, vc nunca verá uma bola 12 nesta posição
*/



/*
TABELA:   lotofacil_id_b13_a_b15##
Objetivo: Armazena um identificador pra a combinação de 3 bolas válidas, iniciando da esquerda
pra direita, a partir da coluna B13 considerando todas as bolas adjacentes a direita até chegar
 na coluna B15.
Por exemplo, se a tabela é lotofacil_id_b1_a_b5, então,
a tabela irá armazenar as combinações de bolas que é possível
nas posições b1, b2, b3, b4, b5, na coluna b1, por exemplo, é
possível armazenar as bolas 1 até 11
Os ids das combinações corresponde ao deslocamento de 25 bolas,
tais ids corresponde aos ids de grupos considerando a quantidade de
 de bolas pra aquela combinação.
*/
Drop table if exists lotofacil.lotofacil_id_b13_a_b15;
Create table lotofacil.lotofacil_id_b13_a_b15(
     b13_a_b15_id numeric not null,
     b13 numeric not null,
     b14 numeric not null,
     b15 numeric not null,
     constraint lotofacil_id_b13_a_b15_pk primary key(b13_a_b15_id)
);
Insert into lotofacil.lotofacil_id_b13_a_b15(
     b13_a_b15_id,
     b13,
     b14,
     b15
)
Select grp_id,
     bola1,
     bola2,
     bola3
from lotofacil.lotofacil_id_grupo_3_bolas
where bola1 >= 13 and bola1 <= 23
 order by bola1, bola2, bola3;
/*
Cada coluna tem a menor e a maior bola que pode estar
naquela posição, por exemplo, na coluna b1, pode ter
no máximo até a bola 11, vc nunca verá uma bola 12 nesta posição
*/



/*
TABELA:   lotofacil_id_b14_a_b14##
Objetivo: Armazena um identificador pra a combinação de 1 bolas válidas, iniciando da esquerda
pra direita, a partir da coluna B14 considerando todas as bolas adjacentes a direita até chegar
 na coluna B14.
Por exemplo, se a tabela é lotofacil_id_b1_a_b5, então,
a tabela irá armazenar as combinações de bolas que é possível
nas posições b1, b2, b3, b4, b5, na coluna b1, por exemplo, é
possível armazenar as bolas 1 até 11
Os ids das combinações corresponde ao deslocamento de 25 bolas,
tais ids corresponde aos ids de grupos considerando a quantidade de
 de bolas pra aquela combinação.
*/
Drop table if exists lotofacil.lotofacil_id_b14_a_b14;
Create table lotofacil.lotofacil_id_b14_a_b14(
     b14_a_b14_id numeric not null,
     b14 numeric not null,
     constraint lotofacil_id_b14_a_b14_pk primary key(b14_a_b14_id)
);
Insert into lotofacil.lotofacil_id_b14_a_b14(
     b14_a_b14_id,
     b14
)
Select grp_id,
     bola1
from lotofacil.lotofacil_id_grupo_1_bola
where bola1 >= 14 and bola1 <= 24
 order by bola1;
/*
Cada coluna tem a menor e a maior bola que pode estar
naquela posição, por exemplo, na coluna b1, pode ter
no máximo até a bola 11, vc nunca verá uma bola 12 nesta posição
*/



/*
TABELA:   lotofacil_id_b14_a_b15##
Objetivo: Armazena um identificador pra a combinação de 2 bolas válidas, iniciando da esquerda
pra direita, a partir da coluna B14 considerando todas as bolas adjacentes a direita até chegar
 na coluna B15.
Por exemplo, se a tabela é lotofacil_id_b1_a_b5, então,
a tabela irá armazenar as combinações de bolas que é possível
nas posições b1, b2, b3, b4, b5, na coluna b1, por exemplo, é
possível armazenar as bolas 1 até 11
Os ids das combinações corresponde ao deslocamento de 25 bolas,
tais ids corresponde aos ids de grupos considerando a quantidade de
 de bolas pra aquela combinação.
*/
Drop table if exists lotofacil.lotofacil_id_b14_a_b15;
Create table lotofacil.lotofacil_id_b14_a_b15(
     b14_a_b15_id numeric not null,
     b14 numeric not null,
     b15 numeric not null,
     constraint lotofacil_id_b14_a_b15_pk primary key(b14_a_b15_id)
);
Insert into lotofacil.lotofacil_id_b14_a_b15(
     b14_a_b15_id,
     b14,
     b15
)
Select grp_id,
     bola1,
     bola2
from lotofacil.lotofacil_id_grupo_2_bolas
where bola1 >= 14 and bola1 <= 24
 order by bola1, bola2;
/*
Cada coluna tem a menor e a maior bola que pode estar
naquela posição, por exemplo, na coluna b1, pode ter
no máximo até a bola 11, vc nunca verá uma bola 12 nesta posição
*/



/*
TABELA:   lotofacil_id_b15_a_b15##
Objetivo: Armazena um identificador pra a combinação de 1 bolas válidas, iniciando da esquerda
pra direita, a partir da coluna B15 considerando todas as bolas adjacentes a direita até chegar
 na coluna B15.
Por exemplo, se a tabela é lotofacil_id_b1_a_b5, então,
a tabela irá armazenar as combinações de bolas que é possível
nas posições b1, b2, b3, b4, b5, na coluna b1, por exemplo, é
possível armazenar as bolas 1 até 11
Os ids das combinações corresponde ao deslocamento de 25 bolas,
tais ids corresponde aos ids de grupos considerando a quantidade de
 de bolas pra aquela combinação.
*/
Drop table if exists lotofacil.lotofacil_id_b15_a_b15;
Create table lotofacil.lotofacil_id_b15_a_b15(
     b15_a_b15_id numeric not null,
     b15 numeric not null,
     constraint lotofacil_id_b15_a_b15_pk primary key(b15_a_b15_id)
);
Insert into lotofacil.lotofacil_id_b15_a_b15(
     b15_a_b15_id,
     b15
)
Select grp_id,
     bola1
from lotofacil.lotofacil_id_grupo_1_bola
where bola1 >= 15 and bola1 <= 25
 order by bola1;
/*
Cada coluna tem a menor e a maior bola que pode estar
naquela posição, por exemplo, na coluna b1, pode ter
no máximo até a bola 11, vc nunca verá uma bola 12 nesta posição
*/






/**
  Fim do script automatizado.
 */






DROP TABLE IF EXISTS lotofacil.lotofacil_coluna_b;
CREATE TABLE lotofacil.lotofacil_coluna_b (
  ltf_id       NUMERIC NOT NULL,
  ltf_qt       NUMERIC NOT NULL CHECK (ltf_qt IN (15, 16, 17, 18)),

  b1_a_b1_id   NUMERIC NOT NULL,
  b1_a_b2_id   NUMERIC NOT NULL,
  b1_a_b3_id   NUMERIC NOT NULL,
  b1_a_b4_id   NUMERIC NOT NULL,
  b1_a_b5_id   NUMERIC NOT NULL,
  b1_a_b6_id   NUMERIC NOT NULL,
  b1_a_b7_id   NUMERIC NOT NULL,
  b1_a_b8_id   NUMERIC NOT NULL,
  b1_a_b9_id   NUMERIC NOT NULL,
  b1_a_b10_id  NUMERIC NOT NULL,
  b1_a_b11_id  NUMERIC NOT NULL,
  b1_a_b12_id  NUMERIC NOT NULL,
  b1_a_b13_id  NUMERIC NOT NULL,
  b1_a_b14_id  NUMERIC NOT NULL,
  b1_a_b15_id  NUMERIC NOT NULL,

  b2_a_b2_id   NUMERIC NOT NULL,
  b2_a_b3_id   NUMERIC NOT NULL,
  b2_a_b4_id   NUMERIC NOT NULL,
  b2_a_b5_id   NUMERIC NOT NULL,
  b2_a_b6_id   NUMERIC NOT NULL,
  b2_a_b7_id   NUMERIC NOT NULL,
  b2_a_b8_id   NUMERIC NOT NULL,
  b2_a_b9_id   NUMERIC NOT NULL,
  b2_a_b10_id  NUMERIC NOT NULL,
  b2_a_b11_id  NUMERIC NOT NULL,
  b2_a_b12_id  NUMERIC NOT NULL,
  b2_a_b13_id  NUMERIC NOT NULL,
  b2_a_b14_id  NUMERIC NOT NULL,
  b2_a_b15_id  NUMERIC NOT NULL,

  b3_a_b3_id   NUMERIC NOT NULL,
  b3_a_b4_id   NUMERIC NOT NULL,
  b3_a_b5_id   NUMERIC NOT NULL,
  b3_a_b6_id   NUMERIC NOT NULL,
  b3_a_b7_id   NUMERIC NOT NULL,
  b3_a_b8_id   NUMERIC NOT NULL,
  b3_a_b9_id   NUMERIC NOT NULL,
  b3_a_b10_id  NUMERIC NOT NULL,
  b3_a_b11_id  NUMERIC NOT NULL,
  b3_a_b12_id  NUMERIC NOT NULL,
  b3_a_b13_id  NUMERIC NOT NULL,
  b3_a_b14_id  NUMERIC NOT NULL,
  b3_a_b15_id  NUMERIC NOT NULL,

  b4_a_b4_id   NUMERIC NOT NULL,
  b4_a_b5_id   NUMERIC NOT NULL,
  b4_a_b6_id   NUMERIC NOT NULL,
  b4_a_b7_id   NUMERIC NOT NULL,
  b4_a_b8_id   NUMERIC NOT NULL,
  b4_a_b9_id   NUMERIC NOT NULL,
  b4_a_b10_id  NUMERIC NOT NULL,
  b4_a_b11_id  NUMERIC NOT NULL,
  b4_a_b12_id  NUMERIC NOT NULL,
  b4_a_b13_id  NUMERIC NOT NULL,
  b4_a_b14_id  NUMERIC NOT NULL,
  b4_a_b15_id  NUMERIC NOT NULL,

  b5_a_b5_id   NUMERIC NOT NULL,
  b5_a_b6_id   NUMERIC NOT NULL,
  b5_a_b7_id   NUMERIC NOT NULL,
  b5_a_b8_id   NUMERIC NOT NULL,
  b5_a_b9_id   NUMERIC NOT NULL,
  b5_a_b10_id  NUMERIC NOT NULL,
  b5_a_b11_id  NUMERIC NOT NULL,
  b5_a_b12_id  NUMERIC NOT NULL,
  b5_a_b13_id  NUMERIC NOT NULL,
  b5_a_b14_id  NUMERIC NOT NULL,
  b5_a_b15_id  NUMERIC NOT NULL,

  b6_a_b6_id   NUMERIC NOT NULL,
  b6_a_b7_id   NUMERIC NOT NULL,
  b6_a_b8_id   NUMERIC NOT NULL,
  b6_a_b9_id   NUMERIC NOT NULL,
  b6_a_b10_id  NUMERIC NOT NULL,
  b6_a_b11_id  NUMERIC NOT NULL,
  b6_a_b12_id  NUMERIC NOT NULL,
  b6_a_b13_id  NUMERIC NOT NULL,
  b6_a_b14_id  NUMERIC NOT NULL,
  b6_a_b15_id  NUMERIC NOT NULL,

  b7_a_b7_id   NUMERIC NOT NULL,
  b7_a_b8_id   NUMERIC NOT NULL,
  b7_a_b9_id   NUMERIC NOT NULL,
  b7_a_b10_id  NUMERIC NOT NULL,
  b7_a_b11_id  NUMERIC NOT NULL,
  b7_a_b12_id  NUMERIC NOT NULL,
  b7_a_b13_id  NUMERIC NOT NULL,
  b7_a_b14_id  NUMERIC NOT NULL,
  b7_a_b15_id  NUMERIC NOT NULL,

  b8_a_b8_id   NUMERIC NOT NULL,
  b8_a_b9_id   NUMERIC NOT NULL,
  b8_a_b10_id  NUMERIC NOT NULL,
  b8_a_b11_id  NUMERIC NOT NULL,
  b8_a_b12_id  NUMERIC NOT NULL,
  b8_a_b13_id  NUMERIC NOT NULL,
  b8_a_b14_id  NUMERIC NOT NULL,
  b8_a_b15_id  NUMERIC NOT NULL,

  b9_a_b9_id   NUMERIC NOT NULL,
  b9_a_b10_id  NUMERIC NOT NULL,
  b9_a_b11_id  NUMERIC NOT NULL,
  b9_a_b12_id  NUMERIC NOT NULL,
  b9_a_b13_id  NUMERIC NOT NULL,
  b9_a_b14_id  NUMERIC NOT NULL,
  b9_a_b15_id  NUMERIC NOT NULL,

  b10_a_b10_id NUMERIC NOT NULL,
  b10_a_b11_id NUMERIC NOT NULL,
  b10_a_b12_id NUMERIC NOT NULL,
  b10_a_b13_id NUMERIC NOT NULL,
  b10_a_b14_id NUMERIC NOT NULL,
  b10_a_b15_id NUMERIC NOT NULL,

  b11_a_b11_id NUMERIC NOT NULL,
  b11_a_b12_id NUMERIC NOT NULL,
  b11_a_b13_id NUMERIC NOT NULL,
  b11_a_b14_id NUMERIC NOT NULL,
  b11_a_b15_id NUMERIC NOT NULL,

  b12_a_b12_id NUMERIC NOT NULL,
  b12_a_b13_id NUMERIC NOT NULL,
  b12_a_b14_id NUMERIC NOT NULL,
  b12_a_b15_id NUMERIC NOT NULL,

  b13_a_b13_id NUMERIC NOT NULL,
  b13_a_b14_id NUMERIC NOT NULL,
  b13_a_b15_id NUMERIC NOT NULL,

  b14_a_b14_id NUMERIC NOT NULL,
  b14_a_b15_id NUMERIC NOT NULL,

  b15_a_b15_id NUMERIC NOT NULL

);

DROP INDEX IF EXISTS lotofacil.lotofacil_coluna_b_idx_1;
CREATE INDEX lotofacil_coluna_b_idx_b1_a_b1_id
  ON lotofacil.lotofacil_coluna_b (b1_a_b1_id);
CREATE INDEX lotofacil_coluna_b_idx_b1_a_b2_id
  ON lotofacil.lotofacil_coluna_b (b1_a_b2_id);
CREATE INDEX lotofacil_coluna_b_idx_b1_a_b3_id
  ON lotofacil.lotofacil_coluna_b (b1_a_b3_id);
CREATE INDEX lotofacil_coluna_b_idx_b1_a_b4_id
  ON lotofacil.lotofacil_coluna_b (b1_a_b4_id);
CREATE INDEX lotofacil_coluna_b_idx_b1_a_b5_id
  ON lotofacil.lotofacil_coluna_b (b1_a_b5_id);
CREATE INDEX lotofacil_coluna_b_idx_b1_a_b6_id
  ON lotofacil.lotofacil_coluna_b (b1_a_b6_id);
CREATE INDEX lotofacil_coluna_b_idx_b1_a_b7_id
  ON lotofacil.lotofacil_coluna_b (b1_a_b7_id);
CREATE INDEX lotofacil_coluna_b_idx_b1_a_b8_id
  ON lotofacil.lotofacil_coluna_b (b1_a_b8_id);
CREATE INDEX lotofacil_coluna_b_idx_b1_a_b9_id
  ON lotofacil.lotofacil_coluna_b (b1_a_b9_id);
CREATE INDEX lotofacil_coluna_b_idx_b1_a_b10_id
  ON lotofacil.lotofacil_coluna_b (b1_a_b10_id);
CREATE INDEX lotofacil_coluna_b_idx_b1_a_b11_id
  ON lotofacil.lotofacil_coluna_b (b1_a_b11_id);
CREATE INDEX lotofacil_coluna_b_idx_b1_a_b12_id
  ON lotofacil.lotofacil_coluna_b (b1_a_b12_id);
CREATE INDEX lotofacil_coluna_b_idx_b1_a_b13_id
  ON lotofacil.lotofacil_coluna_b (b1_a_b13_id);
CREATE INDEX lotofacil_coluna_b_idx_b1_a_b14_id
  ON lotofacil.lotofacil_coluna_b (b1_a_b14_id);
CREATE INDEX lotofacil_coluna_b_idx_b1_a_b15_id
  ON lotofacil.lotofacil_coluna_b (b1_a_b15_id);

CREATE INDEX lotofacil_coluna_b_idx_b2_a_b2_id
  ON lotofacil.lotofacil_coluna_b (b2_a_b2_id);
CREATE INDEX lotofacil_coluna_b_idx_b2_a_b3_id
  ON lotofacil.lotofacil_coluna_b (b2_a_b3_id);
CREATE INDEX lotofacil_coluna_b_idx_b2_a_b4_id
  ON lotofacil.lotofacil_coluna_b (b2_a_b4_id);
CREATE INDEX lotofacil_coluna_b_idx_b2_a_b5_id
  ON lotofacil.lotofacil_coluna_b (b2_a_b5_id);
CREATE INDEX lotofacil_coluna_b_idx_b2_a_b6_id
  ON lotofacil.lotofacil_coluna_b (b2_a_b6_id);
CREATE INDEX lotofacil_coluna_b_idx_b2_a_b7_id
  ON lotofacil.lotofacil_coluna_b (b2_a_b7_id);
CREATE INDEX lotofacil_coluna_b_idx_b2_a_b8_id
  ON lotofacil.lotofacil_coluna_b (b2_a_b8_id);
CREATE INDEX lotofacil_coluna_b_idx_b2_a_b9_id
  ON lotofacil.lotofacil_coluna_b (b2_a_b9_id);
CREATE INDEX lotofacil_coluna_b_idx_b2_a_b10_id
  ON lotofacil.lotofacil_coluna_b (b2_a_b10_id);
CREATE INDEX lotofacil_coluna_b_idx_b2_a_b11_id
  ON lotofacil.lotofacil_coluna_b (b2_a_b11_id);
CREATE INDEX lotofacil_coluna_b_idx_b2_a_b12_id
  ON lotofacil.lotofacil_coluna_b (b2_a_b12_id);
CREATE INDEX lotofacil_coluna_b_idx_b2_a_b13_id
  ON lotofacil.lotofacil_coluna_b (b2_a_b13_id);
CREATE INDEX lotofacil_coluna_b_idx_b2_a_b14_id
  ON lotofacil.lotofacil_coluna_b (b2_a_b14_id);
CREATE INDEX lotofacil_coluna_b_idx_b2_a_b15_id
  ON lotofacil.lotofacil_coluna_b (b2_a_b15_id);

CREATE INDEX lotofacil_coluna_b_idx_b3_a_b3_id
  ON lotofacil.lotofacil_coluna_b (b3_a_b3_id);
CREATE INDEX lotofacil_coluna_b_idx_b3_a_b4_id
  ON lotofacil.lotofacil_coluna_b (b3_a_b4_id);
CREATE INDEX lotofacil_coluna_b_idx_b3_a_b5_id
  ON lotofacil.lotofacil_coluna_b (b3_a_b5_id);
CREATE INDEX lotofacil_coluna_b_idx_b3_a_b6_id
  ON lotofacil.lotofacil_coluna_b (b3_a_b6_id);
CREATE INDEX lotofacil_coluna_b_idx_b3_a_b7_id
  ON lotofacil.lotofacil_coluna_b (b3_a_b7_id);
CREATE INDEX lotofacil_coluna_b_idx_b3_a_b8_id
  ON lotofacil.lotofacil_coluna_b (b3_a_b8_id);
CREATE INDEX lotofacil_coluna_b_idx_b3_a_b9_id
  ON lotofacil.lotofacil_coluna_b (b3_a_b9_id);
CREATE INDEX lotofacil_coluna_b_idx_b3_a_b10_id
  ON lotofacil.lotofacil_coluna_b (b3_a_b10_id);
CREATE INDEX lotofacil_coluna_b_idx_b3_a_b11_id
  ON lotofacil.lotofacil_coluna_b (b3_a_b11_id);
CREATE INDEX lotofacil_coluna_b_idx_b3_a_b12_id
  ON lotofacil.lotofacil_coluna_b (b3_a_b12_id);
CREATE INDEX lotofacil_coluna_b_idx_b3_a_b13_id
  ON lotofacil.lotofacil_coluna_b (b3_a_b13_id);
CREATE INDEX lotofacil_coluna_b_idx_b3_a_b14_id
  ON lotofacil.lotofacil_coluna_b (b3_a_b14_id);
CREATE INDEX lotofacil_coluna_b_idx_b3_a_b15_id
  ON lotofacil.lotofacil_coluna_b (b3_a_b15_id);

CREATE INDEX lotofacil_coluna_b_idx_b4_a_b4_id
  ON lotofacil.lotofacil_coluna_b (b4_a_b4_id);
CREATE INDEX lotofacil_coluna_b_idx_b4_a_b5_id
  ON lotofacil.lotofacil_coluna_b (b4_a_b5_id);
CREATE INDEX lotofacil_coluna_b_idx_b4_a_b6_id
  ON lotofacil.lotofacil_coluna_b (b4_a_b6_id);
CREATE INDEX lotofacil_coluna_b_idx_b4_a_b7_id
  ON lotofacil.lotofacil_coluna_b (b4_a_b7_id);
CREATE INDEX lotofacil_coluna_b_idx_b4_a_b8_id
  ON lotofacil.lotofacil_coluna_b (b4_a_b8_id);
CREATE INDEX lotofacil_coluna_b_idx_b4_a_b9_id
  ON lotofacil.lotofacil_coluna_b (b4_a_b9_id);
CREATE INDEX lotofacil_coluna_b_idx_b4_a_b10_id
  ON lotofacil.lotofacil_coluna_b (b4_a_b10_id);
CREATE INDEX lotofacil_coluna_b_idx_b4_a_b11_id
  ON lotofacil.lotofacil_coluna_b (b4_a_b11_id);
CREATE INDEX lotofacil_coluna_b_idx_b4_a_b12_id
  ON lotofacil.lotofacil_coluna_b (b4_a_b12_id);
CREATE INDEX lotofacil_coluna_b_idx_b4_a_b13_id
  ON lotofacil.lotofacil_coluna_b (b4_a_b13_id);
CREATE INDEX lotofacil_coluna_b_idx_b4_a_b14_id
  ON lotofacil.lotofacil_coluna_b (b4_a_b14_id);
CREATE INDEX lotofacil_coluna_b_idx_b4_a_b15_id
  ON lotofacil.lotofacil_coluna_b (b4_a_b15_id);

CREATE INDEX lotofacil_coluna_b_idx_b5_a_b5_id
  ON lotofacil.lotofacil_coluna_b (b5_a_b5_id);
CREATE INDEX lotofacil_coluna_b_idx_b5_a_b6_id
  ON lotofacil.lotofacil_coluna_b (b5_a_b6_id);
CREATE INDEX lotofacil_coluna_b_idx_b5_a_b7_id
  ON lotofacil.lotofacil_coluna_b (b5_a_b7_id);
CREATE INDEX lotofacil_coluna_b_idx_b5_a_b8_id
  ON lotofacil.lotofacil_coluna_b (b5_a_b8_id);
CREATE INDEX lotofacil_coluna_b_idx_b5_a_b9_id
  ON lotofacil.lotofacil_coluna_b (b5_a_b9_id);
CREATE INDEX lotofacil_coluna_b_idx_b5_a_b10_id
  ON lotofacil.lotofacil_coluna_b (b5_a_b10_id);
CREATE INDEX lotofacil_coluna_b_idx_b5_a_b11_id
  ON lotofacil.lotofacil_coluna_b (b5_a_b11_id);
CREATE INDEX lotofacil_coluna_b_idx_b5_a_b12_id
  ON lotofacil.lotofacil_coluna_b (b5_a_b12_id);
CREATE INDEX lotofacil_coluna_b_idx_b5_a_b13_id
  ON lotofacil.lotofacil_coluna_b (b5_a_b13_id);
CREATE INDEX lotofacil_coluna_b_idx_b5_a_b14_id
  ON lotofacil.lotofacil_coluna_b (b5_a_b14_id);
CREATE INDEX lotofacil_coluna_b_idx_b5_a_b15_id
  ON lotofacil.lotofacil_coluna_b (b5_a_b15_id);

CREATE INDEX lotofacil_coluna_b_idx_b6_a_b6_id
  ON lotofacil.lotofacil_coluna_b (b6_a_b6_id);
CREATE INDEX lotofacil_coluna_b_idx_b6_a_b7_id
  ON lotofacil.lotofacil_coluna_b (b6_a_b7_id);
CREATE INDEX lotofacil_coluna_b_idx_b6_a_b8_id
  ON lotofacil.lotofacil_coluna_b (b6_a_b8_id);
CREATE INDEX lotofacil_coluna_b_idx_b6_a_b9_id
  ON lotofacil.lotofacil_coluna_b (b6_a_b9_id);
CREATE INDEX lotofacil_coluna_b_idx_b6_a_b10_id
  ON lotofacil.lotofacil_coluna_b (b6_a_b10_id);
CREATE INDEX lotofacil_coluna_b_idx_b6_a_b11_id
  ON lotofacil.lotofacil_coluna_b (b6_a_b11_id);
CREATE INDEX lotofacil_coluna_b_idx_b6_a_b12_id
  ON lotofacil.lotofacil_coluna_b (b6_a_b12_id);
CREATE INDEX lotofacil_coluna_b_idx_b6_a_b13_id
  ON lotofacil.lotofacil_coluna_b (b6_a_b13_id);
CREATE INDEX lotofacil_coluna_b_idx_b6_a_b14_id
  ON lotofacil.lotofacil_coluna_b (b6_a_b14_id);
CREATE INDEX lotofacil_coluna_b_idx_b6_a_b15_id
  ON lotofacil.lotofacil_coluna_b (b6_a_b15_id);

CREATE INDEX lotofacil_coluna_b_idx_b7_a_b7_id
  ON lotofacil.lotofacil_coluna_b (b7_a_b7_id);
CREATE INDEX lotofacil_coluna_b_idx_b7_a_b8_id
  ON lotofacil.lotofacil_coluna_b (b7_a_b8_id);
CREATE INDEX lotofacil_coluna_b_idx_b7_a_b9_id
  ON lotofacil.lotofacil_coluna_b (b7_a_b9_id);
CREATE INDEX lotofacil_coluna_b_idx_b7_a_b10_id
  ON lotofacil.lotofacil_coluna_b (b7_a_b10_id);
CREATE INDEX lotofacil_coluna_b_idx_b7_a_b11_id
  ON lotofacil.lotofacil_coluna_b (b7_a_b11_id);
CREATE INDEX lotofacil_coluna_b_idx_b7_a_b12_id
  ON lotofacil.lotofacil_coluna_b (b7_a_b12_id);
CREATE INDEX lotofacil_coluna_b_idx_b7_a_b13_id
  ON lotofacil.lotofacil_coluna_b (b7_a_b13_id);
CREATE INDEX lotofacil_coluna_b_idx_b7_a_b14_id
  ON lotofacil.lotofacil_coluna_b (b7_a_b14_id);
CREATE INDEX lotofacil_coluna_b_idx_b7_a_b15_id
  ON lotofacil.lotofacil_coluna_b (b7_a_b15_id);

CREATE INDEX lotofacil_coluna_b_idx_b8_a_b15_id
  ON lotofacil.lotofacil_coluna_b (b8_a_b8_id);
CREATE INDEX lotofacil_coluna_b_idx_b8_a_b8_id
  ON lotofacil.lotofacil_coluna_b (b8_a_b9_id);
CREATE INDEX lotofacil_coluna_b_idx_b8_a_b9_id
  ON lotofacil.lotofacil_coluna_b (b8_a_b10_id);
CREATE INDEX lotofacil_coluna_b_idx_b8_a_b10_id
  ON lotofacil.lotofacil_coluna_b (b8_a_b11_id);
CREATE INDEX lotofacil_coluna_b_idx_b8_a_b11_id
  ON lotofacil.lotofacil_coluna_b (b8_a_b12_id);
CREATE INDEX lotofacil_coluna_b_idx_b8_a_b12_id
  ON lotofacil.lotofacil_coluna_b (b8_a_b13_id);
CREATE INDEX lotofacil_coluna_b_idx_b8_a_b13_id
  ON lotofacil.lotofacil_coluna_b (b8_a_b14_id);
CREATE INDEX lotofacil_coluna_b_idx_b8_a_b14_id
  ON lotofacil.lotofacil_coluna_b (b8_a_b15_id);

CREATE INDEX lotofacil_coluna_b_idx_b9_a_b9_id
  ON lotofacil.lotofacil_coluna_b (xxx);
CREATE INDEX lotofacil_coluna_b_idx_b9_a_b10_id
  ON lotofacil.lotofacil_coluna_b (xxx);
CREATE INDEX lotofacil_coluna_b_idx_b9_a_b11_id
  ON lotofacil.lotofacil_coluna_b (xxx);
CREATE INDEX lotofacil_coluna_b_idx_b9_a_b12_id
  ON lotofacil.lotofacil_coluna_b (xxx);
CREATE INDEX lotofacil_coluna_b_idx_b9_a_b13_id
  ON lotofacil.lotofacil_coluna_b (xxx);
CREATE INDEX lotofacil_coluna_b_idx_b9_a_b14_id
  ON lotofacil.lotofacil_coluna_b (xxx);
CREATE INDEX lotofacil_coluna_b_idx_b9_a_b15_id
  ON lotofacil.lotofacil_coluna_b (xxx);

CREATE INDEX lotofacil_coluna_b_idx_b10_a_b10_id
  ON lotofacil.lotofacil_coluna_b (xxx);
CREATE INDEX lotofacil_coluna_b_idx_b10_a_b11_id
  ON lotofacil.lotofacil_coluna_b (xxx);
CREATE INDEX lotofacil_coluna_b_idx_b10_a_b12_id
  ON lotofacil.lotofacil_coluna_b (xxx);
CREATE INDEX lotofacil_coluna_b_idx_b10_a_b13_id
  ON lotofacil.lotofacil_coluna_b (xxx);
CREATE INDEX lotofacil_coluna_b_idx_b10_a_b14_id
  ON lotofacil.lotofacil_coluna_b (xxx);
CREATE INDEX lotofacil_coluna_b_idx_b10_a_b15_id
  ON lotofacil.lotofacil_coluna_b (xxx);

CREATE INDEX lotofacil_coluna_b_idx_b11_a_b11_id
  ON lotofacil.lotofacil_coluna_b (b11_a_b11_id);
CREATE INDEX lotofacil_coluna_b_idx_b11_a_b12_id
  ON lotofacil.lotofacil_coluna_b (b11_a_b12_id);
CREATE INDEX lotofacil_coluna_b_idx_b11_a_b13_id
  ON lotofacil.lotofacil_coluna_b (b11_a_b13_id);
CREATE INDEX lotofacil_coluna_b_idx_b11_a_b14_id
  ON lotofacil.lotofacil_coluna_b (b11_a_b14_id);
CREATE INDEX lotofacil_coluna_b_idx_b11_a_b15_id
  ON lotofacil.lotofacil_coluna_b (b11_a_b15_id);

CREATE INDEX lotofacil_coluna_b_idx_b12_a_b12_id
  ON lotofacil.lotofacil_coluna_b (b12_a_b12_id);
CREATE INDEX lotofacil_coluna_b_idx_b12_a_b13_id
  ON lotofacil.lotofacil_coluna_b (b12_a_b13_id);
CREATE INDEX lotofacil_coluna_b_idx_b12_a_b14_id
  ON lotofacil.lotofacil_coluna_b (b12_a_b14_id);
CREATE INDEX lotofacil_coluna_b_idx_b12_a_b15_id
  ON lotofacil.lotofacil_coluna_b (b12_a_b15_id);

CREATE INDEX lotofacil_coluna_b_idx_b13_a_b13_id
  ON lotofacil.lotofacil_coluna_b (b13_a_b13_id);
CREATE INDEX lotofacil_coluna_b_idx_b13_a_b14_id
  ON lotofacil.lotofacil_coluna_b (b13_a_b14_id);
CREATE INDEX lotofacil_coluna_b_idx_b13_a_b15_id
  ON lotofacil.lotofacil_coluna_b (b13_a_b15_id);

CREATE INDEX lotofacil_coluna_b_idx_b14_a_b14_id
  ON lotofacil.lotofacil_coluna_b (b14_a_b14_id);
CREATE INDEX lotofacil_coluna_b_idx_b14_a_b15_id
  ON lotofacil.lotofacil_coluna_b (b14_a_b15_id);

CREATE INDEX lotofacil_coluna_b_idx_b15_a_b15_id
  ON lotofacil.lotofacil_coluna_b (b15_a_b15_id);

/**
  Por razes de desempenho,
 */

DROP TABLE IF EXISTS lotofacil.lotofacil_resultado_coluna_b;
CREATE TABLE lotofacil.lotofacil_resultado_coluna_b (
  concurso     NUMERIC NOT NULL PRIMARY KEY REFERENCES lotofacil.lotofacil_resultado_id (concurso),
  ltf_id       NUMERIC NOT NULL,
  ltf_qt       NUMERIC NOT NULL CHECK (ltf_qt IN (15, 16, 17, 18)),

  b1_a_b1_id   NUMERIC NOT NULL,
  b1_a_b2_id   NUMERIC NOT NULL,
  b1_a_b3_id   NUMERIC NOT NULL,
  b1_a_b4_id   NUMERIC NOT NULL,
  b1_a_b5_id   NUMERIC NOT NULL,
  b1_a_b6_id   NUMERIC NOT NULL,
  b1_a_b7_id   NUMERIC NOT NULL,
  b1_a_b8_id   NUMERIC NOT NULL,
  b1_a_b9_id   NUMERIC NOT NULL,
  b1_a_b10_id  NUMERIC NOT NULL,
  b1_a_b11_id  NUMERIC NOT NULL,
  b1_a_b12_id  NUMERIC NOT NULL,
  b1_a_b13_id  NUMERIC NOT NULL,
  b1_a_b14_id  NUMERIC NOT NULL,
  b1_a_b15_id  NUMERIC NOT NULL,

  b2_a_b2_id   NUMERIC NOT NULL,
  b2_a_b3_id   NUMERIC NOT NULL,
  b2_a_b4_id   NUMERIC NOT NULL,
  b2_a_b5_id   NUMERIC NOT NULL,
  b2_a_b6_id   NUMERIC NOT NULL,
  b2_a_b7_id   NUMERIC NOT NULL,
  b2_a_b8_id   NUMERIC NOT NULL,
  b2_a_b9_id   NUMERIC NOT NULL,
  b2_a_b10_id  NUMERIC NOT NULL,
  b2_a_b11_id  NUMERIC NOT NULL,
  b2_a_b12_id  NUMERIC NOT NULL,
  b2_a_b13_id  NUMERIC NOT NULL,
  b2_a_b14_id  NUMERIC NOT NULL,
  b2_a_b15_id  NUMERIC NOT NULL,

  b3_a_b3_id   NUMERIC NOT NULL,
  b3_a_b4_id   NUMERIC NOT NULL,
  b3_a_b5_id   NUMERIC NOT NULL,
  b3_a_b6_id   NUMERIC NOT NULL,
  b3_a_b7_id   NUMERIC NOT NULL,
  b3_a_b8_id   NUMERIC NOT NULL,
  b3_a_b9_id   NUMERIC NOT NULL,
  b3_a_b10_id  NUMERIC NOT NULL,
  b3_a_b11_id  NUMERIC NOT NULL,
  b3_a_b12_id  NUMERIC NOT NULL,
  b3_a_b13_id  NUMERIC NOT NULL,
  b3_a_b14_id  NUMERIC NOT NULL,
  b3_a_b15_id  NUMERIC NOT NULL,

  b4_a_b4_id   NUMERIC NOT NULL,
  b4_a_b5_id   NUMERIC NOT NULL,
  b4_a_b6_id   NUMERIC NOT NULL,
  b4_a_b7_id   NUMERIC NOT NULL,
  b4_a_b8_id   NUMERIC NOT NULL,
  b4_a_b9_id   NUMERIC NOT NULL,
  b4_a_b10_id  NUMERIC NOT NULL,
  b4_a_b11_id  NUMERIC NOT NULL,
  b4_a_b12_id  NUMERIC NOT NULL,
  b4_a_b13_id  NUMERIC NOT NULL,
  b4_a_b14_id  NUMERIC NOT NULL,
  b4_a_b15_id  NUMERIC NOT NULL,

  b5_a_b5_id   NUMERIC NOT NULL,
  b5_a_b6_id   NUMERIC NOT NULL,
  b5_a_b7_id   NUMERIC NOT NULL,
  b5_a_b8_id   NUMERIC NOT NULL,
  b5_a_b9_id   NUMERIC NOT NULL,
  b5_a_b10_id  NUMERIC NOT NULL,
  b5_a_b11_id  NUMERIC NOT NULL,
  b5_a_b12_id  NUMERIC NOT NULL,
  b5_a_b13_id  NUMERIC NOT NULL,
  b5_a_b14_id  NUMERIC NOT NULL,
  b5_a_b15_id  NUMERIC NOT NULL,

  b6_a_b6_id   NUMERIC NOT NULL,
  b6_a_b7_id   NUMERIC NOT NULL,
  b6_a_b8_id   NUMERIC NOT NULL,
  b6_a_b9_id   NUMERIC NOT NULL,
  b6_a_b10_id  NUMERIC NOT NULL,
  b6_a_b11_id  NUMERIC NOT NULL,
  b6_a_b12_id  NUMERIC NOT NULL,
  b6_a_b13_id  NUMERIC NOT NULL,
  b6_a_b14_id  NUMERIC NOT NULL,
  b6_a_b15_id  NUMERIC NOT NULL,

  b7_a_b7_id   NUMERIC NOT NULL,
  b7_a_b8_id   NUMERIC NOT NULL,
  b7_a_b9_id   NUMERIC NOT NULL,
  b7_a_b10_id  NUMERIC NOT NULL,
  b7_a_b11_id  NUMERIC NOT NULL,
  b7_a_b12_id  NUMERIC NOT NULL,
  b7_a_b13_id  NUMERIC NOT NULL,
  b7_a_b14_id  NUMERIC NOT NULL,
  b7_a_b15_id  NUMERIC NOT NULL,

  b8_a_b8_id   NUMERIC NOT NULL,
  b8_a_b9_id   NUMERIC NOT NULL,
  b8_a_b10_id  NUMERIC NOT NULL,
  b8_a_b11_id  NUMERIC NOT NULL,
  b8_a_b12_id  NUMERIC NOT NULL,
  b8_a_b13_id  NUMERIC NOT NULL,
  b8_a_b14_id  NUMERIC NOT NULL,
  b8_a_b15_id  NUMERIC NOT NULL,

  b9_a_b9_id   NUMERIC NOT NULL,
  b9_a_b10_id  NUMERIC NOT NULL,
  b9_a_b11_id  NUMERIC NOT NULL,
  b9_a_b12_id  NUMERIC NOT NULL,
  b9_a_b13_id  NUMERIC NOT NULL,
  b9_a_b14_id  NUMERIC NOT NULL,
  b9_a_b15_id  NUMERIC NOT NULL,

  b10_a_b10_id NUMERIC NOT NULL,
  b10_a_b11_id NUMERIC NOT NULL,
  b10_a_b12_id NUMERIC NOT NULL,
  b10_a_b13_id NUMERIC NOT NULL,
  b10_a_b14_id NUMERIC NOT NULL,
  b10_a_b15_id NUMERIC NOT NULL,

  b11_a_b11_id NUMERIC NOT NULL,
  b11_a_b12_id NUMERIC NOT NULL,
  b11_a_b13_id NUMERIC NOT NULL,
  b11_a_b14_id NUMERIC NOT NULL,
  b11_a_b15_id NUMERIC NOT NULL,

  b12_a_b12_id NUMERIC NOT NULL,
  b12_a_b13_id NUMERIC NOT NULL,
  b12_a_b14_id NUMERIC NOT NULL,
  b12_a_b15_id NUMERIC NOT NULL,

  b13_a_b13_id NUMERIC NOT NULL,
  b13_a_b14_id NUMERIC NOT NULL,
  b13_a_b15_id NUMERIC NOT NULL,

  b14_a_b14_id NUMERIC NOT NULL,
  b14_a_b15_id NUMERIC NOT NULL,

  b15_a_b15_id NUMERIC NOT NULL
);


Select from lotofacil.fn_lotofacil_resultado_coluna_b();


drop function if exists lotofacil.fn_lotofacil_resultado_coluna_b();
create function lotofacil.fn_lotofacil_resultado_coluna_b() returns void
     language plpgsql
     as $$
     declare
     begin
     delete from lotofacil.lotofacil_resultado_coluna_b;
     INSERT INTO lotofacil.lotofacil_resultado_coluna_b (concurso, ltf_id, ltf_qt, b1_a_b1_id, b1_a_b2_id, b1_a_b3_id, b1_a_b4_id, b1_a_b5_id, b1_a_b6_id, b1_a_b7_id, b1_a_b8_id, b1_a_b9_id, b1_a_b10_id, b1_a_b11_id, b1_a_b12_id, b1_a_b13_id, b1_a_b14_id, b1_a_b15_id, b2_a_b2_id, b2_a_b3_id, b2_a_b4_id, b2_a_b5_id, b2_a_b6_id, b2_a_b7_id, b2_a_b8_id, b2_a_b9_id, b2_a_b10_id, b2_a_b11_id, b2_a_b12_id, b2_a_b13_id, b2_a_b14_id, b2_a_b15_id, b3_a_b3_id, b3_a_b4_id, b3_a_b5_id, b3_a_b6_id, b3_a_b7_id, b3_a_b8_id, b3_a_b9_id, b3_a_b10_id, b3_a_b11_id, b3_a_b12_id, b3_a_b13_id, b3_a_b14_id, b3_a_b15_id, b4_a_b4_id, b4_a_b5_id, b4_a_b6_id, b4_a_b7_id, b4_a_b8_id, b4_a_b9_id, b4_a_b10_id, b4_a_b11_id, b4_a_b12_id, b4_a_b13_id, b4_a_b14_id, b4_a_b15_id, b5_a_b5_id, b5_a_b6_id, b5_a_b7_id, b5_a_b8_id, b5_a_b9_id, b5_a_b10_id, b5_a_b11_id, b5_a_b12_id, b5_a_b13_id, b5_a_b14_id, b5_a_b15_id, b6_a_b6_id, b6_a_b7_id, b6_a_b8_id, b6_a_b9_id, b6_a_b10_id, b6_a_b11_id, b6_a_b12_id, b6_a_b13_id, b6_a_b14_id, b6_a_b15_id, b7_a_b7_id, b7_a_b8_id, b7_a_b9_id, b7_a_b10_id, b7_a_b11_id, b7_a_b12_id, b7_a_b13_id, b7_a_b14_id, b7_a_b15_id, b8_a_b8_id, b8_a_b9_id, b8_a_b10_id, b8_a_b11_id, b8_a_b12_id, b8_a_b13_id, b8_a_b14_id, b8_a_b15_id, b9_a_b9_id, b9_a_b10_id, b9_a_b11_id, b9_a_b12_id, b9_a_b13_id, b9_a_b14_id, b9_a_b15_id, b10_a_b10_id, b10_a_b11_id, b10_a_b12_id, b10_a_b13_id, b10_a_b14_id, b10_a_b15_id, b11_a_b11_id, b11_a_b12_id, b11_a_b13_id, b11_a_b14_id, b11_a_b15_id, b12_a_b12_id, b12_a_b13_id, b12_a_b14_id, b12_a_b15_id, b13_a_b13_id, b13_a_b14_id, b13_a_b15_id, b14_a_b14_id, b14_a_b15_id, b15_a_b15_id)
       SELECT
         concurso,
         ltf_a.ltf_id,
         ltf_qt,
         b1_a_b1_id,
         b1_a_b2_id,
         b1_a_b3_id,
         b1_a_b4_id,
         b1_a_b5_id,
         b1_a_b6_id,
         b1_a_b7_id,
         b1_a_b8_id,
         b1_a_b9_id,
         b1_a_b10_id,
         b1_a_b11_id,
         b1_a_b12_id,
         b1_a_b13_id,
         b1_a_b14_id,
         b1_a_b15_id,
         b2_a_b2_id,
         b2_a_b3_id,
         b2_a_b4_id,
         b2_a_b5_id,
         b2_a_b6_id,
         b2_a_b7_id,
         b2_a_b8_id,
         b2_a_b9_id,
         b2_a_b10_id,
         b2_a_b11_id,
         b2_a_b12_id,
         b2_a_b13_id,
         b2_a_b14_id,
         b2_a_b15_id,
         b3_a_b3_id,
         b3_a_b4_id,
         b3_a_b5_id,
         b3_a_b6_id,
         b3_a_b7_id,
         b3_a_b8_id,
         b3_a_b9_id,
         b3_a_b10_id,
         b3_a_b11_id,
         b3_a_b12_id,
         b3_a_b13_id,
         b3_a_b14_id,
         b3_a_b15_id,
         b4_a_b4_id,
         b4_a_b5_id,
         b4_a_b6_id,
         b4_a_b7_id,
         b4_a_b8_id,
         b4_a_b9_id,
         b4_a_b10_id,
         b4_a_b11_id,
         b4_a_b12_id,
         b4_a_b13_id,
         b4_a_b14_id,
         b4_a_b15_id,
         b5_a_b5_id,
         b5_a_b6_id,
         b5_a_b7_id,
         b5_a_b8_id,
         b5_a_b9_id,
         b5_a_b10_id,
         b5_a_b11_id,
         b5_a_b12_id,
         b5_a_b13_id,
         b5_a_b14_id,
         b5_a_b15_id,
         b6_a_b6_id,
         b6_a_b7_id,
         b6_a_b8_id,
         b6_a_b9_id,
         b6_a_b10_id,
         b6_a_b11_id,
         b6_a_b12_id,
         b6_a_b13_id,
         b6_a_b14_id,
         b6_a_b15_id,
         b7_a_b7_id,
         b7_a_b8_id,
         b7_a_b9_id,
         b7_a_b10_id,
         b7_a_b11_id,
         b7_a_b12_id,
         b7_a_b13_id,
         b7_a_b14_id,
         b7_a_b15_id,
         b8_a_b8_id,
         b8_a_b9_id,
         b8_a_b10_id,
         b8_a_b11_id,
         b8_a_b12_id,
         b8_a_b13_id,
         b8_a_b14_id,
         b8_a_b15_id,
         b9_a_b9_id,
         b9_a_b10_id,
         b9_a_b11_id,
         b9_a_b12_id,
         b9_a_b13_id,
         b9_a_b14_id,
         b9_a_b15_id,
         b10_a_b10_id,
         b10_a_b11_id,
         b10_a_b12_id,
         b10_a_b13_id,
         b10_a_b14_id,
         b10_a_b15_id,
         b11_a_b11_id,
         b11_a_b12_id,
         b11_a_b13_id,
         b11_a_b14_id,
         b11_a_b15_id,
         b12_a_b12_id,
         b12_a_b13_id,
         b12_a_b14_id,
         b12_a_b15_id,
         b13_a_b13_id,
         b13_a_b14_id,
         b13_a_b15_id,
         b14_a_b14_id,
         b14_a_b15_id,
         b15_a_b15_id
       FROM lotofacil.lotofacil_coluna_b ltf_a, lotofacil.lotofacil_resultado_id ltf_b
       WHERE ltf_a.ltf_id = ltf_b.ltf_id;
     END;
     $$;






/**
  Vamos analisar estatísticamente as colunas da esquerda pra direita, de tal forma
  quando houver duas ou mais colunas a serem analisadas, tais colunas estejam em posições sequenciais.
  Por exemplo, ao analisar a coluna b_11, iremo fazer isto:
  b_11;
  b_11 e b_12;
  b_11, b_12 e b_13;

  Na lotofacil, há combinações com 15 a 18 bolas, entretanto, iremos
  analisar somente 15 colunas, independente da quantidade de bolas, entretanto, as colunas
  deve ser de b_1 a b_15.

  A análise estatística será efetuada assim:
  Dado uma coluna qualquer neste intervalo, analise esta coluna, depois,
  analise a próxima coluna, a direita, que é a próxima coluna.

  A análise é baseada na combinação de 1 ou mais colunas, de tal forma
  que tais colunas, estejam uma após a outra.
  A análise começa com uma única coluna, e vai estendendo pra outras colunas
  a direita, de tal forma que tais colunas, estejam uma após a outra, até chegar
  na última coluna a direita.

  Por exemplo, dado a coluna b_11, iremos realizar a estatística de uma ou mais
  colunas até chegar na última coluna.

  Começando na coluna b_1, as combinações com as colunas seguintes a esta ficariam
  desta forma:
  b1;
  b1 a b2;
  b1, b2, b3;
  b1, b2, b3, b4;

  Haverá 120 colunas, bx_a_by, que corresponde as todas as combinações possíveis.

 */

/**
  Analisar a coluna b_11 a b_15.
  Na coluna b_11 a menor bola é 11 e a máxima bola é 21.
  Pois:
  A primeira combinação é:
  1,  2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15
  e, a última é:
  11,12,13,14,15,16,17,18,19, 20, 21, 22, 23, 24, 25

  Na claúsula where, iremos limitar os registros da tabela lotofacil_id_grupo_xx_bola
  a este intervalo, após estamos analisando começando da coluna b_11.

 */

/**
  Cria as views pra analisar estatisticamente as colunas:
  b11_a_b11,
  b11_a_b12,
  b11_a_b13,
  b11_a_b14,
  b11_a_b15

  Cria também uma function pra analisar estatisticamente baseada em um
  intervalo inicial e final.
 */
DROP VIEW IF EXISTS lotofacil.v_lotofacil_resultado_b11_a_b11;
CREATE VIEW lotofacil.v_lotofacil_resultado_b11_a_b11 (grp_id, b1, qt_vezes) AS
  SELECT
    ltf_a.grp_id,
    bola1,
    count(ltf_b.b11_a_b11_id) AS qt_vezes
  FROM
    lotofacil.lotofacil_id_grupo_1_bola ltf_a LEFT JOIN lotofacil.lotofacil_resultado_coluna_b ltf_b
      ON b11_a_b11_id = ltf_a.grp_id
  WHERE ltf_a.bola1 >= 11 AND ltf_a.bola1 <= 21

  GROUP BY ltf_a.grp_id, bola1
  ORDER BY qt_vezes DESC, bola1;

DROP FUNCTION IF EXISTS lotofacil.fn_lotofacil_resultado_b11_a_b11( NUMERIC, NUMERIC );
CREATE FUNCTION lotofacil.fn_lotofacil_resultado_b11_a_b11(concurso_inicial NUMERIC, concurso_final NUMERIC)
  RETURNS TABLE(grp_id NUMERIC, b1 NUMERIC, qt_vezes NUMERIC)
LANGUAGE plpgsql
AS $$
DECLARE
BEGIN
  RETURN QUERY SELECT
                 ltf_a.grp_id,
                 bola1,
                 count(ltf_b.b11_a_b11_id) :: NUMERIC AS qt_vezes
               FROM
                 lotofacil.lotofacil_id_grupo_1_bola ltf_a LEFT JOIN lotofacil.lotofacil_resultado_coluna_b ltf_b
                   ON b11_a_b11_id = ltf_a.grp_id
                      AND concurso BETWEEN concurso_inicial AND concurso_final
               WHERE ltf_a.bola1 >= 11 AND ltf_a.bola1 <= 21
               GROUP BY ltf_a.grp_id, bola1
               ORDER BY qt_vezes DESC, bola1;
END;
$$;


/**
  Modelo usado pra popular todos os 120 campos a serem analisados.
 */
/*
Drop view if exists lotofacil.v_lotofacil_resultado_{nome_tabela};
Create View lotofacil.v_lotofacil_resultado_{nome_tabela} (grp_id{campo_da_view}, qt_vezes) as
Select ltf_a.grp_id{campo_do_select}, count(ltf_b.{nome_tabela}_id) as qt_vezes from
  lotofacil.lotofacil_id_grupo_{grupo_qt_bolas}_bola{plural} ltf_a left join lotofacil.lotofacil_resultado_coluna_b ltf_b
  on b11_a_b11_id = ltf_a.grp_id
  where ltf_a.bola1 >= {bola_minima} and ltf_a.bola1 <= {bola_maxima}

group by ltf_a.grp_id, {campo_do_select}
order by qt_vezes desc, {campo_do_select};

drop function if exists lotofacil.fn_lotofacil_resultado_{nome_tabela}(numeric, numeric);
create function lotofacil.fn_lotofacil_resultado_{nome_tabela}(concurso_inicial numeric, concurso_final numeric)
  returns table (grp_id numeric{campo_da_view} numeric)
  LANGUAGE plpgsql
  as $$
  DECLARE
  begin
  Return Query Select ltf_a.grp_id{campo_do_select},count(ltf_b.{nome_tabela}_id)::numeric as qt_vezes from
  lotofacil.lotofacil_id_grupo_1_bola ltf_a left join lotofacil.lotofacil_resultado_coluna_b ltf_b
  on b11_a_b11_id = ltf_a.grp_id
  where ltf_a.bola1 >= {bola_minima} and ltf_a.bola1 <= {bola_maxima}
    and concurso between concurso_inicial and concurso_final;
  end;
  $$;
  */


/**
     Início das views e função pra analisar as bolas nas posições da coluna.
 */
/*
Views e triggers pra analisar as combinações de bolas
nos campos b, que são os campos b1 até b15.
Há uma tabela pra cada campo da forma bx_a_y
da tabela lotofacil.lotofacil_coluna_b.
No total há 120 campos, então há 120 tabelas
No script abaixo, há 120 views e 120 funções
Nas views, retorna informações de quantas vezes
uma combinação já foi sorteada.
No caso da function, ela retorna estatística
baseado em um intervalo de concurso.
Basicamente, as duas, views e function são quase idênticas,
a view e function retornam os mesmos campos, entretanto
a view retorna um estatística geral enquanto a function
retorna uma estatística baseada em um intervalo de concursos.
*/
/*
Views e triggers pra analisar as combinações de bolas
nos campos b, que são os campos b1 até b15.
Há uma tabela pra cada campo da forma bx_a_y
da tabela lotofacil.lotofacil_coluna_b.
No total há 120 campos, então há 120 tabelas
No script abaixo, há 120 views e 120 funções
Nas views, retorna informações de quantas vezes
uma combinação já foi sorteada.
No caso da function, ela retorna estatística
baseado em um intervalo de concurso.
Basicamente, as duas, views e function são quase idênticas,
a view e function retornam os mesmos campos, entretanto
a view retorna um estatística geral enquanto a function
retorna uma estatística baseada em um intervalo de concursos.
*/

/*
Views e triggers pra analisar as combinações de bolas
nos campos b, que são os campos b1 até b15.
Há uma tabela pra cada campo da forma bx_a_y
da tabela lotofacil.lotofacil_coluna_b.
No total há 120 campos, então há 120 tabelas
No script abaixo, há 120 views e 120 funções
Nas views, retorna informações de quantas vezes
uma combinação já foi sorteada.
No caso da function, ela retorna estatística
baseado em um intervalo de concurso.
Basicamente, as duas, views e function são quase idênticas,
a view e function retornam os mesmos campos, entretanto
a view retorna um estatística geral enquanto a function
retorna uma estatística baseada em um intervalo de concursos.
*/

Drop view if exists lotofacil.v_lotofacil_resultado_b1_a_b1;
create view lotofacil.v_lotofacil_resultado_b1_a_b1 as
Select
ltf_a.b1_a_b1_id,
ltf_a.b1,
count(ltf_b.b1_a_b1_id) as qt_vezes
from
lotofacil.lotofacil_id_b1_a_b1 ltf_a
left join lotofacil.lotofacil_resultado_coluna_b ltf_b
on ltf_a.b1_a_b1_id = ltf_b.b1_a_b1_id
group by ltf_a.b1_a_b1_id,
ltf_a.b1
order by qt_vezes desc,
ltf_a.b1 asc;

DROP FUNCTION IF EXISTS lotofacil.fn_lotofacil_resultado_b1_a_b1( NUMERIC, NUMERIC );
CREATE FUNCTION lotofacil.fn_lotofacil_resultado_b1_a_b1(concurso_inicial NUMERIC, concurso_final NUMERIC)
RETURNS TABLE(b1_a_b1_id numeric, b1 numeric, qt_vezes NUMERIC)
LANGUAGE plpgsql
As $$
Declare
Begin
RETURN QUERY SELECT
ltf_a.b1_a_b1_id,
ltf_a.b1,
count(ltf_b.b1_a_b1_id)::numeric as qt_vezes
from lotofacil.lotofacil_id_b1_a_b1 ltf_a
left join lotofacil.lotofacil_resultado_coluna_b ltf_b
on ltf_a.b1_a_b1_id = ltf_b.b1_a_b1_id
AND concurso BETWEEN concurso_inicial AND concurso_final
group by ltf_a.b1_a_b1_id, ltf_a.b1
order by ltf_a.b1_a_b1_id, ltf_a.b1 asc;
end;
$$;

Drop view if exists lotofacil.v_lotofacil_resultado_b1_a_b2;
create view lotofacil.v_lotofacil_resultado_b1_a_b2 as
Select
ltf_a.b1_a_b2_id,
ltf_a.b1,
ltf_a.b2,
count(ltf_b.b1_a_b2_id) as qt_vezes
from
lotofacil.lotofacil_id_b1_a_b2 ltf_a
left join lotofacil.lotofacil_resultado_coluna_b ltf_b
on ltf_a.b1_a_b2_id = ltf_b.b1_a_b2_id
group by ltf_a.b1_a_b2_id,
ltf_a.b1,
ltf_a.b2
order by qt_vezes desc,
ltf_a.b1 asc,
ltf_a.b2 asc;

DROP FUNCTION IF EXISTS lotofacil.fn_lotofacil_resultado_b1_a_b2( NUMERIC, NUMERIC );
CREATE FUNCTION lotofacil.fn_lotofacil_resultado_b1_a_b2(concurso_inicial NUMERIC, concurso_final NUMERIC)
RETURNS TABLE(b1_a_b2_id numeric, b1 numeric,
b2 numeric, qt_vezes NUMERIC)
LANGUAGE plpgsql
As $$
Declare
Begin
RETURN QUERY SELECT
ltf_a.b1_a_b2_id,
ltf_a.b1,
ltf_a.b2,
count(ltf_b.b1_a_b2_id)::numeric as qt_vezes
from lotofacil.lotofacil_id_b1_a_b2 ltf_a
left join lotofacil.lotofacil_resultado_coluna_b ltf_b
on ltf_a.b1_a_b2_id = ltf_b.b1_a_b2_id
AND concurso BETWEEN concurso_inicial AND concurso_final
group by ltf_a.b1_a_b2_id, ltf_a.b1,
ltf_a.b2
order by ltf_a.b1_a_b2_id, ltf_a.b1 asc,
ltf_a.b2 asc;
end;
$$;

Drop view if exists lotofacil.v_lotofacil_resultado_b1_a_b3;
create view lotofacil.v_lotofacil_resultado_b1_a_b3 as
Select
ltf_a.b1_a_b3_id,
ltf_a.b1,
ltf_a.b2,
ltf_a.b3,
count(ltf_b.b1_a_b3_id) as qt_vezes
from
lotofacil.lotofacil_id_b1_a_b3 ltf_a
left join lotofacil.lotofacil_resultado_coluna_b ltf_b
on ltf_a.b1_a_b3_id = ltf_b.b1_a_b3_id
group by ltf_a.b1_a_b3_id,
ltf_a.b1,
ltf_a.b2,
ltf_a.b3
order by qt_vezes desc,
ltf_a.b1 asc,
ltf_a.b2 asc,
ltf_a.b3 asc;

DROP FUNCTION IF EXISTS lotofacil.fn_lotofacil_resultado_b1_a_b3( NUMERIC, NUMERIC );
CREATE FUNCTION lotofacil.fn_lotofacil_resultado_b1_a_b3(concurso_inicial NUMERIC, concurso_final NUMERIC)
RETURNS TABLE(b1_a_b3_id numeric, b1 numeric,
b2 numeric,
b3 numeric, qt_vezes NUMERIC)
LANGUAGE plpgsql
As $$
Declare
Begin
RETURN QUERY SELECT
ltf_a.b1_a_b3_id,
ltf_a.b1,
ltf_a.b2,
ltf_a.b3,
count(ltf_b.b1_a_b3_id)::numeric as qt_vezes
from lotofacil.lotofacil_id_b1_a_b3 ltf_a
left join lotofacil.lotofacil_resultado_coluna_b ltf_b
on ltf_a.b1_a_b3_id = ltf_b.b1_a_b3_id
AND concurso BETWEEN concurso_inicial AND concurso_final
group by ltf_a.b1_a_b3_id, ltf_a.b1,
ltf_a.b2,
ltf_a.b3
order by ltf_a.b1_a_b3_id, ltf_a.b1 asc,
ltf_a.b2 asc,
ltf_a.b3 asc;
end;
$$;

Drop view if exists lotofacil.v_lotofacil_resultado_b1_a_b4;
create view lotofacil.v_lotofacil_resultado_b1_a_b4 as
Select
ltf_a.b1_a_b4_id,
ltf_a.b1,
ltf_a.b2,
ltf_a.b3,
ltf_a.b4,
count(ltf_b.b1_a_b4_id) as qt_vezes
from
lotofacil.lotofacil_id_b1_a_b4 ltf_a
left join lotofacil.lotofacil_resultado_coluna_b ltf_b
on ltf_a.b1_a_b4_id = ltf_b.b1_a_b4_id
group by ltf_a.b1_a_b4_id,
ltf_a.b1,
ltf_a.b2,
ltf_a.b3,
ltf_a.b4
order by qt_vezes desc,
ltf_a.b1 asc,
ltf_a.b2 asc,
ltf_a.b3 asc,
ltf_a.b4 asc;

DROP FUNCTION IF EXISTS lotofacil.fn_lotofacil_resultado_b1_a_b4( NUMERIC, NUMERIC );
CREATE FUNCTION lotofacil.fn_lotofacil_resultado_b1_a_b4(concurso_inicial NUMERIC, concurso_final NUMERIC)
RETURNS TABLE(b1_a_b4_id numeric, b1 numeric,
b2 numeric,
b3 numeric,
b4 numeric, qt_vezes NUMERIC)
LANGUAGE plpgsql
As $$
Declare
Begin
RETURN QUERY SELECT
ltf_a.b1_a_b4_id,
ltf_a.b1,
ltf_a.b2,
ltf_a.b3,
ltf_a.b4,
count(ltf_b.b1_a_b4_id)::numeric as qt_vezes
from lotofacil.lotofacil_id_b1_a_b4 ltf_a
left join lotofacil.lotofacil_resultado_coluna_b ltf_b
on ltf_a.b1_a_b4_id = ltf_b.b1_a_b4_id
AND concurso BETWEEN concurso_inicial AND concurso_final
group by ltf_a.b1_a_b4_id, ltf_a.b1,
ltf_a.b2,
ltf_a.b3,
ltf_a.b4
order by ltf_a.b1_a_b4_id, ltf_a.b1 asc,
ltf_a.b2 asc,
ltf_a.b3 asc,
ltf_a.b4 asc;
end;
$$;

Drop view if exists lotofacil.v_lotofacil_resultado_b1_a_b5;
create view lotofacil.v_lotofacil_resultado_b1_a_b5 as
Select
ltf_a.b1_a_b5_id,
ltf_a.b1,
ltf_a.b2,
ltf_a.b3,
ltf_a.b4,
ltf_a.b5,
count(ltf_b.b1_a_b5_id) as qt_vezes
from
lotofacil.lotofacil_id_b1_a_b5 ltf_a
left join lotofacil.lotofacil_resultado_coluna_b ltf_b
on ltf_a.b1_a_b5_id = ltf_b.b1_a_b5_id
group by ltf_a.b1_a_b5_id,
ltf_a.b1,
ltf_a.b2,
ltf_a.b3,
ltf_a.b4,
ltf_a.b5
order by qt_vezes desc,
ltf_a.b1 asc,
ltf_a.b2 asc,
ltf_a.b3 asc,
ltf_a.b4 asc,
ltf_a.b5 asc;

DROP FUNCTION IF EXISTS lotofacil.fn_lotofacil_resultado_b1_a_b5( NUMERIC, NUMERIC );
CREATE FUNCTION lotofacil.fn_lotofacil_resultado_b1_a_b5(concurso_inicial NUMERIC, concurso_final NUMERIC)
RETURNS TABLE(b1_a_b5_id numeric, b1 numeric,
b2 numeric,
b3 numeric,
b4 numeric,
b5 numeric, qt_vezes NUMERIC)
LANGUAGE plpgsql
As $$
Declare
Begin
RETURN QUERY SELECT
ltf_a.b1_a_b5_id,
ltf_a.b1,
ltf_a.b2,
ltf_a.b3,
ltf_a.b4,
ltf_a.b5,
count(ltf_b.b1_a_b5_id)::numeric as qt_vezes
from lotofacil.lotofacil_id_b1_a_b5 ltf_a
left join lotofacil.lotofacil_resultado_coluna_b ltf_b
on ltf_a.b1_a_b5_id = ltf_b.b1_a_b5_id
AND concurso BETWEEN concurso_inicial AND concurso_final
group by ltf_a.b1_a_b5_id, ltf_a.b1,
ltf_a.b2,
ltf_a.b3,
ltf_a.b4,
ltf_a.b5
order by ltf_a.b1_a_b5_id, ltf_a.b1 asc,
ltf_a.b2 asc,
ltf_a.b3 asc,
ltf_a.b4 asc,
ltf_a.b5 asc;
end;
$$;

Drop view if exists lotofacil.v_lotofacil_resultado_b1_a_b6;
create view lotofacil.v_lotofacil_resultado_b1_a_b6 as
Select
ltf_a.b1_a_b6_id,
ltf_a.b1,
ltf_a.b2,
ltf_a.b3,
ltf_a.b4,
ltf_a.b5,
ltf_a.b6,
count(ltf_b.b1_a_b6_id) as qt_vezes
from
lotofacil.lotofacil_id_b1_a_b6 ltf_a
left join lotofacil.lotofacil_resultado_coluna_b ltf_b
on ltf_a.b1_a_b6_id = ltf_b.b1_a_b6_id
group by ltf_a.b1_a_b6_id,
ltf_a.b1,
ltf_a.b2,
ltf_a.b3,
ltf_a.b4,
ltf_a.b5,
ltf_a.b6
order by qt_vezes desc,
ltf_a.b1 asc,
ltf_a.b2 asc,
ltf_a.b3 asc,
ltf_a.b4 asc,
ltf_a.b5 asc,
ltf_a.b6 asc;

DROP FUNCTION IF EXISTS lotofacil.fn_lotofacil_resultado_b1_a_b6( NUMERIC, NUMERIC );
CREATE FUNCTION lotofacil.fn_lotofacil_resultado_b1_a_b6(concurso_inicial NUMERIC, concurso_final NUMERIC)
RETURNS TABLE(b1_a_b6_id numeric, b1 numeric,
b2 numeric,
b3 numeric,
b4 numeric,
b5 numeric,
b6 numeric, qt_vezes NUMERIC)
LANGUAGE plpgsql
As $$
Declare
Begin
RETURN QUERY SELECT
ltf_a.b1_a_b6_id,
ltf_a.b1,
ltf_a.b2,
ltf_a.b3,
ltf_a.b4,
ltf_a.b5,
ltf_a.b6,
count(ltf_b.b1_a_b6_id)::numeric as qt_vezes
from lotofacil.lotofacil_id_b1_a_b6 ltf_a
left join lotofacil.lotofacil_resultado_coluna_b ltf_b
on ltf_a.b1_a_b6_id = ltf_b.b1_a_b6_id
AND concurso BETWEEN concurso_inicial AND concurso_final
group by ltf_a.b1_a_b6_id, ltf_a.b1,
ltf_a.b2,
ltf_a.b3,
ltf_a.b4,
ltf_a.b5,
ltf_a.b6
order by ltf_a.b1_a_b6_id, ltf_a.b1 asc,
ltf_a.b2 asc,
ltf_a.b3 asc,
ltf_a.b4 asc,
ltf_a.b5 asc,
ltf_a.b6 asc;
end;
$$;

Drop view if exists lotofacil.v_lotofacil_resultado_b1_a_b7;
create view lotofacil.v_lotofacil_resultado_b1_a_b7 as
Select
ltf_a.b1_a_b7_id,
ltf_a.b1,
ltf_a.b2,
ltf_a.b3,
ltf_a.b4,
ltf_a.b5,
ltf_a.b6,
ltf_a.b7,
count(ltf_b.b1_a_b7_id) as qt_vezes
from
lotofacil.lotofacil_id_b1_a_b7 ltf_a
left join lotofacil.lotofacil_resultado_coluna_b ltf_b
on ltf_a.b1_a_b7_id = ltf_b.b1_a_b7_id
group by ltf_a.b1_a_b7_id,
ltf_a.b1,
ltf_a.b2,
ltf_a.b3,
ltf_a.b4,
ltf_a.b5,
ltf_a.b6,
ltf_a.b7
order by qt_vezes desc,
ltf_a.b1 asc,
ltf_a.b2 asc,
ltf_a.b3 asc,
ltf_a.b4 asc,
ltf_a.b5 asc,
ltf_a.b6 asc,
ltf_a.b7 asc;

DROP FUNCTION IF EXISTS lotofacil.fn_lotofacil_resultado_b1_a_b7( NUMERIC, NUMERIC );
CREATE FUNCTION lotofacil.fn_lotofacil_resultado_b1_a_b7(concurso_inicial NUMERIC, concurso_final NUMERIC)
RETURNS TABLE(b1_a_b7_id numeric, b1 numeric,
b2 numeric,
b3 numeric,
b4 numeric,
b5 numeric,
b6 numeric,
b7 numeric, qt_vezes NUMERIC)
LANGUAGE plpgsql
As $$
Declare
Begin
RETURN QUERY SELECT
ltf_a.b1_a_b7_id,
ltf_a.b1,
ltf_a.b2,
ltf_a.b3,
ltf_a.b4,
ltf_a.b5,
ltf_a.b6,
ltf_a.b7,
count(ltf_b.b1_a_b7_id)::numeric as qt_vezes
from lotofacil.lotofacil_id_b1_a_b7 ltf_a
left join lotofacil.lotofacil_resultado_coluna_b ltf_b
on ltf_a.b1_a_b7_id = ltf_b.b1_a_b7_id
AND concurso BETWEEN concurso_inicial AND concurso_final
group by ltf_a.b1_a_b7_id, ltf_a.b1,
ltf_a.b2,
ltf_a.b3,
ltf_a.b4,
ltf_a.b5,
ltf_a.b6,
ltf_a.b7
order by ltf_a.b1_a_b7_id, ltf_a.b1 asc,
ltf_a.b2 asc,
ltf_a.b3 asc,
ltf_a.b4 asc,
ltf_a.b5 asc,
ltf_a.b6 asc,
ltf_a.b7 asc;
end;
$$;

Drop view if exists lotofacil.v_lotofacil_resultado_b1_a_b8;
create view lotofacil.v_lotofacil_resultado_b1_a_b8 as
Select
ltf_a.b1_a_b8_id,
ltf_a.b1,
ltf_a.b2,
ltf_a.b3,
ltf_a.b4,
ltf_a.b5,
ltf_a.b6,
ltf_a.b7,
ltf_a.b8,
count(ltf_b.b1_a_b8_id) as qt_vezes
from
lotofacil.lotofacil_id_b1_a_b8 ltf_a
left join lotofacil.lotofacil_resultado_coluna_b ltf_b
on ltf_a.b1_a_b8_id = ltf_b.b1_a_b8_id
group by ltf_a.b1_a_b8_id,
ltf_a.b1,
ltf_a.b2,
ltf_a.b3,
ltf_a.b4,
ltf_a.b5,
ltf_a.b6,
ltf_a.b7,
ltf_a.b8
order by qt_vezes desc,
ltf_a.b1 asc,
ltf_a.b2 asc,
ltf_a.b3 asc,
ltf_a.b4 asc,
ltf_a.b5 asc,
ltf_a.b6 asc,
ltf_a.b7 asc,
ltf_a.b8 asc;

DROP FUNCTION IF EXISTS lotofacil.fn_lotofacil_resultado_b1_a_b8( NUMERIC, NUMERIC );
CREATE FUNCTION lotofacil.fn_lotofacil_resultado_b1_a_b8(concurso_inicial NUMERIC, concurso_final NUMERIC)
RETURNS TABLE(b1_a_b8_id numeric, b1 numeric,
b2 numeric,
b3 numeric,
b4 numeric,
b5 numeric,
b6 numeric,
b7 numeric,
b8 numeric, qt_vezes NUMERIC)
LANGUAGE plpgsql
As $$
Declare
Begin
RETURN QUERY SELECT
ltf_a.b1_a_b8_id,
ltf_a.b1,
ltf_a.b2,
ltf_a.b3,
ltf_a.b4,
ltf_a.b5,
ltf_a.b6,
ltf_a.b7,
ltf_a.b8,
count(ltf_b.b1_a_b8_id)::numeric as qt_vezes
from lotofacil.lotofacil_id_b1_a_b8 ltf_a
left join lotofacil.lotofacil_resultado_coluna_b ltf_b
on ltf_a.b1_a_b8_id = ltf_b.b1_a_b8_id
AND concurso BETWEEN concurso_inicial AND concurso_final
group by ltf_a.b1_a_b8_id, ltf_a.b1,
ltf_a.b2,
ltf_a.b3,
ltf_a.b4,
ltf_a.b5,
ltf_a.b6,
ltf_a.b7,
ltf_a.b8
order by ltf_a.b1_a_b8_id, ltf_a.b1 asc,
ltf_a.b2 asc,
ltf_a.b3 asc,
ltf_a.b4 asc,
ltf_a.b5 asc,
ltf_a.b6 asc,
ltf_a.b7 asc,
ltf_a.b8 asc;
end;
$$;

Drop view if exists lotofacil.v_lotofacil_resultado_b1_a_b9;
create view lotofacil.v_lotofacil_resultado_b1_a_b9 as
Select
ltf_a.b1_a_b9_id,
ltf_a.b1,
ltf_a.b2,
ltf_a.b3,
ltf_a.b4,
ltf_a.b5,
ltf_a.b6,
ltf_a.b7,
ltf_a.b8,
ltf_a.b9,
count(ltf_b.b1_a_b9_id) as qt_vezes
from
lotofacil.lotofacil_id_b1_a_b9 ltf_a
left join lotofacil.lotofacil_resultado_coluna_b ltf_b
on ltf_a.b1_a_b9_id = ltf_b.b1_a_b9_id
group by ltf_a.b1_a_b9_id,
ltf_a.b1,
ltf_a.b2,
ltf_a.b3,
ltf_a.b4,
ltf_a.b5,
ltf_a.b6,
ltf_a.b7,
ltf_a.b8,
ltf_a.b9
order by qt_vezes desc,
ltf_a.b1 asc,
ltf_a.b2 asc,
ltf_a.b3 asc,
ltf_a.b4 asc,
ltf_a.b5 asc,
ltf_a.b6 asc,
ltf_a.b7 asc,
ltf_a.b8 asc,
ltf_a.b9 asc;

DROP FUNCTION IF EXISTS lotofacil.fn_lotofacil_resultado_b1_a_b9( NUMERIC, NUMERIC );
CREATE FUNCTION lotofacil.fn_lotofacil_resultado_b1_a_b9(concurso_inicial NUMERIC, concurso_final NUMERIC)
RETURNS TABLE(b1_a_b9_id numeric, b1 numeric,
b2 numeric,
b3 numeric,
b4 numeric,
b5 numeric,
b6 numeric,
b7 numeric,
b8 numeric,
b9 numeric, qt_vezes NUMERIC)
LANGUAGE plpgsql
As $$
Declare
Begin
RETURN QUERY SELECT
ltf_a.b1_a_b9_id,
ltf_a.b1,
ltf_a.b2,
ltf_a.b3,
ltf_a.b4,
ltf_a.b5,
ltf_a.b6,
ltf_a.b7,
ltf_a.b8,
ltf_a.b9,
count(ltf_b.b1_a_b9_id)::numeric as qt_vezes
from lotofacil.lotofacil_id_b1_a_b9 ltf_a
left join lotofacil.lotofacil_resultado_coluna_b ltf_b
on ltf_a.b1_a_b9_id = ltf_b.b1_a_b9_id
AND concurso BETWEEN concurso_inicial AND concurso_final
group by ltf_a.b1_a_b9_id, ltf_a.b1,
ltf_a.b2,
ltf_a.b3,
ltf_a.b4,
ltf_a.b5,
ltf_a.b6,
ltf_a.b7,
ltf_a.b8,
ltf_a.b9
order by ltf_a.b1_a_b9_id, ltf_a.b1 asc,
ltf_a.b2 asc,
ltf_a.b3 asc,
ltf_a.b4 asc,
ltf_a.b5 asc,
ltf_a.b6 asc,
ltf_a.b7 asc,
ltf_a.b8 asc,
ltf_a.b9 asc;
end;
$$;

Drop view if exists lotofacil.v_lotofacil_resultado_b1_a_b10;
create view lotofacil.v_lotofacil_resultado_b1_a_b10 as
Select
ltf_a.b1_a_b10_id,
ltf_a.b1,
ltf_a.b2,
ltf_a.b3,
ltf_a.b4,
ltf_a.b5,
ltf_a.b6,
ltf_a.b7,
ltf_a.b8,
ltf_a.b9,
ltf_a.b10,
count(ltf_b.b1_a_b10_id) as qt_vezes
from
lotofacil.lotofacil_id_b1_a_b10 ltf_a
left join lotofacil.lotofacil_resultado_coluna_b ltf_b
on ltf_a.b1_a_b10_id = ltf_b.b1_a_b10_id
group by ltf_a.b1_a_b10_id,
ltf_a.b1,
ltf_a.b2,
ltf_a.b3,
ltf_a.b4,
ltf_a.b5,
ltf_a.b6,
ltf_a.b7,
ltf_a.b8,
ltf_a.b9,
ltf_a.b10
order by qt_vezes desc,
ltf_a.b1 asc,
ltf_a.b2 asc,
ltf_a.b3 asc,
ltf_a.b4 asc,
ltf_a.b5 asc,
ltf_a.b6 asc,
ltf_a.b7 asc,
ltf_a.b8 asc,
ltf_a.b9 asc,
ltf_a.b10 asc;

DROP FUNCTION IF EXISTS lotofacil.fn_lotofacil_resultado_b1_a_b10( NUMERIC, NUMERIC );
CREATE FUNCTION lotofacil.fn_lotofacil_resultado_b1_a_b10(concurso_inicial NUMERIC, concurso_final NUMERIC)
RETURNS TABLE(b1_a_b10_id numeric, b1 numeric,
b2 numeric,
b3 numeric,
b4 numeric,
b5 numeric,
b6 numeric,
b7 numeric,
b8 numeric,
b9 numeric,
b10 numeric, qt_vezes NUMERIC)
LANGUAGE plpgsql
As $$
Declare
Begin
RETURN QUERY SELECT
ltf_a.b1_a_b10_id,
ltf_a.b1,
ltf_a.b2,
ltf_a.b3,
ltf_a.b4,
ltf_a.b5,
ltf_a.b6,
ltf_a.b7,
ltf_a.b8,
ltf_a.b9,
ltf_a.b10,
count(ltf_b.b1_a_b10_id)::numeric as qt_vezes
from lotofacil.lotofacil_id_b1_a_b10 ltf_a
left join lotofacil.lotofacil_resultado_coluna_b ltf_b
on ltf_a.b1_a_b10_id = ltf_b.b1_a_b10_id
AND concurso BETWEEN concurso_inicial AND concurso_final
group by ltf_a.b1_a_b10_id, ltf_a.b1,
ltf_a.b2,
ltf_a.b3,
ltf_a.b4,
ltf_a.b5,
ltf_a.b6,
ltf_a.b7,
ltf_a.b8,
ltf_a.b9,
ltf_a.b10
order by ltf_a.b1_a_b10_id, ltf_a.b1 asc,
ltf_a.b2 asc,
ltf_a.b3 asc,
ltf_a.b4 asc,
ltf_a.b5 asc,
ltf_a.b6 asc,
ltf_a.b7 asc,
ltf_a.b8 asc,
ltf_a.b9 asc,
ltf_a.b10 asc;
end;
$$;

Drop view if exists lotofacil.v_lotofacil_resultado_b1_a_b11;
create view lotofacil.v_lotofacil_resultado_b1_a_b11 as
Select
ltf_a.b1_a_b11_id,
ltf_a.b1,
ltf_a.b2,
ltf_a.b3,
ltf_a.b4,
ltf_a.b5,
ltf_a.b6,
ltf_a.b7,
ltf_a.b8,
ltf_a.b9,
ltf_a.b10,
ltf_a.b11,
count(ltf_b.b1_a_b11_id) as qt_vezes
from
lotofacil.lotofacil_id_b1_a_b11 ltf_a
left join lotofacil.lotofacil_resultado_coluna_b ltf_b
on ltf_a.b1_a_b11_id = ltf_b.b1_a_b11_id
group by ltf_a.b1_a_b11_id,
ltf_a.b1,
ltf_a.b2,
ltf_a.b3,
ltf_a.b4,
ltf_a.b5,
ltf_a.b6,
ltf_a.b7,
ltf_a.b8,
ltf_a.b9,
ltf_a.b10,
ltf_a.b11
order by qt_vezes desc,
ltf_a.b1 asc,
ltf_a.b2 asc,
ltf_a.b3 asc,
ltf_a.b4 asc,
ltf_a.b5 asc,
ltf_a.b6 asc,
ltf_a.b7 asc,
ltf_a.b8 asc,
ltf_a.b9 asc,
ltf_a.b10 asc,
ltf_a.b11 asc;

DROP FUNCTION IF EXISTS lotofacil.fn_lotofacil_resultado_b1_a_b11( NUMERIC, NUMERIC );
CREATE FUNCTION lotofacil.fn_lotofacil_resultado_b1_a_b11(concurso_inicial NUMERIC, concurso_final NUMERIC)
RETURNS TABLE(b1_a_b11_id numeric, b1 numeric,
b2 numeric,
b3 numeric,
b4 numeric,
b5 numeric,
b6 numeric,
b7 numeric,
b8 numeric,
b9 numeric,
b10 numeric,
b11 numeric, qt_vezes NUMERIC)
LANGUAGE plpgsql
As $$
Declare
Begin
RETURN QUERY SELECT
ltf_a.b1_a_b11_id,
ltf_a.b1,
ltf_a.b2,
ltf_a.b3,
ltf_a.b4,
ltf_a.b5,
ltf_a.b6,
ltf_a.b7,
ltf_a.b8,
ltf_a.b9,
ltf_a.b10,
ltf_a.b11,
count(ltf_b.b1_a_b11_id)::numeric as qt_vezes
from lotofacil.lotofacil_id_b1_a_b11 ltf_a
left join lotofacil.lotofacil_resultado_coluna_b ltf_b
on ltf_a.b1_a_b11_id = ltf_b.b1_a_b11_id
AND concurso BETWEEN concurso_inicial AND concurso_final
group by ltf_a.b1_a_b11_id, ltf_a.b1,
ltf_a.b2,
ltf_a.b3,
ltf_a.b4,
ltf_a.b5,
ltf_a.b6,
ltf_a.b7,
ltf_a.b8,
ltf_a.b9,
ltf_a.b10,
ltf_a.b11
order by ltf_a.b1_a_b11_id, ltf_a.b1 asc,
ltf_a.b2 asc,
ltf_a.b3 asc,
ltf_a.b4 asc,
ltf_a.b5 asc,
ltf_a.b6 asc,
ltf_a.b7 asc,
ltf_a.b8 asc,
ltf_a.b9 asc,
ltf_a.b10 asc,
ltf_a.b11 asc;
end;
$$;

Drop view if exists lotofacil.v_lotofacil_resultado_b1_a_b12;
create view lotofacil.v_lotofacil_resultado_b1_a_b12 as
Select
ltf_a.b1_a_b12_id,
ltf_a.b1,
ltf_a.b2,
ltf_a.b3,
ltf_a.b4,
ltf_a.b5,
ltf_a.b6,
ltf_a.b7,
ltf_a.b8,
ltf_a.b9,
ltf_a.b10,
ltf_a.b11,
ltf_a.b12,
count(ltf_b.b1_a_b12_id) as qt_vezes
from
lotofacil.lotofacil_id_b1_a_b12 ltf_a
left join lotofacil.lotofacil_resultado_coluna_b ltf_b
on ltf_a.b1_a_b12_id = ltf_b.b1_a_b12_id
group by ltf_a.b1_a_b12_id,
ltf_a.b1,
ltf_a.b2,
ltf_a.b3,
ltf_a.b4,
ltf_a.b5,
ltf_a.b6,
ltf_a.b7,
ltf_a.b8,
ltf_a.b9,
ltf_a.b10,
ltf_a.b11,
ltf_a.b12
order by qt_vezes desc,
ltf_a.b1 asc,
ltf_a.b2 asc,
ltf_a.b3 asc,
ltf_a.b4 asc,
ltf_a.b5 asc,
ltf_a.b6 asc,
ltf_a.b7 asc,
ltf_a.b8 asc,
ltf_a.b9 asc,
ltf_a.b10 asc,
ltf_a.b11 asc,
ltf_a.b12 asc;

DROP FUNCTION IF EXISTS lotofacil.fn_lotofacil_resultado_b1_a_b12( NUMERIC, NUMERIC );
CREATE FUNCTION lotofacil.fn_lotofacil_resultado_b1_a_b12(concurso_inicial NUMERIC, concurso_final NUMERIC)
RETURNS TABLE(b1_a_b12_id numeric, b1 numeric,
b2 numeric,
b3 numeric,
b4 numeric,
b5 numeric,
b6 numeric,
b7 numeric,
b8 numeric,
b9 numeric,
b10 numeric,
b11 numeric,
b12 numeric, qt_vezes NUMERIC)
LANGUAGE plpgsql
As $$
Declare
Begin
RETURN QUERY SELECT
ltf_a.b1_a_b12_id,
ltf_a.b1,
ltf_a.b2,
ltf_a.b3,
ltf_a.b4,
ltf_a.b5,
ltf_a.b6,
ltf_a.b7,
ltf_a.b8,
ltf_a.b9,
ltf_a.b10,
ltf_a.b11,
ltf_a.b12,
count(ltf_b.b1_a_b12_id)::numeric as qt_vezes
from lotofacil.lotofacil_id_b1_a_b12 ltf_a
left join lotofacil.lotofacil_resultado_coluna_b ltf_b
on ltf_a.b1_a_b12_id = ltf_b.b1_a_b12_id
AND concurso BETWEEN concurso_inicial AND concurso_final
group by ltf_a.b1_a_b12_id, ltf_a.b1,
ltf_a.b2,
ltf_a.b3,
ltf_a.b4,
ltf_a.b5,
ltf_a.b6,
ltf_a.b7,
ltf_a.b8,
ltf_a.b9,
ltf_a.b10,
ltf_a.b11,
ltf_a.b12
order by ltf_a.b1_a_b12_id, ltf_a.b1 asc,
ltf_a.b2 asc,
ltf_a.b3 asc,
ltf_a.b4 asc,
ltf_a.b5 asc,
ltf_a.b6 asc,
ltf_a.b7 asc,
ltf_a.b8 asc,
ltf_a.b9 asc,
ltf_a.b10 asc,
ltf_a.b11 asc,
ltf_a.b12 asc;
end;
$$;

Drop view if exists lotofacil.v_lotofacil_resultado_b1_a_b13;
create view lotofacil.v_lotofacil_resultado_b1_a_b13 as
Select
ltf_a.b1_a_b13_id,
ltf_a.b1,
ltf_a.b2,
ltf_a.b3,
ltf_a.b4,
ltf_a.b5,
ltf_a.b6,
ltf_a.b7,
ltf_a.b8,
ltf_a.b9,
ltf_a.b10,
ltf_a.b11,
ltf_a.b12,
ltf_a.b13,
count(ltf_b.b1_a_b13_id) as qt_vezes
from
lotofacil.lotofacil_id_b1_a_b13 ltf_a
left join lotofacil.lotofacil_resultado_coluna_b ltf_b
on ltf_a.b1_a_b13_id = ltf_b.b1_a_b13_id
group by ltf_a.b1_a_b13_id,
ltf_a.b1,
ltf_a.b2,
ltf_a.b3,
ltf_a.b4,
ltf_a.b5,
ltf_a.b6,
ltf_a.b7,
ltf_a.b8,
ltf_a.b9,
ltf_a.b10,
ltf_a.b11,
ltf_a.b12,
ltf_a.b13
order by qt_vezes desc,
ltf_a.b1 asc,
ltf_a.b2 asc,
ltf_a.b3 asc,
ltf_a.b4 asc,
ltf_a.b5 asc,
ltf_a.b6 asc,
ltf_a.b7 asc,
ltf_a.b8 asc,
ltf_a.b9 asc,
ltf_a.b10 asc,
ltf_a.b11 asc,
ltf_a.b12 asc,
ltf_a.b13 asc;

DROP FUNCTION IF EXISTS lotofacil.fn_lotofacil_resultado_b1_a_b13( NUMERIC, NUMERIC );
CREATE FUNCTION lotofacil.fn_lotofacil_resultado_b1_a_b13(concurso_inicial NUMERIC, concurso_final NUMERIC)
RETURNS TABLE(b1_a_b13_id numeric, b1 numeric,
b2 numeric,
b3 numeric,
b4 numeric,
b5 numeric,
b6 numeric,
b7 numeric,
b8 numeric,
b9 numeric,
b10 numeric,
b11 numeric,
b12 numeric,
b13 numeric, qt_vezes NUMERIC)
LANGUAGE plpgsql
As $$
Declare
Begin
RETURN QUERY SELECT
ltf_a.b1_a_b13_id,
ltf_a.b1,
ltf_a.b2,
ltf_a.b3,
ltf_a.b4,
ltf_a.b5,
ltf_a.b6,
ltf_a.b7,
ltf_a.b8,
ltf_a.b9,
ltf_a.b10,
ltf_a.b11,
ltf_a.b12,
ltf_a.b13,
count(ltf_b.b1_a_b13_id)::numeric as qt_vezes
from lotofacil.lotofacil_id_b1_a_b13 ltf_a
left join lotofacil.lotofacil_resultado_coluna_b ltf_b
on ltf_a.b1_a_b13_id = ltf_b.b1_a_b13_id
AND concurso BETWEEN concurso_inicial AND concurso_final
group by ltf_a.b1_a_b13_id, ltf_a.b1,
ltf_a.b2,
ltf_a.b3,
ltf_a.b4,
ltf_a.b5,
ltf_a.b6,
ltf_a.b7,
ltf_a.b8,
ltf_a.b9,
ltf_a.b10,
ltf_a.b11,
ltf_a.b12,
ltf_a.b13
order by ltf_a.b1_a_b13_id, ltf_a.b1 asc,
ltf_a.b2 asc,
ltf_a.b3 asc,
ltf_a.b4 asc,
ltf_a.b5 asc,
ltf_a.b6 asc,
ltf_a.b7 asc,
ltf_a.b8 asc,
ltf_a.b9 asc,
ltf_a.b10 asc,
ltf_a.b11 asc,
ltf_a.b12 asc,
ltf_a.b13 asc;
end;
$$;

Drop view if exists lotofacil.v_lotofacil_resultado_b1_a_b14;
create view lotofacil.v_lotofacil_resultado_b1_a_b14 as
Select
ltf_a.b1_a_b14_id,
ltf_a.b1,
ltf_a.b2,
ltf_a.b3,
ltf_a.b4,
ltf_a.b5,
ltf_a.b6,
ltf_a.b7,
ltf_a.b8,
ltf_a.b9,
ltf_a.b10,
ltf_a.b11,
ltf_a.b12,
ltf_a.b13,
ltf_a.b14,
count(ltf_b.b1_a_b14_id) as qt_vezes
from
lotofacil.lotofacil_id_b1_a_b14 ltf_a
left join lotofacil.lotofacil_resultado_coluna_b ltf_b
on ltf_a.b1_a_b14_id = ltf_b.b1_a_b14_id
group by ltf_a.b1_a_b14_id,
ltf_a.b1,
ltf_a.b2,
ltf_a.b3,
ltf_a.b4,
ltf_a.b5,
ltf_a.b6,
ltf_a.b7,
ltf_a.b8,
ltf_a.b9,
ltf_a.b10,
ltf_a.b11,
ltf_a.b12,
ltf_a.b13,
ltf_a.b14
order by qt_vezes desc,
ltf_a.b1 asc,
ltf_a.b2 asc,
ltf_a.b3 asc,
ltf_a.b4 asc,
ltf_a.b5 asc,
ltf_a.b6 asc,
ltf_a.b7 asc,
ltf_a.b8 asc,
ltf_a.b9 asc,
ltf_a.b10 asc,
ltf_a.b11 asc,
ltf_a.b12 asc,
ltf_a.b13 asc,
ltf_a.b14 asc;

DROP FUNCTION IF EXISTS lotofacil.fn_lotofacil_resultado_b1_a_b14( NUMERIC, NUMERIC );
CREATE FUNCTION lotofacil.fn_lotofacil_resultado_b1_a_b14(concurso_inicial NUMERIC, concurso_final NUMERIC)
RETURNS TABLE(b1_a_b14_id numeric, b1 numeric,
b2 numeric,
b3 numeric,
b4 numeric,
b5 numeric,
b6 numeric,
b7 numeric,
b8 numeric,
b9 numeric,
b10 numeric,
b11 numeric,
b12 numeric,
b13 numeric,
b14 numeric, qt_vezes NUMERIC)
LANGUAGE plpgsql
As $$
Declare
Begin
RETURN QUERY SELECT
ltf_a.b1_a_b14_id,
ltf_a.b1,
ltf_a.b2,
ltf_a.b3,
ltf_a.b4,
ltf_a.b5,
ltf_a.b6,
ltf_a.b7,
ltf_a.b8,
ltf_a.b9,
ltf_a.b10,
ltf_a.b11,
ltf_a.b12,
ltf_a.b13,
ltf_a.b14,
count(ltf_b.b1_a_b14_id)::numeric as qt_vezes
from lotofacil.lotofacil_id_b1_a_b14 ltf_a
left join lotofacil.lotofacil_resultado_coluna_b ltf_b
on ltf_a.b1_a_b14_id = ltf_b.b1_a_b14_id
AND concurso BETWEEN concurso_inicial AND concurso_final
group by ltf_a.b1_a_b14_id, ltf_a.b1,
ltf_a.b2,
ltf_a.b3,
ltf_a.b4,
ltf_a.b5,
ltf_a.b6,
ltf_a.b7,
ltf_a.b8,
ltf_a.b9,
ltf_a.b10,
ltf_a.b11,
ltf_a.b12,
ltf_a.b13,
ltf_a.b14
order by ltf_a.b1_a_b14_id, ltf_a.b1 asc,
ltf_a.b2 asc,
ltf_a.b3 asc,
ltf_a.b4 asc,
ltf_a.b5 asc,
ltf_a.b6 asc,
ltf_a.b7 asc,
ltf_a.b8 asc,
ltf_a.b9 asc,
ltf_a.b10 asc,
ltf_a.b11 asc,
ltf_a.b12 asc,
ltf_a.b13 asc,
ltf_a.b14 asc;
end;
$$;

Drop view if exists lotofacil.v_lotofacil_resultado_b1_a_b15;
create view lotofacil.v_lotofacil_resultado_b1_a_b15 as
Select
ltf_a.b1_a_b15_id,
ltf_a.b1,
ltf_a.b2,
ltf_a.b3,
ltf_a.b4,
ltf_a.b5,
ltf_a.b6,
ltf_a.b7,
ltf_a.b8,
ltf_a.b9,
ltf_a.b10,
ltf_a.b11,
ltf_a.b12,
ltf_a.b13,
ltf_a.b14,
ltf_a.b15,
count(ltf_b.b1_a_b15_id) as qt_vezes
from
lotofacil.lotofacil_id_b1_a_b15 ltf_a
left join lotofacil.lotofacil_resultado_coluna_b ltf_b
on ltf_a.b1_a_b15_id = ltf_b.b1_a_b15_id
group by ltf_a.b1_a_b15_id,
ltf_a.b1,
ltf_a.b2,
ltf_a.b3,
ltf_a.b4,
ltf_a.b5,
ltf_a.b6,
ltf_a.b7,
ltf_a.b8,
ltf_a.b9,
ltf_a.b10,
ltf_a.b11,
ltf_a.b12,
ltf_a.b13,
ltf_a.b14,
ltf_a.b15
order by qt_vezes desc,
ltf_a.b1 asc,
ltf_a.b2 asc,
ltf_a.b3 asc,
ltf_a.b4 asc,
ltf_a.b5 asc,
ltf_a.b6 asc,
ltf_a.b7 asc,
ltf_a.b8 asc,
ltf_a.b9 asc,
ltf_a.b10 asc,
ltf_a.b11 asc,
ltf_a.b12 asc,
ltf_a.b13 asc,
ltf_a.b14 asc,
ltf_a.b15 asc;

DROP FUNCTION IF EXISTS lotofacil.fn_lotofacil_resultado_b1_a_b15( NUMERIC, NUMERIC );
CREATE FUNCTION lotofacil.fn_lotofacil_resultado_b1_a_b15(concurso_inicial NUMERIC, concurso_final NUMERIC)
RETURNS TABLE(b1_a_b15_id numeric, b1 numeric,
b2 numeric,
b3 numeric,
b4 numeric,
b5 numeric,
b6 numeric,
b7 numeric,
b8 numeric,
b9 numeric,
b10 numeric,
b11 numeric,
b12 numeric,
b13 numeric,
b14 numeric,
b15 numeric, qt_vezes NUMERIC)
LANGUAGE plpgsql
As $$
Declare
Begin
RETURN QUERY SELECT
ltf_a.b1_a_b15_id,
ltf_a.b1,
ltf_a.b2,
ltf_a.b3,
ltf_a.b4,
ltf_a.b5,
ltf_a.b6,
ltf_a.b7,
ltf_a.b8,
ltf_a.b9,
ltf_a.b10,
ltf_a.b11,
ltf_a.b12,
ltf_a.b13,
ltf_a.b14,
ltf_a.b15,
count(ltf_b.b1_a_b15_id)::numeric as qt_vezes
from lotofacil.lotofacil_id_b1_a_b15 ltf_a
left join lotofacil.lotofacil_resultado_coluna_b ltf_b
on ltf_a.b1_a_b15_id = ltf_b.b1_a_b15_id
AND concurso BETWEEN concurso_inicial AND concurso_final
group by ltf_a.b1_a_b15_id, ltf_a.b1,
ltf_a.b2,
ltf_a.b3,
ltf_a.b4,
ltf_a.b5,
ltf_a.b6,
ltf_a.b7,
ltf_a.b8,
ltf_a.b9,
ltf_a.b10,
ltf_a.b11,
ltf_a.b12,
ltf_a.b13,
ltf_a.b14,
ltf_a.b15
order by ltf_a.b1_a_b15_id, ltf_a.b1 asc,
ltf_a.b2 asc,
ltf_a.b3 asc,
ltf_a.b4 asc,
ltf_a.b5 asc,
ltf_a.b6 asc,
ltf_a.b7 asc,
ltf_a.b8 asc,
ltf_a.b9 asc,
ltf_a.b10 asc,
ltf_a.b11 asc,
ltf_a.b12 asc,
ltf_a.b13 asc,
ltf_a.b14 asc,
ltf_a.b15 asc;
end;
$$;

Drop view if exists lotofacil.v_lotofacil_resultado_b2_a_b2;
create view lotofacil.v_lotofacil_resultado_b2_a_b2 as
Select
ltf_a.b2_a_b2_id,
ltf_a.b2,
count(ltf_b.b2_a_b2_id) as qt_vezes
from
lotofacil.lotofacil_id_b2_a_b2 ltf_a
left join lotofacil.lotofacil_resultado_coluna_b ltf_b
on ltf_a.b2_a_b2_id = ltf_b.b2_a_b2_id
group by ltf_a.b2_a_b2_id,
ltf_a.b2
order by qt_vezes desc,
ltf_a.b2 asc;

DROP FUNCTION IF EXISTS lotofacil.fn_lotofacil_resultado_b2_a_b2( NUMERIC, NUMERIC );
CREATE FUNCTION lotofacil.fn_lotofacil_resultado_b2_a_b2(concurso_inicial NUMERIC, concurso_final NUMERIC)
RETURNS TABLE(b2_a_b2_id numeric, b2 numeric, qt_vezes NUMERIC)
LANGUAGE plpgsql
As $$
Declare
Begin
RETURN QUERY SELECT
ltf_a.b2_a_b2_id,
ltf_a.b2,
count(ltf_b.b2_a_b2_id)::numeric as qt_vezes
from lotofacil.lotofacil_id_b2_a_b2 ltf_a
left join lotofacil.lotofacil_resultado_coluna_b ltf_b
on ltf_a.b2_a_b2_id = ltf_b.b2_a_b2_id
AND concurso BETWEEN concurso_inicial AND concurso_final
group by ltf_a.b2_a_b2_id, ltf_a.b2
order by ltf_a.b2_a_b2_id, ltf_a.b2 asc;
end;
$$;

Drop view if exists lotofacil.v_lotofacil_resultado_b2_a_b3;
create view lotofacil.v_lotofacil_resultado_b2_a_b3 as
Select
ltf_a.b2_a_b3_id,
ltf_a.b2,
ltf_a.b3,
count(ltf_b.b2_a_b3_id) as qt_vezes
from
lotofacil.lotofacil_id_b2_a_b3 ltf_a
left join lotofacil.lotofacil_resultado_coluna_b ltf_b
on ltf_a.b2_a_b3_id = ltf_b.b2_a_b3_id
group by ltf_a.b2_a_b3_id,
ltf_a.b2,
ltf_a.b3
order by qt_vezes desc,
ltf_a.b2 asc,
ltf_a.b3 asc;

DROP FUNCTION IF EXISTS lotofacil.fn_lotofacil_resultado_b2_a_b3( NUMERIC, NUMERIC );
CREATE FUNCTION lotofacil.fn_lotofacil_resultado_b2_a_b3(concurso_inicial NUMERIC, concurso_final NUMERIC)
RETURNS TABLE(b2_a_b3_id numeric, b2 numeric,
b3 numeric, qt_vezes NUMERIC)
LANGUAGE plpgsql
As $$
Declare
Begin
RETURN QUERY SELECT
ltf_a.b2_a_b3_id,
ltf_a.b2,
ltf_a.b3,
count(ltf_b.b2_a_b3_id)::numeric as qt_vezes
from lotofacil.lotofacil_id_b2_a_b3 ltf_a
left join lotofacil.lotofacil_resultado_coluna_b ltf_b
on ltf_a.b2_a_b3_id = ltf_b.b2_a_b3_id
AND concurso BETWEEN concurso_inicial AND concurso_final
group by ltf_a.b2_a_b3_id, ltf_a.b2,
ltf_a.b3
order by ltf_a.b2_a_b3_id, ltf_a.b2 asc,
ltf_a.b3 asc;
end;
$$;

Drop view if exists lotofacil.v_lotofacil_resultado_b2_a_b4;
create view lotofacil.v_lotofacil_resultado_b2_a_b4 as
Select
ltf_a.b2_a_b4_id,
ltf_a.b2,
ltf_a.b3,
ltf_a.b4,
count(ltf_b.b2_a_b4_id) as qt_vezes
from
lotofacil.lotofacil_id_b2_a_b4 ltf_a
left join lotofacil.lotofacil_resultado_coluna_b ltf_b
on ltf_a.b2_a_b4_id = ltf_b.b2_a_b4_id
group by ltf_a.b2_a_b4_id,
ltf_a.b2,
ltf_a.b3,
ltf_a.b4
order by qt_vezes desc,
ltf_a.b2 asc,
ltf_a.b3 asc,
ltf_a.b4 asc;

DROP FUNCTION IF EXISTS lotofacil.fn_lotofacil_resultado_b2_a_b4( NUMERIC, NUMERIC );
CREATE FUNCTION lotofacil.fn_lotofacil_resultado_b2_a_b4(concurso_inicial NUMERIC, concurso_final NUMERIC)
RETURNS TABLE(b2_a_b4_id numeric, b2 numeric,
b3 numeric,
b4 numeric, qt_vezes NUMERIC)
LANGUAGE plpgsql
As $$
Declare
Begin
RETURN QUERY SELECT
ltf_a.b2_a_b4_id,
ltf_a.b2,
ltf_a.b3,
ltf_a.b4,
count(ltf_b.b2_a_b4_id)::numeric as qt_vezes
from lotofacil.lotofacil_id_b2_a_b4 ltf_a
left join lotofacil.lotofacil_resultado_coluna_b ltf_b
on ltf_a.b2_a_b4_id = ltf_b.b2_a_b4_id
AND concurso BETWEEN concurso_inicial AND concurso_final
group by ltf_a.b2_a_b4_id, ltf_a.b2,
ltf_a.b3,
ltf_a.b4
order by ltf_a.b2_a_b4_id, ltf_a.b2 asc,
ltf_a.b3 asc,
ltf_a.b4 asc;
end;
$$;

Drop view if exists lotofacil.v_lotofacil_resultado_b2_a_b5;
create view lotofacil.v_lotofacil_resultado_b2_a_b5 as
Select
ltf_a.b2_a_b5_id,
ltf_a.b2,
ltf_a.b3,
ltf_a.b4,
ltf_a.b5,
count(ltf_b.b2_a_b5_id) as qt_vezes
from
lotofacil.lotofacil_id_b2_a_b5 ltf_a
left join lotofacil.lotofacil_resultado_coluna_b ltf_b
on ltf_a.b2_a_b5_id = ltf_b.b2_a_b5_id
group by ltf_a.b2_a_b5_id,
ltf_a.b2,
ltf_a.b3,
ltf_a.b4,
ltf_a.b5
order by qt_vezes desc,
ltf_a.b2 asc,
ltf_a.b3 asc,
ltf_a.b4 asc,
ltf_a.b5 asc;

DROP FUNCTION IF EXISTS lotofacil.fn_lotofacil_resultado_b2_a_b5( NUMERIC, NUMERIC );
CREATE FUNCTION lotofacil.fn_lotofacil_resultado_b2_a_b5(concurso_inicial NUMERIC, concurso_final NUMERIC)
RETURNS TABLE(b2_a_b5_id numeric, b2 numeric,
b3 numeric,
b4 numeric,
b5 numeric, qt_vezes NUMERIC)
LANGUAGE plpgsql
As $$
Declare
Begin
RETURN QUERY SELECT
ltf_a.b2_a_b5_id,
ltf_a.b2,
ltf_a.b3,
ltf_a.b4,
ltf_a.b5,
count(ltf_b.b2_a_b5_id)::numeric as qt_vezes
from lotofacil.lotofacil_id_b2_a_b5 ltf_a
left join lotofacil.lotofacil_resultado_coluna_b ltf_b
on ltf_a.b2_a_b5_id = ltf_b.b2_a_b5_id
AND concurso BETWEEN concurso_inicial AND concurso_final
group by ltf_a.b2_a_b5_id, ltf_a.b2,
ltf_a.b3,
ltf_a.b4,
ltf_a.b5
order by ltf_a.b2_a_b5_id, ltf_a.b2 asc,
ltf_a.b3 asc,
ltf_a.b4 asc,
ltf_a.b5 asc;
end;
$$;

Drop view if exists lotofacil.v_lotofacil_resultado_b2_a_b6;
create view lotofacil.v_lotofacil_resultado_b2_a_b6 as
Select
ltf_a.b2_a_b6_id,
ltf_a.b2,
ltf_a.b3,
ltf_a.b4,
ltf_a.b5,
ltf_a.b6,
count(ltf_b.b2_a_b6_id) as qt_vezes
from
lotofacil.lotofacil_id_b2_a_b6 ltf_a
left join lotofacil.lotofacil_resultado_coluna_b ltf_b
on ltf_a.b2_a_b6_id = ltf_b.b2_a_b6_id
group by ltf_a.b2_a_b6_id,
ltf_a.b2,
ltf_a.b3,
ltf_a.b4,
ltf_a.b5,
ltf_a.b6
order by qt_vezes desc,
ltf_a.b2 asc,
ltf_a.b3 asc,
ltf_a.b4 asc,
ltf_a.b5 asc,
ltf_a.b6 asc;

DROP FUNCTION IF EXISTS lotofacil.fn_lotofacil_resultado_b2_a_b6( NUMERIC, NUMERIC );
CREATE FUNCTION lotofacil.fn_lotofacil_resultado_b2_a_b6(concurso_inicial NUMERIC, concurso_final NUMERIC)
RETURNS TABLE(b2_a_b6_id numeric, b2 numeric,
b3 numeric,
b4 numeric,
b5 numeric,
b6 numeric, qt_vezes NUMERIC)
LANGUAGE plpgsql
As $$
Declare
Begin
RETURN QUERY SELECT
ltf_a.b2_a_b6_id,
ltf_a.b2,
ltf_a.b3,
ltf_a.b4,
ltf_a.b5,
ltf_a.b6,
count(ltf_b.b2_a_b6_id)::numeric as qt_vezes
from lotofacil.lotofacil_id_b2_a_b6 ltf_a
left join lotofacil.lotofacil_resultado_coluna_b ltf_b
on ltf_a.b2_a_b6_id = ltf_b.b2_a_b6_id
AND concurso BETWEEN concurso_inicial AND concurso_final
group by ltf_a.b2_a_b6_id, ltf_a.b2,
ltf_a.b3,
ltf_a.b4,
ltf_a.b5,
ltf_a.b6
order by ltf_a.b2_a_b6_id, ltf_a.b2 asc,
ltf_a.b3 asc,
ltf_a.b4 asc,
ltf_a.b5 asc,
ltf_a.b6 asc;
end;
$$;

Drop view if exists lotofacil.v_lotofacil_resultado_b2_a_b7;
create view lotofacil.v_lotofacil_resultado_b2_a_b7 as
Select
ltf_a.b2_a_b7_id,
ltf_a.b2,
ltf_a.b3,
ltf_a.b4,
ltf_a.b5,
ltf_a.b6,
ltf_a.b7,
count(ltf_b.b2_a_b7_id) as qt_vezes
from
lotofacil.lotofacil_id_b2_a_b7 ltf_a
left join lotofacil.lotofacil_resultado_coluna_b ltf_b
on ltf_a.b2_a_b7_id = ltf_b.b2_a_b7_id
group by ltf_a.b2_a_b7_id,
ltf_a.b2,
ltf_a.b3,
ltf_a.b4,
ltf_a.b5,
ltf_a.b6,
ltf_a.b7
order by qt_vezes desc,
ltf_a.b2 asc,
ltf_a.b3 asc,
ltf_a.b4 asc,
ltf_a.b5 asc,
ltf_a.b6 asc,
ltf_a.b7 asc;

DROP FUNCTION IF EXISTS lotofacil.fn_lotofacil_resultado_b2_a_b7( NUMERIC, NUMERIC );
CREATE FUNCTION lotofacil.fn_lotofacil_resultado_b2_a_b7(concurso_inicial NUMERIC, concurso_final NUMERIC)
RETURNS TABLE(b2_a_b7_id numeric, b2 numeric,
b3 numeric,
b4 numeric,
b5 numeric,
b6 numeric,
b7 numeric, qt_vezes NUMERIC)
LANGUAGE plpgsql
As $$
Declare
Begin
RETURN QUERY SELECT
ltf_a.b2_a_b7_id,
ltf_a.b2,
ltf_a.b3,
ltf_a.b4,
ltf_a.b5,
ltf_a.b6,
ltf_a.b7,
count(ltf_b.b2_a_b7_id)::numeric as qt_vezes
from lotofacil.lotofacil_id_b2_a_b7 ltf_a
left join lotofacil.lotofacil_resultado_coluna_b ltf_b
on ltf_a.b2_a_b7_id = ltf_b.b2_a_b7_id
AND concurso BETWEEN concurso_inicial AND concurso_final
group by ltf_a.b2_a_b7_id, ltf_a.b2,
ltf_a.b3,
ltf_a.b4,
ltf_a.b5,
ltf_a.b6,
ltf_a.b7
order by ltf_a.b2_a_b7_id, ltf_a.b2 asc,
ltf_a.b3 asc,
ltf_a.b4 asc,
ltf_a.b5 asc,
ltf_a.b6 asc,
ltf_a.b7 asc;
end;
$$;

Drop view if exists lotofacil.v_lotofacil_resultado_b2_a_b8;
create view lotofacil.v_lotofacil_resultado_b2_a_b8 as
Select
ltf_a.b2_a_b8_id,
ltf_a.b2,
ltf_a.b3,
ltf_a.b4,
ltf_a.b5,
ltf_a.b6,
ltf_a.b7,
ltf_a.b8,
count(ltf_b.b2_a_b8_id) as qt_vezes
from
lotofacil.lotofacil_id_b2_a_b8 ltf_a
left join lotofacil.lotofacil_resultado_coluna_b ltf_b
on ltf_a.b2_a_b8_id = ltf_b.b2_a_b8_id
group by ltf_a.b2_a_b8_id,
ltf_a.b2,
ltf_a.b3,
ltf_a.b4,
ltf_a.b5,
ltf_a.b6,
ltf_a.b7,
ltf_a.b8
order by qt_vezes desc,
ltf_a.b2 asc,
ltf_a.b3 asc,
ltf_a.b4 asc,
ltf_a.b5 asc,
ltf_a.b6 asc,
ltf_a.b7 asc,
ltf_a.b8 asc;

DROP FUNCTION IF EXISTS lotofacil.fn_lotofacil_resultado_b2_a_b8( NUMERIC, NUMERIC );
CREATE FUNCTION lotofacil.fn_lotofacil_resultado_b2_a_b8(concurso_inicial NUMERIC, concurso_final NUMERIC)
RETURNS TABLE(b2_a_b8_id numeric, b2 numeric,
b3 numeric,
b4 numeric,
b5 numeric,
b6 numeric,
b7 numeric,
b8 numeric, qt_vezes NUMERIC)
LANGUAGE plpgsql
As $$
Declare
Begin
RETURN QUERY SELECT
ltf_a.b2_a_b8_id,
ltf_a.b2,
ltf_a.b3,
ltf_a.b4,
ltf_a.b5,
ltf_a.b6,
ltf_a.b7,
ltf_a.b8,
count(ltf_b.b2_a_b8_id)::numeric as qt_vezes
from lotofacil.lotofacil_id_b2_a_b8 ltf_a
left join lotofacil.lotofacil_resultado_coluna_b ltf_b
on ltf_a.b2_a_b8_id = ltf_b.b2_a_b8_id
AND concurso BETWEEN concurso_inicial AND concurso_final
group by ltf_a.b2_a_b8_id, ltf_a.b2,
ltf_a.b3,
ltf_a.b4,
ltf_a.b5,
ltf_a.b6,
ltf_a.b7,
ltf_a.b8
order by ltf_a.b2_a_b8_id, ltf_a.b2 asc,
ltf_a.b3 asc,
ltf_a.b4 asc,
ltf_a.b5 asc,
ltf_a.b6 asc,
ltf_a.b7 asc,
ltf_a.b8 asc;
end;
$$;

Drop view if exists lotofacil.v_lotofacil_resultado_b2_a_b9;
create view lotofacil.v_lotofacil_resultado_b2_a_b9 as
Select
ltf_a.b2_a_b9_id,
ltf_a.b2,
ltf_a.b3,
ltf_a.b4,
ltf_a.b5,
ltf_a.b6,
ltf_a.b7,
ltf_a.b8,
ltf_a.b9,
count(ltf_b.b2_a_b9_id) as qt_vezes
from
lotofacil.lotofacil_id_b2_a_b9 ltf_a
left join lotofacil.lotofacil_resultado_coluna_b ltf_b
on ltf_a.b2_a_b9_id = ltf_b.b2_a_b9_id
group by ltf_a.b2_a_b9_id,
ltf_a.b2,
ltf_a.b3,
ltf_a.b4,
ltf_a.b5,
ltf_a.b6,
ltf_a.b7,
ltf_a.b8,
ltf_a.b9
order by qt_vezes desc,
ltf_a.b2 asc,
ltf_a.b3 asc,
ltf_a.b4 asc,
ltf_a.b5 asc,
ltf_a.b6 asc,
ltf_a.b7 asc,
ltf_a.b8 asc,
ltf_a.b9 asc;

DROP FUNCTION IF EXISTS lotofacil.fn_lotofacil_resultado_b2_a_b9( NUMERIC, NUMERIC );
CREATE FUNCTION lotofacil.fn_lotofacil_resultado_b2_a_b9(concurso_inicial NUMERIC, concurso_final NUMERIC)
RETURNS TABLE(b2_a_b9_id numeric, b2 numeric,
b3 numeric,
b4 numeric,
b5 numeric,
b6 numeric,
b7 numeric,
b8 numeric,
b9 numeric, qt_vezes NUMERIC)
LANGUAGE plpgsql
As $$
Declare
Begin
RETURN QUERY SELECT
ltf_a.b2_a_b9_id,
ltf_a.b2,
ltf_a.b3,
ltf_a.b4,
ltf_a.b5,
ltf_a.b6,
ltf_a.b7,
ltf_a.b8,
ltf_a.b9,
count(ltf_b.b2_a_b9_id)::numeric as qt_vezes
from lotofacil.lotofacil_id_b2_a_b9 ltf_a
left join lotofacil.lotofacil_resultado_coluna_b ltf_b
on ltf_a.b2_a_b9_id = ltf_b.b2_a_b9_id
AND concurso BETWEEN concurso_inicial AND concurso_final
group by ltf_a.b2_a_b9_id, ltf_a.b2,
ltf_a.b3,
ltf_a.b4,
ltf_a.b5,
ltf_a.b6,
ltf_a.b7,
ltf_a.b8,
ltf_a.b9
order by ltf_a.b2_a_b9_id, ltf_a.b2 asc,
ltf_a.b3 asc,
ltf_a.b4 asc,
ltf_a.b5 asc,
ltf_a.b6 asc,
ltf_a.b7 asc,
ltf_a.b8 asc,
ltf_a.b9 asc;
end;
$$;

Drop view if exists lotofacil.v_lotofacil_resultado_b2_a_b10;
create view lotofacil.v_lotofacil_resultado_b2_a_b10 as
Select
ltf_a.b2_a_b10_id,
ltf_a.b2,
ltf_a.b3,
ltf_a.b4,
ltf_a.b5,
ltf_a.b6,
ltf_a.b7,
ltf_a.b8,
ltf_a.b9,
ltf_a.b10,
count(ltf_b.b2_a_b10_id) as qt_vezes
from
lotofacil.lotofacil_id_b2_a_b10 ltf_a
left join lotofacil.lotofacil_resultado_coluna_b ltf_b
on ltf_a.b2_a_b10_id = ltf_b.b2_a_b10_id
group by ltf_a.b2_a_b10_id,
ltf_a.b2,
ltf_a.b3,
ltf_a.b4,
ltf_a.b5,
ltf_a.b6,
ltf_a.b7,
ltf_a.b8,
ltf_a.b9,
ltf_a.b10
order by qt_vezes desc,
ltf_a.b2 asc,
ltf_a.b3 asc,
ltf_a.b4 asc,
ltf_a.b5 asc,
ltf_a.b6 asc,
ltf_a.b7 asc,
ltf_a.b8 asc,
ltf_a.b9 asc,
ltf_a.b10 asc;

DROP FUNCTION IF EXISTS lotofacil.fn_lotofacil_resultado_b2_a_b10( NUMERIC, NUMERIC );
CREATE FUNCTION lotofacil.fn_lotofacil_resultado_b2_a_b10(concurso_inicial NUMERIC, concurso_final NUMERIC)
RETURNS TABLE(b2_a_b10_id numeric, b2 numeric,
b3 numeric,
b4 numeric,
b5 numeric,
b6 numeric,
b7 numeric,
b8 numeric,
b9 numeric,
b10 numeric, qt_vezes NUMERIC)
LANGUAGE plpgsql
As $$
Declare
Begin
RETURN QUERY SELECT
ltf_a.b2_a_b10_id,
ltf_a.b2,
ltf_a.b3,
ltf_a.b4,
ltf_a.b5,
ltf_a.b6,
ltf_a.b7,
ltf_a.b8,
ltf_a.b9,
ltf_a.b10,
count(ltf_b.b2_a_b10_id)::numeric as qt_vezes
from lotofacil.lotofacil_id_b2_a_b10 ltf_a
left join lotofacil.lotofacil_resultado_coluna_b ltf_b
on ltf_a.b2_a_b10_id = ltf_b.b2_a_b10_id
AND concurso BETWEEN concurso_inicial AND concurso_final
group by ltf_a.b2_a_b10_id, ltf_a.b2,
ltf_a.b3,
ltf_a.b4,
ltf_a.b5,
ltf_a.b6,
ltf_a.b7,
ltf_a.b8,
ltf_a.b9,
ltf_a.b10
order by ltf_a.b2_a_b10_id, ltf_a.b2 asc,
ltf_a.b3 asc,
ltf_a.b4 asc,
ltf_a.b5 asc,
ltf_a.b6 asc,
ltf_a.b7 asc,
ltf_a.b8 asc,
ltf_a.b9 asc,
ltf_a.b10 asc;
end;
$$;

Drop view if exists lotofacil.v_lotofacil_resultado_b2_a_b11;
create view lotofacil.v_lotofacil_resultado_b2_a_b11 as
Select
ltf_a.b2_a_b11_id,
ltf_a.b2,
ltf_a.b3,
ltf_a.b4,
ltf_a.b5,
ltf_a.b6,
ltf_a.b7,
ltf_a.b8,
ltf_a.b9,
ltf_a.b10,
ltf_a.b11,
count(ltf_b.b2_a_b11_id) as qt_vezes
from
lotofacil.lotofacil_id_b2_a_b11 ltf_a
left join lotofacil.lotofacil_resultado_coluna_b ltf_b
on ltf_a.b2_a_b11_id = ltf_b.b2_a_b11_id
group by ltf_a.b2_a_b11_id,
ltf_a.b2,
ltf_a.b3,
ltf_a.b4,
ltf_a.b5,
ltf_a.b6,
ltf_a.b7,
ltf_a.b8,
ltf_a.b9,
ltf_a.b10,
ltf_a.b11
order by qt_vezes desc,
ltf_a.b2 asc,
ltf_a.b3 asc,
ltf_a.b4 asc,
ltf_a.b5 asc,
ltf_a.b6 asc,
ltf_a.b7 asc,
ltf_a.b8 asc,
ltf_a.b9 asc,
ltf_a.b10 asc,
ltf_a.b11 asc;

DROP FUNCTION IF EXISTS lotofacil.fn_lotofacil_resultado_b2_a_b11( NUMERIC, NUMERIC );
CREATE FUNCTION lotofacil.fn_lotofacil_resultado_b2_a_b11(concurso_inicial NUMERIC, concurso_final NUMERIC)
RETURNS TABLE(b2_a_b11_id numeric, b2 numeric,
b3 numeric,
b4 numeric,
b5 numeric,
b6 numeric,
b7 numeric,
b8 numeric,
b9 numeric,
b10 numeric,
b11 numeric, qt_vezes NUMERIC)
LANGUAGE plpgsql
As $$
Declare
Begin
RETURN QUERY SELECT
ltf_a.b2_a_b11_id,
ltf_a.b2,
ltf_a.b3,
ltf_a.b4,
ltf_a.b5,
ltf_a.b6,
ltf_a.b7,
ltf_a.b8,
ltf_a.b9,
ltf_a.b10,
ltf_a.b11,
count(ltf_b.b2_a_b11_id)::numeric as qt_vezes
from lotofacil.lotofacil_id_b2_a_b11 ltf_a
left join lotofacil.lotofacil_resultado_coluna_b ltf_b
on ltf_a.b2_a_b11_id = ltf_b.b2_a_b11_id
AND concurso BETWEEN concurso_inicial AND concurso_final
group by ltf_a.b2_a_b11_id, ltf_a.b2,
ltf_a.b3,
ltf_a.b4,
ltf_a.b5,
ltf_a.b6,
ltf_a.b7,
ltf_a.b8,
ltf_a.b9,
ltf_a.b10,
ltf_a.b11
order by ltf_a.b2_a_b11_id, ltf_a.b2 asc,
ltf_a.b3 asc,
ltf_a.b4 asc,
ltf_a.b5 asc,
ltf_a.b6 asc,
ltf_a.b7 asc,
ltf_a.b8 asc,
ltf_a.b9 asc,
ltf_a.b10 asc,
ltf_a.b11 asc;
end;
$$;

Drop view if exists lotofacil.v_lotofacil_resultado_b2_a_b12;
create view lotofacil.v_lotofacil_resultado_b2_a_b12 as
Select
ltf_a.b2_a_b12_id,
ltf_a.b2,
ltf_a.b3,
ltf_a.b4,
ltf_a.b5,
ltf_a.b6,
ltf_a.b7,
ltf_a.b8,
ltf_a.b9,
ltf_a.b10,
ltf_a.b11,
ltf_a.b12,
count(ltf_b.b2_a_b12_id) as qt_vezes
from
lotofacil.lotofacil_id_b2_a_b12 ltf_a
left join lotofacil.lotofacil_resultado_coluna_b ltf_b
on ltf_a.b2_a_b12_id = ltf_b.b2_a_b12_id
group by ltf_a.b2_a_b12_id,
ltf_a.b2,
ltf_a.b3,
ltf_a.b4,
ltf_a.b5,
ltf_a.b6,
ltf_a.b7,
ltf_a.b8,
ltf_a.b9,
ltf_a.b10,
ltf_a.b11,
ltf_a.b12
order by qt_vezes desc,
ltf_a.b2 asc,
ltf_a.b3 asc,
ltf_a.b4 asc,
ltf_a.b5 asc,
ltf_a.b6 asc,
ltf_a.b7 asc,
ltf_a.b8 asc,
ltf_a.b9 asc,
ltf_a.b10 asc,
ltf_a.b11 asc,
ltf_a.b12 asc;

DROP FUNCTION IF EXISTS lotofacil.fn_lotofacil_resultado_b2_a_b12( NUMERIC, NUMERIC );
CREATE FUNCTION lotofacil.fn_lotofacil_resultado_b2_a_b12(concurso_inicial NUMERIC, concurso_final NUMERIC)
RETURNS TABLE(b2_a_b12_id numeric, b2 numeric,
b3 numeric,
b4 numeric,
b5 numeric,
b6 numeric,
b7 numeric,
b8 numeric,
b9 numeric,
b10 numeric,
b11 numeric,
b12 numeric, qt_vezes NUMERIC)
LANGUAGE plpgsql
As $$
Declare
Begin
RETURN QUERY SELECT
ltf_a.b2_a_b12_id,
ltf_a.b2,
ltf_a.b3,
ltf_a.b4,
ltf_a.b5,
ltf_a.b6,
ltf_a.b7,
ltf_a.b8,
ltf_a.b9,
ltf_a.b10,
ltf_a.b11,
ltf_a.b12,
count(ltf_b.b2_a_b12_id)::numeric as qt_vezes
from lotofacil.lotofacil_id_b2_a_b12 ltf_a
left join lotofacil.lotofacil_resultado_coluna_b ltf_b
on ltf_a.b2_a_b12_id = ltf_b.b2_a_b12_id
AND concurso BETWEEN concurso_inicial AND concurso_final
group by ltf_a.b2_a_b12_id, ltf_a.b2,
ltf_a.b3,
ltf_a.b4,
ltf_a.b5,
ltf_a.b6,
ltf_a.b7,
ltf_a.b8,
ltf_a.b9,
ltf_a.b10,
ltf_a.b11,
ltf_a.b12
order by ltf_a.b2_a_b12_id, ltf_a.b2 asc,
ltf_a.b3 asc,
ltf_a.b4 asc,
ltf_a.b5 asc,
ltf_a.b6 asc,
ltf_a.b7 asc,
ltf_a.b8 asc,
ltf_a.b9 asc,
ltf_a.b10 asc,
ltf_a.b11 asc,
ltf_a.b12 asc;
end;
$$;

Drop view if exists lotofacil.v_lotofacil_resultado_b2_a_b13;
create view lotofacil.v_lotofacil_resultado_b2_a_b13 as
Select
ltf_a.b2_a_b13_id,
ltf_a.b2,
ltf_a.b3,
ltf_a.b4,
ltf_a.b5,
ltf_a.b6,
ltf_a.b7,
ltf_a.b8,
ltf_a.b9,
ltf_a.b10,
ltf_a.b11,
ltf_a.b12,
ltf_a.b13,
count(ltf_b.b2_a_b13_id) as qt_vezes
from
lotofacil.lotofacil_id_b2_a_b13 ltf_a
left join lotofacil.lotofacil_resultado_coluna_b ltf_b
on ltf_a.b2_a_b13_id = ltf_b.b2_a_b13_id
group by ltf_a.b2_a_b13_id,
ltf_a.b2,
ltf_a.b3,
ltf_a.b4,
ltf_a.b5,
ltf_a.b6,
ltf_a.b7,
ltf_a.b8,
ltf_a.b9,
ltf_a.b10,
ltf_a.b11,
ltf_a.b12,
ltf_a.b13
order by qt_vezes desc,
ltf_a.b2 asc,
ltf_a.b3 asc,
ltf_a.b4 asc,
ltf_a.b5 asc,
ltf_a.b6 asc,
ltf_a.b7 asc,
ltf_a.b8 asc,
ltf_a.b9 asc,
ltf_a.b10 asc,
ltf_a.b11 asc,
ltf_a.b12 asc,
ltf_a.b13 asc;

DROP FUNCTION IF EXISTS lotofacil.fn_lotofacil_resultado_b2_a_b13( NUMERIC, NUMERIC );
CREATE FUNCTION lotofacil.fn_lotofacil_resultado_b2_a_b13(concurso_inicial NUMERIC, concurso_final NUMERIC)
RETURNS TABLE(b2_a_b13_id numeric, b2 numeric,
b3 numeric,
b4 numeric,
b5 numeric,
b6 numeric,
b7 numeric,
b8 numeric,
b9 numeric,
b10 numeric,
b11 numeric,
b12 numeric,
b13 numeric, qt_vezes NUMERIC)
LANGUAGE plpgsql
As $$
Declare
Begin
RETURN QUERY SELECT
ltf_a.b2_a_b13_id,
ltf_a.b2,
ltf_a.b3,
ltf_a.b4,
ltf_a.b5,
ltf_a.b6,
ltf_a.b7,
ltf_a.b8,
ltf_a.b9,
ltf_a.b10,
ltf_a.b11,
ltf_a.b12,
ltf_a.b13,
count(ltf_b.b2_a_b13_id)::numeric as qt_vezes
from lotofacil.lotofacil_id_b2_a_b13 ltf_a
left join lotofacil.lotofacil_resultado_coluna_b ltf_b
on ltf_a.b2_a_b13_id = ltf_b.b2_a_b13_id
AND concurso BETWEEN concurso_inicial AND concurso_final
group by ltf_a.b2_a_b13_id, ltf_a.b2,
ltf_a.b3,
ltf_a.b4,
ltf_a.b5,
ltf_a.b6,
ltf_a.b7,
ltf_a.b8,
ltf_a.b9,
ltf_a.b10,
ltf_a.b11,
ltf_a.b12,
ltf_a.b13
order by ltf_a.b2_a_b13_id, ltf_a.b2 asc,
ltf_a.b3 asc,
ltf_a.b4 asc,
ltf_a.b5 asc,
ltf_a.b6 asc,
ltf_a.b7 asc,
ltf_a.b8 asc,
ltf_a.b9 asc,
ltf_a.b10 asc,
ltf_a.b11 asc,
ltf_a.b12 asc,
ltf_a.b13 asc;
end;
$$;

Drop view if exists lotofacil.v_lotofacil_resultado_b2_a_b14;
create view lotofacil.v_lotofacil_resultado_b2_a_b14 as
Select
ltf_a.b2_a_b14_id,
ltf_a.b2,
ltf_a.b3,
ltf_a.b4,
ltf_a.b5,
ltf_a.b6,
ltf_a.b7,
ltf_a.b8,
ltf_a.b9,
ltf_a.b10,
ltf_a.b11,
ltf_a.b12,
ltf_a.b13,
ltf_a.b14,
count(ltf_b.b2_a_b14_id) as qt_vezes
from
lotofacil.lotofacil_id_b2_a_b14 ltf_a
left join lotofacil.lotofacil_resultado_coluna_b ltf_b
on ltf_a.b2_a_b14_id = ltf_b.b2_a_b14_id
group by ltf_a.b2_a_b14_id,
ltf_a.b2,
ltf_a.b3,
ltf_a.b4,
ltf_a.b5,
ltf_a.b6,
ltf_a.b7,
ltf_a.b8,
ltf_a.b9,
ltf_a.b10,
ltf_a.b11,
ltf_a.b12,
ltf_a.b13,
ltf_a.b14
order by qt_vezes desc,
ltf_a.b2 asc,
ltf_a.b3 asc,
ltf_a.b4 asc,
ltf_a.b5 asc,
ltf_a.b6 asc,
ltf_a.b7 asc,
ltf_a.b8 asc,
ltf_a.b9 asc,
ltf_a.b10 asc,
ltf_a.b11 asc,
ltf_a.b12 asc,
ltf_a.b13 asc,
ltf_a.b14 asc;

DROP FUNCTION IF EXISTS lotofacil.fn_lotofacil_resultado_b2_a_b14( NUMERIC, NUMERIC );
CREATE FUNCTION lotofacil.fn_lotofacil_resultado_b2_a_b14(concurso_inicial NUMERIC, concurso_final NUMERIC)
RETURNS TABLE(b2_a_b14_id numeric, b2 numeric,
b3 numeric,
b4 numeric,
b5 numeric,
b6 numeric,
b7 numeric,
b8 numeric,
b9 numeric,
b10 numeric,
b11 numeric,
b12 numeric,
b13 numeric,
b14 numeric, qt_vezes NUMERIC)
LANGUAGE plpgsql
As $$
Declare
Begin
RETURN QUERY SELECT
ltf_a.b2_a_b14_id,
ltf_a.b2,
ltf_a.b3,
ltf_a.b4,
ltf_a.b5,
ltf_a.b6,
ltf_a.b7,
ltf_a.b8,
ltf_a.b9,
ltf_a.b10,
ltf_a.b11,
ltf_a.b12,
ltf_a.b13,
ltf_a.b14,
count(ltf_b.b2_a_b14_id)::numeric as qt_vezes
from lotofacil.lotofacil_id_b2_a_b14 ltf_a
left join lotofacil.lotofacil_resultado_coluna_b ltf_b
on ltf_a.b2_a_b14_id = ltf_b.b2_a_b14_id
AND concurso BETWEEN concurso_inicial AND concurso_final
group by ltf_a.b2_a_b14_id, ltf_a.b2,
ltf_a.b3,
ltf_a.b4,
ltf_a.b5,
ltf_a.b6,
ltf_a.b7,
ltf_a.b8,
ltf_a.b9,
ltf_a.b10,
ltf_a.b11,
ltf_a.b12,
ltf_a.b13,
ltf_a.b14
order by ltf_a.b2_a_b14_id, ltf_a.b2 asc,
ltf_a.b3 asc,
ltf_a.b4 asc,
ltf_a.b5 asc,
ltf_a.b6 asc,
ltf_a.b7 asc,
ltf_a.b8 asc,
ltf_a.b9 asc,
ltf_a.b10 asc,
ltf_a.b11 asc,
ltf_a.b12 asc,
ltf_a.b13 asc,
ltf_a.b14 asc;
end;
$$;

Drop view if exists lotofacil.v_lotofacil_resultado_b2_a_b15;
create view lotofacil.v_lotofacil_resultado_b2_a_b15 as
Select
ltf_a.b2_a_b15_id,
ltf_a.b2,
ltf_a.b3,
ltf_a.b4,
ltf_a.b5,
ltf_a.b6,
ltf_a.b7,
ltf_a.b8,
ltf_a.b9,
ltf_a.b10,
ltf_a.b11,
ltf_a.b12,
ltf_a.b13,
ltf_a.b14,
ltf_a.b15,
count(ltf_b.b2_a_b15_id) as qt_vezes
from
lotofacil.lotofacil_id_b2_a_b15 ltf_a
left join lotofacil.lotofacil_resultado_coluna_b ltf_b
on ltf_a.b2_a_b15_id = ltf_b.b2_a_b15_id
group by ltf_a.b2_a_b15_id,
ltf_a.b2,
ltf_a.b3,
ltf_a.b4,
ltf_a.b5,
ltf_a.b6,
ltf_a.b7,
ltf_a.b8,
ltf_a.b9,
ltf_a.b10,
ltf_a.b11,
ltf_a.b12,
ltf_a.b13,
ltf_a.b14,
ltf_a.b15
order by qt_vezes desc,
ltf_a.b2 asc,
ltf_a.b3 asc,
ltf_a.b4 asc,
ltf_a.b5 asc,
ltf_a.b6 asc,
ltf_a.b7 asc,
ltf_a.b8 asc,
ltf_a.b9 asc,
ltf_a.b10 asc,
ltf_a.b11 asc,
ltf_a.b12 asc,
ltf_a.b13 asc,
ltf_a.b14 asc,
ltf_a.b15 asc;

DROP FUNCTION IF EXISTS lotofacil.fn_lotofacil_resultado_b2_a_b15( NUMERIC, NUMERIC );
CREATE FUNCTION lotofacil.fn_lotofacil_resultado_b2_a_b15(concurso_inicial NUMERIC, concurso_final NUMERIC)
RETURNS TABLE(b2_a_b15_id numeric, b2 numeric,
b3 numeric,
b4 numeric,
b5 numeric,
b6 numeric,
b7 numeric,
b8 numeric,
b9 numeric,
b10 numeric,
b11 numeric,
b12 numeric,
b13 numeric,
b14 numeric,
b15 numeric, qt_vezes NUMERIC)
LANGUAGE plpgsql
As $$
Declare
Begin
RETURN QUERY SELECT
ltf_a.b2_a_b15_id,
ltf_a.b2,
ltf_a.b3,
ltf_a.b4,
ltf_a.b5,
ltf_a.b6,
ltf_a.b7,
ltf_a.b8,
ltf_a.b9,
ltf_a.b10,
ltf_a.b11,
ltf_a.b12,
ltf_a.b13,
ltf_a.b14,
ltf_a.b15,
count(ltf_b.b2_a_b15_id)::numeric as qt_vezes
from lotofacil.lotofacil_id_b2_a_b15 ltf_a
left join lotofacil.lotofacil_resultado_coluna_b ltf_b
on ltf_a.b2_a_b15_id = ltf_b.b2_a_b15_id
AND concurso BETWEEN concurso_inicial AND concurso_final
group by ltf_a.b2_a_b15_id, ltf_a.b2,
ltf_a.b3,
ltf_a.b4,
ltf_a.b5,
ltf_a.b6,
ltf_a.b7,
ltf_a.b8,
ltf_a.b9,
ltf_a.b10,
ltf_a.b11,
ltf_a.b12,
ltf_a.b13,
ltf_a.b14,
ltf_a.b15
order by ltf_a.b2_a_b15_id, ltf_a.b2 asc,
ltf_a.b3 asc,
ltf_a.b4 asc,
ltf_a.b5 asc,
ltf_a.b6 asc,
ltf_a.b7 asc,
ltf_a.b8 asc,
ltf_a.b9 asc,
ltf_a.b10 asc,
ltf_a.b11 asc,
ltf_a.b12 asc,
ltf_a.b13 asc,
ltf_a.b14 asc,
ltf_a.b15 asc;
end;
$$;

Drop view if exists lotofacil.v_lotofacil_resultado_b3_a_b3;
create view lotofacil.v_lotofacil_resultado_b3_a_b3 as
Select
ltf_a.b3_a_b3_id,
ltf_a.b3,
count(ltf_b.b3_a_b3_id) as qt_vezes
from
lotofacil.lotofacil_id_b3_a_b3 ltf_a
left join lotofacil.lotofacil_resultado_coluna_b ltf_b
on ltf_a.b3_a_b3_id = ltf_b.b3_a_b3_id
group by ltf_a.b3_a_b3_id,
ltf_a.b3
order by qt_vezes desc,
ltf_a.b3 asc;

DROP FUNCTION IF EXISTS lotofacil.fn_lotofacil_resultado_b3_a_b3( NUMERIC, NUMERIC );
CREATE FUNCTION lotofacil.fn_lotofacil_resultado_b3_a_b3(concurso_inicial NUMERIC, concurso_final NUMERIC)
RETURNS TABLE(b3_a_b3_id numeric, b3 numeric, qt_vezes NUMERIC)
LANGUAGE plpgsql
As $$
Declare
Begin
RETURN QUERY SELECT
ltf_a.b3_a_b3_id,
ltf_a.b3,
count(ltf_b.b3_a_b3_id)::numeric as qt_vezes
from lotofacil.lotofacil_id_b3_a_b3 ltf_a
left join lotofacil.lotofacil_resultado_coluna_b ltf_b
on ltf_a.b3_a_b3_id = ltf_b.b3_a_b3_id
AND concurso BETWEEN concurso_inicial AND concurso_final
group by ltf_a.b3_a_b3_id, ltf_a.b3
order by ltf_a.b3_a_b3_id, ltf_a.b3 asc;
end;
$$;

Drop view if exists lotofacil.v_lotofacil_resultado_b3_a_b4;
create view lotofacil.v_lotofacil_resultado_b3_a_b4 as
Select
ltf_a.b3_a_b4_id,
ltf_a.b3,
ltf_a.b4,
count(ltf_b.b3_a_b4_id) as qt_vezes
from
lotofacil.lotofacil_id_b3_a_b4 ltf_a
left join lotofacil.lotofacil_resultado_coluna_b ltf_b
on ltf_a.b3_a_b4_id = ltf_b.b3_a_b4_id
group by ltf_a.b3_a_b4_id,
ltf_a.b3,
ltf_a.b4
order by qt_vezes desc,
ltf_a.b3 asc,
ltf_a.b4 asc;

DROP FUNCTION IF EXISTS lotofacil.fn_lotofacil_resultado_b3_a_b4( NUMERIC, NUMERIC );
CREATE FUNCTION lotofacil.fn_lotofacil_resultado_b3_a_b4(concurso_inicial NUMERIC, concurso_final NUMERIC)
RETURNS TABLE(b3_a_b4_id numeric, b3 numeric,
b4 numeric, qt_vezes NUMERIC)
LANGUAGE plpgsql
As $$
Declare
Begin
RETURN QUERY SELECT
ltf_a.b3_a_b4_id,
ltf_a.b3,
ltf_a.b4,
count(ltf_b.b3_a_b4_id)::numeric as qt_vezes
from lotofacil.lotofacil_id_b3_a_b4 ltf_a
left join lotofacil.lotofacil_resultado_coluna_b ltf_b
on ltf_a.b3_a_b4_id = ltf_b.b3_a_b4_id
AND concurso BETWEEN concurso_inicial AND concurso_final
group by ltf_a.b3_a_b4_id, ltf_a.b3,
ltf_a.b4
order by ltf_a.b3_a_b4_id, ltf_a.b3 asc,
ltf_a.b4 asc;
end;
$$;

Drop view if exists lotofacil.v_lotofacil_resultado_b3_a_b5;
create view lotofacil.v_lotofacil_resultado_b3_a_b5 as
Select
ltf_a.b3_a_b5_id,
ltf_a.b3,
ltf_a.b4,
ltf_a.b5,
count(ltf_b.b3_a_b5_id) as qt_vezes
from
lotofacil.lotofacil_id_b3_a_b5 ltf_a
left join lotofacil.lotofacil_resultado_coluna_b ltf_b
on ltf_a.b3_a_b5_id = ltf_b.b3_a_b5_id
group by ltf_a.b3_a_b5_id,
ltf_a.b3,
ltf_a.b4,
ltf_a.b5
order by qt_vezes desc,
ltf_a.b3 asc,
ltf_a.b4 asc,
ltf_a.b5 asc;

DROP FUNCTION IF EXISTS lotofacil.fn_lotofacil_resultado_b3_a_b5( NUMERIC, NUMERIC );
CREATE FUNCTION lotofacil.fn_lotofacil_resultado_b3_a_b5(concurso_inicial NUMERIC, concurso_final NUMERIC)
RETURNS TABLE(b3_a_b5_id numeric, b3 numeric,
b4 numeric,
b5 numeric, qt_vezes NUMERIC)
LANGUAGE plpgsql
As $$
Declare
Begin
RETURN QUERY SELECT
ltf_a.b3_a_b5_id,
ltf_a.b3,
ltf_a.b4,
ltf_a.b5,
count(ltf_b.b3_a_b5_id)::numeric as qt_vezes
from lotofacil.lotofacil_id_b3_a_b5 ltf_a
left join lotofacil.lotofacil_resultado_coluna_b ltf_b
on ltf_a.b3_a_b5_id = ltf_b.b3_a_b5_id
AND concurso BETWEEN concurso_inicial AND concurso_final
group by ltf_a.b3_a_b5_id, ltf_a.b3,
ltf_a.b4,
ltf_a.b5
order by ltf_a.b3_a_b5_id, ltf_a.b3 asc,
ltf_a.b4 asc,
ltf_a.b5 asc;
end;
$$;

Drop view if exists lotofacil.v_lotofacil_resultado_b3_a_b6;
create view lotofacil.v_lotofacil_resultado_b3_a_b6 as
Select
ltf_a.b3_a_b6_id,
ltf_a.b3,
ltf_a.b4,
ltf_a.b5,
ltf_a.b6,
count(ltf_b.b3_a_b6_id) as qt_vezes
from
lotofacil.lotofacil_id_b3_a_b6 ltf_a
left join lotofacil.lotofacil_resultado_coluna_b ltf_b
on ltf_a.b3_a_b6_id = ltf_b.b3_a_b6_id
group by ltf_a.b3_a_b6_id,
ltf_a.b3,
ltf_a.b4,
ltf_a.b5,
ltf_a.b6
order by qt_vezes desc,
ltf_a.b3 asc,
ltf_a.b4 asc,
ltf_a.b5 asc,
ltf_a.b6 asc;

DROP FUNCTION IF EXISTS lotofacil.fn_lotofacil_resultado_b3_a_b6( NUMERIC, NUMERIC );
CREATE FUNCTION lotofacil.fn_lotofacil_resultado_b3_a_b6(concurso_inicial NUMERIC, concurso_final NUMERIC)
RETURNS TABLE(b3_a_b6_id numeric, b3 numeric,
b4 numeric,
b5 numeric,
b6 numeric, qt_vezes NUMERIC)
LANGUAGE plpgsql
As $$
Declare
Begin
RETURN QUERY SELECT
ltf_a.b3_a_b6_id,
ltf_a.b3,
ltf_a.b4,
ltf_a.b5,
ltf_a.b6,
count(ltf_b.b3_a_b6_id)::numeric as qt_vezes
from lotofacil.lotofacil_id_b3_a_b6 ltf_a
left join lotofacil.lotofacil_resultado_coluna_b ltf_b
on ltf_a.b3_a_b6_id = ltf_b.b3_a_b6_id
AND concurso BETWEEN concurso_inicial AND concurso_final
group by ltf_a.b3_a_b6_id, ltf_a.b3,
ltf_a.b4,
ltf_a.b5,
ltf_a.b6
order by ltf_a.b3_a_b6_id, ltf_a.b3 asc,
ltf_a.b4 asc,
ltf_a.b5 asc,
ltf_a.b6 asc;
end;
$$;

Drop view if exists lotofacil.v_lotofacil_resultado_b3_a_b7;
create view lotofacil.v_lotofacil_resultado_b3_a_b7 as
Select
ltf_a.b3_a_b7_id,
ltf_a.b3,
ltf_a.b4,
ltf_a.b5,
ltf_a.b6,
ltf_a.b7,
count(ltf_b.b3_a_b7_id) as qt_vezes
from
lotofacil.lotofacil_id_b3_a_b7 ltf_a
left join lotofacil.lotofacil_resultado_coluna_b ltf_b
on ltf_a.b3_a_b7_id = ltf_b.b3_a_b7_id
group by ltf_a.b3_a_b7_id,
ltf_a.b3,
ltf_a.b4,
ltf_a.b5,
ltf_a.b6,
ltf_a.b7
order by qt_vezes desc,
ltf_a.b3 asc,
ltf_a.b4 asc,
ltf_a.b5 asc,
ltf_a.b6 asc,
ltf_a.b7 asc;

DROP FUNCTION IF EXISTS lotofacil.fn_lotofacil_resultado_b3_a_b7( NUMERIC, NUMERIC );
CREATE FUNCTION lotofacil.fn_lotofacil_resultado_b3_a_b7(concurso_inicial NUMERIC, concurso_final NUMERIC)
RETURNS TABLE(b3_a_b7_id numeric, b3 numeric,
b4 numeric,
b5 numeric,
b6 numeric,
b7 numeric, qt_vezes NUMERIC)
LANGUAGE plpgsql
As $$
Declare
Begin
RETURN QUERY SELECT
ltf_a.b3_a_b7_id,
ltf_a.b3,
ltf_a.b4,
ltf_a.b5,
ltf_a.b6,
ltf_a.b7,
count(ltf_b.b3_a_b7_id)::numeric as qt_vezes
from lotofacil.lotofacil_id_b3_a_b7 ltf_a
left join lotofacil.lotofacil_resultado_coluna_b ltf_b
on ltf_a.b3_a_b7_id = ltf_b.b3_a_b7_id
AND concurso BETWEEN concurso_inicial AND concurso_final
group by ltf_a.b3_a_b7_id, ltf_a.b3,
ltf_a.b4,
ltf_a.b5,
ltf_a.b6,
ltf_a.b7
order by ltf_a.b3_a_b7_id, ltf_a.b3 asc,
ltf_a.b4 asc,
ltf_a.b5 asc,
ltf_a.b6 asc,
ltf_a.b7 asc;
end;
$$;

Drop view if exists lotofacil.v_lotofacil_resultado_b3_a_b8;
create view lotofacil.v_lotofacil_resultado_b3_a_b8 as
Select
ltf_a.b3_a_b8_id,
ltf_a.b3,
ltf_a.b4,
ltf_a.b5,
ltf_a.b6,
ltf_a.b7,
ltf_a.b8,
count(ltf_b.b3_a_b8_id) as qt_vezes
from
lotofacil.lotofacil_id_b3_a_b8 ltf_a
left join lotofacil.lotofacil_resultado_coluna_b ltf_b
on ltf_a.b3_a_b8_id = ltf_b.b3_a_b8_id
group by ltf_a.b3_a_b8_id,
ltf_a.b3,
ltf_a.b4,
ltf_a.b5,
ltf_a.b6,
ltf_a.b7,
ltf_a.b8
order by qt_vezes desc,
ltf_a.b3 asc,
ltf_a.b4 asc,
ltf_a.b5 asc,
ltf_a.b6 asc,
ltf_a.b7 asc,
ltf_a.b8 asc;

DROP FUNCTION IF EXISTS lotofacil.fn_lotofacil_resultado_b3_a_b8( NUMERIC, NUMERIC );
CREATE FUNCTION lotofacil.fn_lotofacil_resultado_b3_a_b8(concurso_inicial NUMERIC, concurso_final NUMERIC)
RETURNS TABLE(b3_a_b8_id numeric, b3 numeric,
b4 numeric,
b5 numeric,
b6 numeric,
b7 numeric,
b8 numeric, qt_vezes NUMERIC)
LANGUAGE plpgsql
As $$
Declare
Begin
RETURN QUERY SELECT
ltf_a.b3_a_b8_id,
ltf_a.b3,
ltf_a.b4,
ltf_a.b5,
ltf_a.b6,
ltf_a.b7,
ltf_a.b8,
count(ltf_b.b3_a_b8_id)::numeric as qt_vezes
from lotofacil.lotofacil_id_b3_a_b8 ltf_a
left join lotofacil.lotofacil_resultado_coluna_b ltf_b
on ltf_a.b3_a_b8_id = ltf_b.b3_a_b8_id
AND concurso BETWEEN concurso_inicial AND concurso_final
group by ltf_a.b3_a_b8_id, ltf_a.b3,
ltf_a.b4,
ltf_a.b5,
ltf_a.b6,
ltf_a.b7,
ltf_a.b8
order by ltf_a.b3_a_b8_id, ltf_a.b3 asc,
ltf_a.b4 asc,
ltf_a.b5 asc,
ltf_a.b6 asc,
ltf_a.b7 asc,
ltf_a.b8 asc;
end;
$$;

Drop view if exists lotofacil.v_lotofacil_resultado_b3_a_b9;
create view lotofacil.v_lotofacil_resultado_b3_a_b9 as
Select
ltf_a.b3_a_b9_id,
ltf_a.b3,
ltf_a.b4,
ltf_a.b5,
ltf_a.b6,
ltf_a.b7,
ltf_a.b8,
ltf_a.b9,
count(ltf_b.b3_a_b9_id) as qt_vezes
from
lotofacil.lotofacil_id_b3_a_b9 ltf_a
left join lotofacil.lotofacil_resultado_coluna_b ltf_b
on ltf_a.b3_a_b9_id = ltf_b.b3_a_b9_id
group by ltf_a.b3_a_b9_id,
ltf_a.b3,
ltf_a.b4,
ltf_a.b5,
ltf_a.b6,
ltf_a.b7,
ltf_a.b8,
ltf_a.b9
order by qt_vezes desc,
ltf_a.b3 asc,
ltf_a.b4 asc,
ltf_a.b5 asc,
ltf_a.b6 asc,
ltf_a.b7 asc,
ltf_a.b8 asc,
ltf_a.b9 asc;

DROP FUNCTION IF EXISTS lotofacil.fn_lotofacil_resultado_b3_a_b9( NUMERIC, NUMERIC );
CREATE FUNCTION lotofacil.fn_lotofacil_resultado_b3_a_b9(concurso_inicial NUMERIC, concurso_final NUMERIC)
RETURNS TABLE(b3_a_b9_id numeric, b3 numeric,
b4 numeric,
b5 numeric,
b6 numeric,
b7 numeric,
b8 numeric,
b9 numeric, qt_vezes NUMERIC)
LANGUAGE plpgsql
As $$
Declare
Begin
RETURN QUERY SELECT
ltf_a.b3_a_b9_id,
ltf_a.b3,
ltf_a.b4,
ltf_a.b5,
ltf_a.b6,
ltf_a.b7,
ltf_a.b8,
ltf_a.b9,
count(ltf_b.b3_a_b9_id)::numeric as qt_vezes
from lotofacil.lotofacil_id_b3_a_b9 ltf_a
left join lotofacil.lotofacil_resultado_coluna_b ltf_b
on ltf_a.b3_a_b9_id = ltf_b.b3_a_b9_id
AND concurso BETWEEN concurso_inicial AND concurso_final
group by ltf_a.b3_a_b9_id, ltf_a.b3,
ltf_a.b4,
ltf_a.b5,
ltf_a.b6,
ltf_a.b7,
ltf_a.b8,
ltf_a.b9
order by ltf_a.b3_a_b9_id, ltf_a.b3 asc,
ltf_a.b4 asc,
ltf_a.b5 asc,
ltf_a.b6 asc,
ltf_a.b7 asc,
ltf_a.b8 asc,
ltf_a.b9 asc;
end;
$$;

Drop view if exists lotofacil.v_lotofacil_resultado_b3_a_b10;
create view lotofacil.v_lotofacil_resultado_b3_a_b10 as
Select
ltf_a.b3_a_b10_id,
ltf_a.b3,
ltf_a.b4,
ltf_a.b5,
ltf_a.b6,
ltf_a.b7,
ltf_a.b8,
ltf_a.b9,
ltf_a.b10,
count(ltf_b.b3_a_b10_id) as qt_vezes
from
lotofacil.lotofacil_id_b3_a_b10 ltf_a
left join lotofacil.lotofacil_resultado_coluna_b ltf_b
on ltf_a.b3_a_b10_id = ltf_b.b3_a_b10_id
group by ltf_a.b3_a_b10_id,
ltf_a.b3,
ltf_a.b4,
ltf_a.b5,
ltf_a.b6,
ltf_a.b7,
ltf_a.b8,
ltf_a.b9,
ltf_a.b10
order by qt_vezes desc,
ltf_a.b3 asc,
ltf_a.b4 asc,
ltf_a.b5 asc,
ltf_a.b6 asc,
ltf_a.b7 asc,
ltf_a.b8 asc,
ltf_a.b9 asc,
ltf_a.b10 asc;

DROP FUNCTION IF EXISTS lotofacil.fn_lotofacil_resultado_b3_a_b10( NUMERIC, NUMERIC );
CREATE FUNCTION lotofacil.fn_lotofacil_resultado_b3_a_b10(concurso_inicial NUMERIC, concurso_final NUMERIC)
RETURNS TABLE(b3_a_b10_id numeric, b3 numeric,
b4 numeric,
b5 numeric,
b6 numeric,
b7 numeric,
b8 numeric,
b9 numeric,
b10 numeric, qt_vezes NUMERIC)
LANGUAGE plpgsql
As $$
Declare
Begin
RETURN QUERY SELECT
ltf_a.b3_a_b10_id,
ltf_a.b3,
ltf_a.b4,
ltf_a.b5,
ltf_a.b6,
ltf_a.b7,
ltf_a.b8,
ltf_a.b9,
ltf_a.b10,
count(ltf_b.b3_a_b10_id)::numeric as qt_vezes
from lotofacil.lotofacil_id_b3_a_b10 ltf_a
left join lotofacil.lotofacil_resultado_coluna_b ltf_b
on ltf_a.b3_a_b10_id = ltf_b.b3_a_b10_id
AND concurso BETWEEN concurso_inicial AND concurso_final
group by ltf_a.b3_a_b10_id, ltf_a.b3,
ltf_a.b4,
ltf_a.b5,
ltf_a.b6,
ltf_a.b7,
ltf_a.b8,
ltf_a.b9,
ltf_a.b10
order by ltf_a.b3_a_b10_id, ltf_a.b3 asc,
ltf_a.b4 asc,
ltf_a.b5 asc,
ltf_a.b6 asc,
ltf_a.b7 asc,
ltf_a.b8 asc,
ltf_a.b9 asc,
ltf_a.b10 asc;
end;
$$;

Drop view if exists lotofacil.v_lotofacil_resultado_b3_a_b11;
create view lotofacil.v_lotofacil_resultado_b3_a_b11 as
Select
ltf_a.b3_a_b11_id,
ltf_a.b3,
ltf_a.b4,
ltf_a.b5,
ltf_a.b6,
ltf_a.b7,
ltf_a.b8,
ltf_a.b9,
ltf_a.b10,
ltf_a.b11,
count(ltf_b.b3_a_b11_id) as qt_vezes
from
lotofacil.lotofacil_id_b3_a_b11 ltf_a
left join lotofacil.lotofacil_resultado_coluna_b ltf_b
on ltf_a.b3_a_b11_id = ltf_b.b3_a_b11_id
group by ltf_a.b3_a_b11_id,
ltf_a.b3,
ltf_a.b4,
ltf_a.b5,
ltf_a.b6,
ltf_a.b7,
ltf_a.b8,
ltf_a.b9,
ltf_a.b10,
ltf_a.b11
order by qt_vezes desc,
ltf_a.b3 asc,
ltf_a.b4 asc,
ltf_a.b5 asc,
ltf_a.b6 asc,
ltf_a.b7 asc,
ltf_a.b8 asc,
ltf_a.b9 asc,
ltf_a.b10 asc,
ltf_a.b11 asc;

DROP FUNCTION IF EXISTS lotofacil.fn_lotofacil_resultado_b3_a_b11( NUMERIC, NUMERIC );
CREATE FUNCTION lotofacil.fn_lotofacil_resultado_b3_a_b11(concurso_inicial NUMERIC, concurso_final NUMERIC)
RETURNS TABLE(b3_a_b11_id numeric, b3 numeric,
b4 numeric,
b5 numeric,
b6 numeric,
b7 numeric,
b8 numeric,
b9 numeric,
b10 numeric,
b11 numeric, qt_vezes NUMERIC)
LANGUAGE plpgsql
As $$
Declare
Begin
RETURN QUERY SELECT
ltf_a.b3_a_b11_id,
ltf_a.b3,
ltf_a.b4,
ltf_a.b5,
ltf_a.b6,
ltf_a.b7,
ltf_a.b8,
ltf_a.b9,
ltf_a.b10,
ltf_a.b11,
count(ltf_b.b3_a_b11_id)::numeric as qt_vezes
from lotofacil.lotofacil_id_b3_a_b11 ltf_a
left join lotofacil.lotofacil_resultado_coluna_b ltf_b
on ltf_a.b3_a_b11_id = ltf_b.b3_a_b11_id
AND concurso BETWEEN concurso_inicial AND concurso_final
group by ltf_a.b3_a_b11_id, ltf_a.b3,
ltf_a.b4,
ltf_a.b5,
ltf_a.b6,
ltf_a.b7,
ltf_a.b8,
ltf_a.b9,
ltf_a.b10,
ltf_a.b11
order by ltf_a.b3_a_b11_id, ltf_a.b3 asc,
ltf_a.b4 asc,
ltf_a.b5 asc,
ltf_a.b6 asc,
ltf_a.b7 asc,
ltf_a.b8 asc,
ltf_a.b9 asc,
ltf_a.b10 asc,
ltf_a.b11 asc;
end;
$$;

Drop view if exists lotofacil.v_lotofacil_resultado_b3_a_b12;
create view lotofacil.v_lotofacil_resultado_b3_a_b12 as
Select
ltf_a.b3_a_b12_id,
ltf_a.b3,
ltf_a.b4,
ltf_a.b5,
ltf_a.b6,
ltf_a.b7,
ltf_a.b8,
ltf_a.b9,
ltf_a.b10,
ltf_a.b11,
ltf_a.b12,
count(ltf_b.b3_a_b12_id) as qt_vezes
from
lotofacil.lotofacil_id_b3_a_b12 ltf_a
left join lotofacil.lotofacil_resultado_coluna_b ltf_b
on ltf_a.b3_a_b12_id = ltf_b.b3_a_b12_id
group by ltf_a.b3_a_b12_id,
ltf_a.b3,
ltf_a.b4,
ltf_a.b5,
ltf_a.b6,
ltf_a.b7,
ltf_a.b8,
ltf_a.b9,
ltf_a.b10,
ltf_a.b11,
ltf_a.b12
order by qt_vezes desc,
ltf_a.b3 asc,
ltf_a.b4 asc,
ltf_a.b5 asc,
ltf_a.b6 asc,
ltf_a.b7 asc,
ltf_a.b8 asc,
ltf_a.b9 asc,
ltf_a.b10 asc,
ltf_a.b11 asc,
ltf_a.b12 asc;

DROP FUNCTION IF EXISTS lotofacil.fn_lotofacil_resultado_b3_a_b12( NUMERIC, NUMERIC );
CREATE FUNCTION lotofacil.fn_lotofacil_resultado_b3_a_b12(concurso_inicial NUMERIC, concurso_final NUMERIC)
RETURNS TABLE(b3_a_b12_id numeric, b3 numeric,
b4 numeric,
b5 numeric,
b6 numeric,
b7 numeric,
b8 numeric,
b9 numeric,
b10 numeric,
b11 numeric,
b12 numeric, qt_vezes NUMERIC)
LANGUAGE plpgsql
As $$
Declare
Begin
RETURN QUERY SELECT
ltf_a.b3_a_b12_id,
ltf_a.b3,
ltf_a.b4,
ltf_a.b5,
ltf_a.b6,
ltf_a.b7,
ltf_a.b8,
ltf_a.b9,
ltf_a.b10,
ltf_a.b11,
ltf_a.b12,
count(ltf_b.b3_a_b12_id)::numeric as qt_vezes
from lotofacil.lotofacil_id_b3_a_b12 ltf_a
left join lotofacil.lotofacil_resultado_coluna_b ltf_b
on ltf_a.b3_a_b12_id = ltf_b.b3_a_b12_id
AND concurso BETWEEN concurso_inicial AND concurso_final
group by ltf_a.b3_a_b12_id, ltf_a.b3,
ltf_a.b4,
ltf_a.b5,
ltf_a.b6,
ltf_a.b7,
ltf_a.b8,
ltf_a.b9,
ltf_a.b10,
ltf_a.b11,
ltf_a.b12
order by ltf_a.b3_a_b12_id, ltf_a.b3 asc,
ltf_a.b4 asc,
ltf_a.b5 asc,
ltf_a.b6 asc,
ltf_a.b7 asc,
ltf_a.b8 asc,
ltf_a.b9 asc,
ltf_a.b10 asc,
ltf_a.b11 asc,
ltf_a.b12 asc;
end;
$$;

Drop view if exists lotofacil.v_lotofacil_resultado_b3_a_b13;
create view lotofacil.v_lotofacil_resultado_b3_a_b13 as
Select
ltf_a.b3_a_b13_id,
ltf_a.b3,
ltf_a.b4,
ltf_a.b5,
ltf_a.b6,
ltf_a.b7,
ltf_a.b8,
ltf_a.b9,
ltf_a.b10,
ltf_a.b11,
ltf_a.b12,
ltf_a.b13,
count(ltf_b.b3_a_b13_id) as qt_vezes
from
lotofacil.lotofacil_id_b3_a_b13 ltf_a
left join lotofacil.lotofacil_resultado_coluna_b ltf_b
on ltf_a.b3_a_b13_id = ltf_b.b3_a_b13_id
group by ltf_a.b3_a_b13_id,
ltf_a.b3,
ltf_a.b4,
ltf_a.b5,
ltf_a.b6,
ltf_a.b7,
ltf_a.b8,
ltf_a.b9,
ltf_a.b10,
ltf_a.b11,
ltf_a.b12,
ltf_a.b13
order by qt_vezes desc,
ltf_a.b3 asc,
ltf_a.b4 asc,
ltf_a.b5 asc,
ltf_a.b6 asc,
ltf_a.b7 asc,
ltf_a.b8 asc,
ltf_a.b9 asc,
ltf_a.b10 asc,
ltf_a.b11 asc,
ltf_a.b12 asc,
ltf_a.b13 asc;

DROP FUNCTION IF EXISTS lotofacil.fn_lotofacil_resultado_b3_a_b13( NUMERIC, NUMERIC );
CREATE FUNCTION lotofacil.fn_lotofacil_resultado_b3_a_b13(concurso_inicial NUMERIC, concurso_final NUMERIC)
RETURNS TABLE(b3_a_b13_id numeric, b3 numeric,
b4 numeric,
b5 numeric,
b6 numeric,
b7 numeric,
b8 numeric,
b9 numeric,
b10 numeric,
b11 numeric,
b12 numeric,
b13 numeric, qt_vezes NUMERIC)
LANGUAGE plpgsql
As $$
Declare
Begin
RETURN QUERY SELECT
ltf_a.b3_a_b13_id,
ltf_a.b3,
ltf_a.b4,
ltf_a.b5,
ltf_a.b6,
ltf_a.b7,
ltf_a.b8,
ltf_a.b9,
ltf_a.b10,
ltf_a.b11,
ltf_a.b12,
ltf_a.b13,
count(ltf_b.b3_a_b13_id)::numeric as qt_vezes
from lotofacil.lotofacil_id_b3_a_b13 ltf_a
left join lotofacil.lotofacil_resultado_coluna_b ltf_b
on ltf_a.b3_a_b13_id = ltf_b.b3_a_b13_id
AND concurso BETWEEN concurso_inicial AND concurso_final
group by ltf_a.b3_a_b13_id, ltf_a.b3,
ltf_a.b4,
ltf_a.b5,
ltf_a.b6,
ltf_a.b7,
ltf_a.b8,
ltf_a.b9,
ltf_a.b10,
ltf_a.b11,
ltf_a.b12,
ltf_a.b13
order by ltf_a.b3_a_b13_id, ltf_a.b3 asc,
ltf_a.b4 asc,
ltf_a.b5 asc,
ltf_a.b6 asc,
ltf_a.b7 asc,
ltf_a.b8 asc,
ltf_a.b9 asc,
ltf_a.b10 asc,
ltf_a.b11 asc,
ltf_a.b12 asc,
ltf_a.b13 asc;
end;
$$;

Drop view if exists lotofacil.v_lotofacil_resultado_b3_a_b14;
create view lotofacil.v_lotofacil_resultado_b3_a_b14 as
Select
ltf_a.b3_a_b14_id,
ltf_a.b3,
ltf_a.b4,
ltf_a.b5,
ltf_a.b6,
ltf_a.b7,
ltf_a.b8,
ltf_a.b9,
ltf_a.b10,
ltf_a.b11,
ltf_a.b12,
ltf_a.b13,
ltf_a.b14,
count(ltf_b.b3_a_b14_id) as qt_vezes
from
lotofacil.lotofacil_id_b3_a_b14 ltf_a
left join lotofacil.lotofacil_resultado_coluna_b ltf_b
on ltf_a.b3_a_b14_id = ltf_b.b3_a_b14_id
group by ltf_a.b3_a_b14_id,
ltf_a.b3,
ltf_a.b4,
ltf_a.b5,
ltf_a.b6,
ltf_a.b7,
ltf_a.b8,
ltf_a.b9,
ltf_a.b10,
ltf_a.b11,
ltf_a.b12,
ltf_a.b13,
ltf_a.b14
order by qt_vezes desc,
ltf_a.b3 asc,
ltf_a.b4 asc,
ltf_a.b5 asc,
ltf_a.b6 asc,
ltf_a.b7 asc,
ltf_a.b8 asc,
ltf_a.b9 asc,
ltf_a.b10 asc,
ltf_a.b11 asc,
ltf_a.b12 asc,
ltf_a.b13 asc,
ltf_a.b14 asc;

DROP FUNCTION IF EXISTS lotofacil.fn_lotofacil_resultado_b3_a_b14( NUMERIC, NUMERIC );
CREATE FUNCTION lotofacil.fn_lotofacil_resultado_b3_a_b14(concurso_inicial NUMERIC, concurso_final NUMERIC)
RETURNS TABLE(b3_a_b14_id numeric, b3 numeric,
b4 numeric,
b5 numeric,
b6 numeric,
b7 numeric,
b8 numeric,
b9 numeric,
b10 numeric,
b11 numeric,
b12 numeric,
b13 numeric,
b14 numeric, qt_vezes NUMERIC)
LANGUAGE plpgsql
As $$
Declare
Begin
RETURN QUERY SELECT
ltf_a.b3_a_b14_id,
ltf_a.b3,
ltf_a.b4,
ltf_a.b5,
ltf_a.b6,
ltf_a.b7,
ltf_a.b8,
ltf_a.b9,
ltf_a.b10,
ltf_a.b11,
ltf_a.b12,
ltf_a.b13,
ltf_a.b14,
count(ltf_b.b3_a_b14_id)::numeric as qt_vezes
from lotofacil.lotofacil_id_b3_a_b14 ltf_a
left join lotofacil.lotofacil_resultado_coluna_b ltf_b
on ltf_a.b3_a_b14_id = ltf_b.b3_a_b14_id
AND concurso BETWEEN concurso_inicial AND concurso_final
group by ltf_a.b3_a_b14_id, ltf_a.b3,
ltf_a.b4,
ltf_a.b5,
ltf_a.b6,
ltf_a.b7,
ltf_a.b8,
ltf_a.b9,
ltf_a.b10,
ltf_a.b11,
ltf_a.b12,
ltf_a.b13,
ltf_a.b14
order by ltf_a.b3_a_b14_id, ltf_a.b3 asc,
ltf_a.b4 asc,
ltf_a.b5 asc,
ltf_a.b6 asc,
ltf_a.b7 asc,
ltf_a.b8 asc,
ltf_a.b9 asc,
ltf_a.b10 asc,
ltf_a.b11 asc,
ltf_a.b12 asc,
ltf_a.b13 asc,
ltf_a.b14 asc;
end;
$$;

Drop view if exists lotofacil.v_lotofacil_resultado_b3_a_b15;
create view lotofacil.v_lotofacil_resultado_b3_a_b15 as
Select
ltf_a.b3_a_b15_id,
ltf_a.b3,
ltf_a.b4,
ltf_a.b5,
ltf_a.b6,
ltf_a.b7,
ltf_a.b8,
ltf_a.b9,
ltf_a.b10,
ltf_a.b11,
ltf_a.b12,
ltf_a.b13,
ltf_a.b14,
ltf_a.b15,
count(ltf_b.b3_a_b15_id) as qt_vezes
from
lotofacil.lotofacil_id_b3_a_b15 ltf_a
left join lotofacil.lotofacil_resultado_coluna_b ltf_b
on ltf_a.b3_a_b15_id = ltf_b.b3_a_b15_id
group by ltf_a.b3_a_b15_id,
ltf_a.b3,
ltf_a.b4,
ltf_a.b5,
ltf_a.b6,
ltf_a.b7,
ltf_a.b8,
ltf_a.b9,
ltf_a.b10,
ltf_a.b11,
ltf_a.b12,
ltf_a.b13,
ltf_a.b14,
ltf_a.b15
order by qt_vezes desc,
ltf_a.b3 asc,
ltf_a.b4 asc,
ltf_a.b5 asc,
ltf_a.b6 asc,
ltf_a.b7 asc,
ltf_a.b8 asc,
ltf_a.b9 asc,
ltf_a.b10 asc,
ltf_a.b11 asc,
ltf_a.b12 asc,
ltf_a.b13 asc,
ltf_a.b14 asc,
ltf_a.b15 asc;

DROP FUNCTION IF EXISTS lotofacil.fn_lotofacil_resultado_b3_a_b15( NUMERIC, NUMERIC );
CREATE FUNCTION lotofacil.fn_lotofacil_resultado_b3_a_b15(concurso_inicial NUMERIC, concurso_final NUMERIC)
RETURNS TABLE(b3_a_b15_id numeric, b3 numeric,
b4 numeric,
b5 numeric,
b6 numeric,
b7 numeric,
b8 numeric,
b9 numeric,
b10 numeric,
b11 numeric,
b12 numeric,
b13 numeric,
b14 numeric,
b15 numeric, qt_vezes NUMERIC)
LANGUAGE plpgsql
As $$
Declare
Begin
RETURN QUERY SELECT
ltf_a.b3_a_b15_id,
ltf_a.b3,
ltf_a.b4,
ltf_a.b5,
ltf_a.b6,
ltf_a.b7,
ltf_a.b8,
ltf_a.b9,
ltf_a.b10,
ltf_a.b11,
ltf_a.b12,
ltf_a.b13,
ltf_a.b14,
ltf_a.b15,
count(ltf_b.b3_a_b15_id)::numeric as qt_vezes
from lotofacil.lotofacil_id_b3_a_b15 ltf_a
left join lotofacil.lotofacil_resultado_coluna_b ltf_b
on ltf_a.b3_a_b15_id = ltf_b.b3_a_b15_id
AND concurso BETWEEN concurso_inicial AND concurso_final
group by ltf_a.b3_a_b15_id, ltf_a.b3,
ltf_a.b4,
ltf_a.b5,
ltf_a.b6,
ltf_a.b7,
ltf_a.b8,
ltf_a.b9,
ltf_a.b10,
ltf_a.b11,
ltf_a.b12,
ltf_a.b13,
ltf_a.b14,
ltf_a.b15
order by ltf_a.b3_a_b15_id, ltf_a.b3 asc,
ltf_a.b4 asc,
ltf_a.b5 asc,
ltf_a.b6 asc,
ltf_a.b7 asc,
ltf_a.b8 asc,
ltf_a.b9 asc,
ltf_a.b10 asc,
ltf_a.b11 asc,
ltf_a.b12 asc,
ltf_a.b13 asc,
ltf_a.b14 asc,
ltf_a.b15 asc;
end;
$$;

Drop view if exists lotofacil.v_lotofacil_resultado_b4_a_b4;
create view lotofacil.v_lotofacil_resultado_b4_a_b4 as
Select
ltf_a.b4_a_b4_id,
ltf_a.b4,
count(ltf_b.b4_a_b4_id) as qt_vezes
from
lotofacil.lotofacil_id_b4_a_b4 ltf_a
left join lotofacil.lotofacil_resultado_coluna_b ltf_b
on ltf_a.b4_a_b4_id = ltf_b.b4_a_b4_id
group by ltf_a.b4_a_b4_id,
ltf_a.b4
order by qt_vezes desc,
ltf_a.b4 asc;

DROP FUNCTION IF EXISTS lotofacil.fn_lotofacil_resultado_b4_a_b4( NUMERIC, NUMERIC );
CREATE FUNCTION lotofacil.fn_lotofacil_resultado_b4_a_b4(concurso_inicial NUMERIC, concurso_final NUMERIC)
RETURNS TABLE(b4_a_b4_id numeric, b4 numeric, qt_vezes NUMERIC)
LANGUAGE plpgsql
As $$
Declare
Begin
RETURN QUERY SELECT
ltf_a.b4_a_b4_id,
ltf_a.b4,
count(ltf_b.b4_a_b4_id)::numeric as qt_vezes
from lotofacil.lotofacil_id_b4_a_b4 ltf_a
left join lotofacil.lotofacil_resultado_coluna_b ltf_b
on ltf_a.b4_a_b4_id = ltf_b.b4_a_b4_id
AND concurso BETWEEN concurso_inicial AND concurso_final
group by ltf_a.b4_a_b4_id, ltf_a.b4
order by ltf_a.b4_a_b4_id, ltf_a.b4 asc;
end;
$$;

Drop view if exists lotofacil.v_lotofacil_resultado_b4_a_b5;
create view lotofacil.v_lotofacil_resultado_b4_a_b5 as
Select
ltf_a.b4_a_b5_id,
ltf_a.b4,
ltf_a.b5,
count(ltf_b.b4_a_b5_id) as qt_vezes
from
lotofacil.lotofacil_id_b4_a_b5 ltf_a
left join lotofacil.lotofacil_resultado_coluna_b ltf_b
on ltf_a.b4_a_b5_id = ltf_b.b4_a_b5_id
group by ltf_a.b4_a_b5_id,
ltf_a.b4,
ltf_a.b5
order by qt_vezes desc,
ltf_a.b4 asc,
ltf_a.b5 asc;

DROP FUNCTION IF EXISTS lotofacil.fn_lotofacil_resultado_b4_a_b5( NUMERIC, NUMERIC );
CREATE FUNCTION lotofacil.fn_lotofacil_resultado_b4_a_b5(concurso_inicial NUMERIC, concurso_final NUMERIC)
RETURNS TABLE(b4_a_b5_id numeric, b4 numeric,
b5 numeric, qt_vezes NUMERIC)
LANGUAGE plpgsql
As $$
Declare
Begin
RETURN QUERY SELECT
ltf_a.b4_a_b5_id,
ltf_a.b4,
ltf_a.b5,
count(ltf_b.b4_a_b5_id)::numeric as qt_vezes
from lotofacil.lotofacil_id_b4_a_b5 ltf_a
left join lotofacil.lotofacil_resultado_coluna_b ltf_b
on ltf_a.b4_a_b5_id = ltf_b.b4_a_b5_id
AND concurso BETWEEN concurso_inicial AND concurso_final
group by ltf_a.b4_a_b5_id, ltf_a.b4,
ltf_a.b5
order by ltf_a.b4_a_b5_id, ltf_a.b4 asc,
ltf_a.b5 asc;
end;
$$;

Drop view if exists lotofacil.v_lotofacil_resultado_b4_a_b6;
create view lotofacil.v_lotofacil_resultado_b4_a_b6 as
Select
ltf_a.b4_a_b6_id,
ltf_a.b4,
ltf_a.b5,
ltf_a.b6,
count(ltf_b.b4_a_b6_id) as qt_vezes
from
lotofacil.lotofacil_id_b4_a_b6 ltf_a
left join lotofacil.lotofacil_resultado_coluna_b ltf_b
on ltf_a.b4_a_b6_id = ltf_b.b4_a_b6_id
group by ltf_a.b4_a_b6_id,
ltf_a.b4,
ltf_a.b5,
ltf_a.b6
order by qt_vezes desc,
ltf_a.b4 asc,
ltf_a.b5 asc,
ltf_a.b6 asc;

DROP FUNCTION IF EXISTS lotofacil.fn_lotofacil_resultado_b4_a_b6( NUMERIC, NUMERIC );
CREATE FUNCTION lotofacil.fn_lotofacil_resultado_b4_a_b6(concurso_inicial NUMERIC, concurso_final NUMERIC)
RETURNS TABLE(b4_a_b6_id numeric, b4 numeric,
b5 numeric,
b6 numeric, qt_vezes NUMERIC)
LANGUAGE plpgsql
As $$
Declare
Begin
RETURN QUERY SELECT
ltf_a.b4_a_b6_id,
ltf_a.b4,
ltf_a.b5,
ltf_a.b6,
count(ltf_b.b4_a_b6_id)::numeric as qt_vezes
from lotofacil.lotofacil_id_b4_a_b6 ltf_a
left join lotofacil.lotofacil_resultado_coluna_b ltf_b
on ltf_a.b4_a_b6_id = ltf_b.b4_a_b6_id
AND concurso BETWEEN concurso_inicial AND concurso_final
group by ltf_a.b4_a_b6_id, ltf_a.b4,
ltf_a.b5,
ltf_a.b6
order by ltf_a.b4_a_b6_id, ltf_a.b4 asc,
ltf_a.b5 asc,
ltf_a.b6 asc;
end;
$$;

Drop view if exists lotofacil.v_lotofacil_resultado_b4_a_b7;
create view lotofacil.v_lotofacil_resultado_b4_a_b7 as
Select
ltf_a.b4_a_b7_id,
ltf_a.b4,
ltf_a.b5,
ltf_a.b6,
ltf_a.b7,
count(ltf_b.b4_a_b7_id) as qt_vezes
from
lotofacil.lotofacil_id_b4_a_b7 ltf_a
left join lotofacil.lotofacil_resultado_coluna_b ltf_b
on ltf_a.b4_a_b7_id = ltf_b.b4_a_b7_id
group by ltf_a.b4_a_b7_id,
ltf_a.b4,
ltf_a.b5,
ltf_a.b6,
ltf_a.b7
order by qt_vezes desc,
ltf_a.b4 asc,
ltf_a.b5 asc,
ltf_a.b6 asc,
ltf_a.b7 asc;

DROP FUNCTION IF EXISTS lotofacil.fn_lotofacil_resultado_b4_a_b7( NUMERIC, NUMERIC );
CREATE FUNCTION lotofacil.fn_lotofacil_resultado_b4_a_b7(concurso_inicial NUMERIC, concurso_final NUMERIC)
RETURNS TABLE(b4_a_b7_id numeric, b4 numeric,
b5 numeric,
b6 numeric,
b7 numeric, qt_vezes NUMERIC)
LANGUAGE plpgsql
As $$
Declare
Begin
RETURN QUERY SELECT
ltf_a.b4_a_b7_id,
ltf_a.b4,
ltf_a.b5,
ltf_a.b6,
ltf_a.b7,
count(ltf_b.b4_a_b7_id)::numeric as qt_vezes
from lotofacil.lotofacil_id_b4_a_b7 ltf_a
left join lotofacil.lotofacil_resultado_coluna_b ltf_b
on ltf_a.b4_a_b7_id = ltf_b.b4_a_b7_id
AND concurso BETWEEN concurso_inicial AND concurso_final
group by ltf_a.b4_a_b7_id, ltf_a.b4,
ltf_a.b5,
ltf_a.b6,
ltf_a.b7
order by ltf_a.b4_a_b7_id, ltf_a.b4 asc,
ltf_a.b5 asc,
ltf_a.b6 asc,
ltf_a.b7 asc;
end;
$$;

Drop view if exists lotofacil.v_lotofacil_resultado_b4_a_b8;
create view lotofacil.v_lotofacil_resultado_b4_a_b8 as
Select
ltf_a.b4_a_b8_id,
ltf_a.b4,
ltf_a.b5,
ltf_a.b6,
ltf_a.b7,
ltf_a.b8,
count(ltf_b.b4_a_b8_id) as qt_vezes
from
lotofacil.lotofacil_id_b4_a_b8 ltf_a
left join lotofacil.lotofacil_resultado_coluna_b ltf_b
on ltf_a.b4_a_b8_id = ltf_b.b4_a_b8_id
group by ltf_a.b4_a_b8_id,
ltf_a.b4,
ltf_a.b5,
ltf_a.b6,
ltf_a.b7,
ltf_a.b8
order by qt_vezes desc,
ltf_a.b4 asc,
ltf_a.b5 asc,
ltf_a.b6 asc,
ltf_a.b7 asc,
ltf_a.b8 asc;

DROP FUNCTION IF EXISTS lotofacil.fn_lotofacil_resultado_b4_a_b8( NUMERIC, NUMERIC );
CREATE FUNCTION lotofacil.fn_lotofacil_resultado_b4_a_b8(concurso_inicial NUMERIC, concurso_final NUMERIC)
RETURNS TABLE(b4_a_b8_id numeric, b4 numeric,
b5 numeric,
b6 numeric,
b7 numeric,
b8 numeric, qt_vezes NUMERIC)
LANGUAGE plpgsql
As $$
Declare
Begin
RETURN QUERY SELECT
ltf_a.b4_a_b8_id,
ltf_a.b4,
ltf_a.b5,
ltf_a.b6,
ltf_a.b7,
ltf_a.b8,
count(ltf_b.b4_a_b8_id)::numeric as qt_vezes
from lotofacil.lotofacil_id_b4_a_b8 ltf_a
left join lotofacil.lotofacil_resultado_coluna_b ltf_b
on ltf_a.b4_a_b8_id = ltf_b.b4_a_b8_id
AND concurso BETWEEN concurso_inicial AND concurso_final
group by ltf_a.b4_a_b8_id, ltf_a.b4,
ltf_a.b5,
ltf_a.b6,
ltf_a.b7,
ltf_a.b8
order by ltf_a.b4_a_b8_id, ltf_a.b4 asc,
ltf_a.b5 asc,
ltf_a.b6 asc,
ltf_a.b7 asc,
ltf_a.b8 asc;
end;
$$;

Drop view if exists lotofacil.v_lotofacil_resultado_b4_a_b9;
create view lotofacil.v_lotofacil_resultado_b4_a_b9 as
Select
ltf_a.b4_a_b9_id,
ltf_a.b4,
ltf_a.b5,
ltf_a.b6,
ltf_a.b7,
ltf_a.b8,
ltf_a.b9,
count(ltf_b.b4_a_b9_id) as qt_vezes
from
lotofacil.lotofacil_id_b4_a_b9 ltf_a
left join lotofacil.lotofacil_resultado_coluna_b ltf_b
on ltf_a.b4_a_b9_id = ltf_b.b4_a_b9_id
group by ltf_a.b4_a_b9_id,
ltf_a.b4,
ltf_a.b5,
ltf_a.b6,
ltf_a.b7,
ltf_a.b8,
ltf_a.b9
order by qt_vezes desc,
ltf_a.b4 asc,
ltf_a.b5 asc,
ltf_a.b6 asc,
ltf_a.b7 asc,
ltf_a.b8 asc,
ltf_a.b9 asc;

DROP FUNCTION IF EXISTS lotofacil.fn_lotofacil_resultado_b4_a_b9( NUMERIC, NUMERIC );
CREATE FUNCTION lotofacil.fn_lotofacil_resultado_b4_a_b9(concurso_inicial NUMERIC, concurso_final NUMERIC)
RETURNS TABLE(b4_a_b9_id numeric, b4 numeric,
b5 numeric,
b6 numeric,
b7 numeric,
b8 numeric,
b9 numeric, qt_vezes NUMERIC)
LANGUAGE plpgsql
As $$
Declare
Begin
RETURN QUERY SELECT
ltf_a.b4_a_b9_id,
ltf_a.b4,
ltf_a.b5,
ltf_a.b6,
ltf_a.b7,
ltf_a.b8,
ltf_a.b9,
count(ltf_b.b4_a_b9_id)::numeric as qt_vezes
from lotofacil.lotofacil_id_b4_a_b9 ltf_a
left join lotofacil.lotofacil_resultado_coluna_b ltf_b
on ltf_a.b4_a_b9_id = ltf_b.b4_a_b9_id
AND concurso BETWEEN concurso_inicial AND concurso_final
group by ltf_a.b4_a_b9_id, ltf_a.b4,
ltf_a.b5,
ltf_a.b6,
ltf_a.b7,
ltf_a.b8,
ltf_a.b9
order by ltf_a.b4_a_b9_id, ltf_a.b4 asc,
ltf_a.b5 asc,
ltf_a.b6 asc,
ltf_a.b7 asc,
ltf_a.b8 asc,
ltf_a.b9 asc;
end;
$$;

Drop view if exists lotofacil.v_lotofacil_resultado_b4_a_b10;
create view lotofacil.v_lotofacil_resultado_b4_a_b10 as
Select
ltf_a.b4_a_b10_id,
ltf_a.b4,
ltf_a.b5,
ltf_a.b6,
ltf_a.b7,
ltf_a.b8,
ltf_a.b9,
ltf_a.b10,
count(ltf_b.b4_a_b10_id) as qt_vezes
from
lotofacil.lotofacil_id_b4_a_b10 ltf_a
left join lotofacil.lotofacil_resultado_coluna_b ltf_b
on ltf_a.b4_a_b10_id = ltf_b.b4_a_b10_id
group by ltf_a.b4_a_b10_id,
ltf_a.b4,
ltf_a.b5,
ltf_a.b6,
ltf_a.b7,
ltf_a.b8,
ltf_a.b9,
ltf_a.b10
order by qt_vezes desc,
ltf_a.b4 asc,
ltf_a.b5 asc,
ltf_a.b6 asc,
ltf_a.b7 asc,
ltf_a.b8 asc,
ltf_a.b9 asc,
ltf_a.b10 asc;

DROP FUNCTION IF EXISTS lotofacil.fn_lotofacil_resultado_b4_a_b10( NUMERIC, NUMERIC );
CREATE FUNCTION lotofacil.fn_lotofacil_resultado_b4_a_b10(concurso_inicial NUMERIC, concurso_final NUMERIC)
RETURNS TABLE(b4_a_b10_id numeric, b4 numeric,
b5 numeric,
b6 numeric,
b7 numeric,
b8 numeric,
b9 numeric,
b10 numeric, qt_vezes NUMERIC)
LANGUAGE plpgsql
As $$
Declare
Begin
RETURN QUERY SELECT
ltf_a.b4_a_b10_id,
ltf_a.b4,
ltf_a.b5,
ltf_a.b6,
ltf_a.b7,
ltf_a.b8,
ltf_a.b9,
ltf_a.b10,
count(ltf_b.b4_a_b10_id)::numeric as qt_vezes
from lotofacil.lotofacil_id_b4_a_b10 ltf_a
left join lotofacil.lotofacil_resultado_coluna_b ltf_b
on ltf_a.b4_a_b10_id = ltf_b.b4_a_b10_id
AND concurso BETWEEN concurso_inicial AND concurso_final
group by ltf_a.b4_a_b10_id, ltf_a.b4,
ltf_a.b5,
ltf_a.b6,
ltf_a.b7,
ltf_a.b8,
ltf_a.b9,
ltf_a.b10
order by ltf_a.b4_a_b10_id, ltf_a.b4 asc,
ltf_a.b5 asc,
ltf_a.b6 asc,
ltf_a.b7 asc,
ltf_a.b8 asc,
ltf_a.b9 asc,
ltf_a.b10 asc;
end;
$$;

Drop view if exists lotofacil.v_lotofacil_resultado_b4_a_b11;
create view lotofacil.v_lotofacil_resultado_b4_a_b11 as
Select
ltf_a.b4_a_b11_id,
ltf_a.b4,
ltf_a.b5,
ltf_a.b6,
ltf_a.b7,
ltf_a.b8,
ltf_a.b9,
ltf_a.b10,
ltf_a.b11,
count(ltf_b.b4_a_b11_id) as qt_vezes
from
lotofacil.lotofacil_id_b4_a_b11 ltf_a
left join lotofacil.lotofacil_resultado_coluna_b ltf_b
on ltf_a.b4_a_b11_id = ltf_b.b4_a_b11_id
group by ltf_a.b4_a_b11_id,
ltf_a.b4,
ltf_a.b5,
ltf_a.b6,
ltf_a.b7,
ltf_a.b8,
ltf_a.b9,
ltf_a.b10,
ltf_a.b11
order by qt_vezes desc,
ltf_a.b4 asc,
ltf_a.b5 asc,
ltf_a.b6 asc,
ltf_a.b7 asc,
ltf_a.b8 asc,
ltf_a.b9 asc,
ltf_a.b10 asc,
ltf_a.b11 asc;

DROP FUNCTION IF EXISTS lotofacil.fn_lotofacil_resultado_b4_a_b11( NUMERIC, NUMERIC );
CREATE FUNCTION lotofacil.fn_lotofacil_resultado_b4_a_b11(concurso_inicial NUMERIC, concurso_final NUMERIC)
RETURNS TABLE(b4_a_b11_id numeric, b4 numeric,
b5 numeric,
b6 numeric,
b7 numeric,
b8 numeric,
b9 numeric,
b10 numeric,
b11 numeric, qt_vezes NUMERIC)
LANGUAGE plpgsql
As $$
Declare
Begin
RETURN QUERY SELECT
ltf_a.b4_a_b11_id,
ltf_a.b4,
ltf_a.b5,
ltf_a.b6,
ltf_a.b7,
ltf_a.b8,
ltf_a.b9,
ltf_a.b10,
ltf_a.b11,
count(ltf_b.b4_a_b11_id)::numeric as qt_vezes
from lotofacil.lotofacil_id_b4_a_b11 ltf_a
left join lotofacil.lotofacil_resultado_coluna_b ltf_b
on ltf_a.b4_a_b11_id = ltf_b.b4_a_b11_id
AND concurso BETWEEN concurso_inicial AND concurso_final
group by ltf_a.b4_a_b11_id, ltf_a.b4,
ltf_a.b5,
ltf_a.b6,
ltf_a.b7,
ltf_a.b8,
ltf_a.b9,
ltf_a.b10,
ltf_a.b11
order by ltf_a.b4_a_b11_id, ltf_a.b4 asc,
ltf_a.b5 asc,
ltf_a.b6 asc,
ltf_a.b7 asc,
ltf_a.b8 asc,
ltf_a.b9 asc,
ltf_a.b10 asc,
ltf_a.b11 asc;
end;
$$;

Drop view if exists lotofacil.v_lotofacil_resultado_b4_a_b12;
create view lotofacil.v_lotofacil_resultado_b4_a_b12 as
Select
ltf_a.b4_a_b12_id,
ltf_a.b4,
ltf_a.b5,
ltf_a.b6,
ltf_a.b7,
ltf_a.b8,
ltf_a.b9,
ltf_a.b10,
ltf_a.b11,
ltf_a.b12,
count(ltf_b.b4_a_b12_id) as qt_vezes
from
lotofacil.lotofacil_id_b4_a_b12 ltf_a
left join lotofacil.lotofacil_resultado_coluna_b ltf_b
on ltf_a.b4_a_b12_id = ltf_b.b4_a_b12_id
group by ltf_a.b4_a_b12_id,
ltf_a.b4,
ltf_a.b5,
ltf_a.b6,
ltf_a.b7,
ltf_a.b8,
ltf_a.b9,
ltf_a.b10,
ltf_a.b11,
ltf_a.b12
order by qt_vezes desc,
ltf_a.b4 asc,
ltf_a.b5 asc,
ltf_a.b6 asc,
ltf_a.b7 asc,
ltf_a.b8 asc,
ltf_a.b9 asc,
ltf_a.b10 asc,
ltf_a.b11 asc,
ltf_a.b12 asc;

DROP FUNCTION IF EXISTS lotofacil.fn_lotofacil_resultado_b4_a_b12( NUMERIC, NUMERIC );
CREATE FUNCTION lotofacil.fn_lotofacil_resultado_b4_a_b12(concurso_inicial NUMERIC, concurso_final NUMERIC)
RETURNS TABLE(b4_a_b12_id numeric, b4 numeric,
b5 numeric,
b6 numeric,
b7 numeric,
b8 numeric,
b9 numeric,
b10 numeric,
b11 numeric,
b12 numeric, qt_vezes NUMERIC)
LANGUAGE plpgsql
As $$
Declare
Begin
RETURN QUERY SELECT
ltf_a.b4_a_b12_id,
ltf_a.b4,
ltf_a.b5,
ltf_a.b6,
ltf_a.b7,
ltf_a.b8,
ltf_a.b9,
ltf_a.b10,
ltf_a.b11,
ltf_a.b12,
count(ltf_b.b4_a_b12_id)::numeric as qt_vezes
from lotofacil.lotofacil_id_b4_a_b12 ltf_a
left join lotofacil.lotofacil_resultado_coluna_b ltf_b
on ltf_a.b4_a_b12_id = ltf_b.b4_a_b12_id
AND concurso BETWEEN concurso_inicial AND concurso_final
group by ltf_a.b4_a_b12_id, ltf_a.b4,
ltf_a.b5,
ltf_a.b6,
ltf_a.b7,
ltf_a.b8,
ltf_a.b9,
ltf_a.b10,
ltf_a.b11,
ltf_a.b12
order by ltf_a.b4_a_b12_id, ltf_a.b4 asc,
ltf_a.b5 asc,
ltf_a.b6 asc,
ltf_a.b7 asc,
ltf_a.b8 asc,
ltf_a.b9 asc,
ltf_a.b10 asc,
ltf_a.b11 asc,
ltf_a.b12 asc;
end;
$$;

Drop view if exists lotofacil.v_lotofacil_resultado_b4_a_b13;
create view lotofacil.v_lotofacil_resultado_b4_a_b13 as
Select
ltf_a.b4_a_b13_id,
ltf_a.b4,
ltf_a.b5,
ltf_a.b6,
ltf_a.b7,
ltf_a.b8,
ltf_a.b9,
ltf_a.b10,
ltf_a.b11,
ltf_a.b12,
ltf_a.b13,
count(ltf_b.b4_a_b13_id) as qt_vezes
from
lotofacil.lotofacil_id_b4_a_b13 ltf_a
left join lotofacil.lotofacil_resultado_coluna_b ltf_b
on ltf_a.b4_a_b13_id = ltf_b.b4_a_b13_id
group by ltf_a.b4_a_b13_id,
ltf_a.b4,
ltf_a.b5,
ltf_a.b6,
ltf_a.b7,
ltf_a.b8,
ltf_a.b9,
ltf_a.b10,
ltf_a.b11,
ltf_a.b12,
ltf_a.b13
order by qt_vezes desc,
ltf_a.b4 asc,
ltf_a.b5 asc,
ltf_a.b6 asc,
ltf_a.b7 asc,
ltf_a.b8 asc,
ltf_a.b9 asc,
ltf_a.b10 asc,
ltf_a.b11 asc,
ltf_a.b12 asc,
ltf_a.b13 asc;

DROP FUNCTION IF EXISTS lotofacil.fn_lotofacil_resultado_b4_a_b13( NUMERIC, NUMERIC );
CREATE FUNCTION lotofacil.fn_lotofacil_resultado_b4_a_b13(concurso_inicial NUMERIC, concurso_final NUMERIC)
RETURNS TABLE(b4_a_b13_id numeric, b4 numeric,
b5 numeric,
b6 numeric,
b7 numeric,
b8 numeric,
b9 numeric,
b10 numeric,
b11 numeric,
b12 numeric,
b13 numeric, qt_vezes NUMERIC)
LANGUAGE plpgsql
As $$
Declare
Begin
RETURN QUERY SELECT
ltf_a.b4_a_b13_id,
ltf_a.b4,
ltf_a.b5,
ltf_a.b6,
ltf_a.b7,
ltf_a.b8,
ltf_a.b9,
ltf_a.b10,
ltf_a.b11,
ltf_a.b12,
ltf_a.b13,
count(ltf_b.b4_a_b13_id)::numeric as qt_vezes
from lotofacil.lotofacil_id_b4_a_b13 ltf_a
left join lotofacil.lotofacil_resultado_coluna_b ltf_b
on ltf_a.b4_a_b13_id = ltf_b.b4_a_b13_id
AND concurso BETWEEN concurso_inicial AND concurso_final
group by ltf_a.b4_a_b13_id, ltf_a.b4,
ltf_a.b5,
ltf_a.b6,
ltf_a.b7,
ltf_a.b8,
ltf_a.b9,
ltf_a.b10,
ltf_a.b11,
ltf_a.b12,
ltf_a.b13
order by ltf_a.b4_a_b13_id, ltf_a.b4 asc,
ltf_a.b5 asc,
ltf_a.b6 asc,
ltf_a.b7 asc,
ltf_a.b8 asc,
ltf_a.b9 asc,
ltf_a.b10 asc,
ltf_a.b11 asc,
ltf_a.b12 asc,
ltf_a.b13 asc;
end;
$$;

Drop view if exists lotofacil.v_lotofacil_resultado_b4_a_b14;
create view lotofacil.v_lotofacil_resultado_b4_a_b14 as
Select
ltf_a.b4_a_b14_id,
ltf_a.b4,
ltf_a.b5,
ltf_a.b6,
ltf_a.b7,
ltf_a.b8,
ltf_a.b9,
ltf_a.b10,
ltf_a.b11,
ltf_a.b12,
ltf_a.b13,
ltf_a.b14,
count(ltf_b.b4_a_b14_id) as qt_vezes
from
lotofacil.lotofacil_id_b4_a_b14 ltf_a
left join lotofacil.lotofacil_resultado_coluna_b ltf_b
on ltf_a.b4_a_b14_id = ltf_b.b4_a_b14_id
group by ltf_a.b4_a_b14_id,
ltf_a.b4,
ltf_a.b5,
ltf_a.b6,
ltf_a.b7,
ltf_a.b8,
ltf_a.b9,
ltf_a.b10,
ltf_a.b11,
ltf_a.b12,
ltf_a.b13,
ltf_a.b14
order by qt_vezes desc,
ltf_a.b4 asc,
ltf_a.b5 asc,
ltf_a.b6 asc,
ltf_a.b7 asc,
ltf_a.b8 asc,
ltf_a.b9 asc,
ltf_a.b10 asc,
ltf_a.b11 asc,
ltf_a.b12 asc,
ltf_a.b13 asc,
ltf_a.b14 asc;

DROP FUNCTION IF EXISTS lotofacil.fn_lotofacil_resultado_b4_a_b14( NUMERIC, NUMERIC );
CREATE FUNCTION lotofacil.fn_lotofacil_resultado_b4_a_b14(concurso_inicial NUMERIC, concurso_final NUMERIC)
RETURNS TABLE(b4_a_b14_id numeric, b4 numeric,
b5 numeric,
b6 numeric,
b7 numeric,
b8 numeric,
b9 numeric,
b10 numeric,
b11 numeric,
b12 numeric,
b13 numeric,
b14 numeric, qt_vezes NUMERIC)
LANGUAGE plpgsql
As $$
Declare
Begin
RETURN QUERY SELECT
ltf_a.b4_a_b14_id,
ltf_a.b4,
ltf_a.b5,
ltf_a.b6,
ltf_a.b7,
ltf_a.b8,
ltf_a.b9,
ltf_a.b10,
ltf_a.b11,
ltf_a.b12,
ltf_a.b13,
ltf_a.b14,
count(ltf_b.b4_a_b14_id)::numeric as qt_vezes
from lotofacil.lotofacil_id_b4_a_b14 ltf_a
left join lotofacil.lotofacil_resultado_coluna_b ltf_b
on ltf_a.b4_a_b14_id = ltf_b.b4_a_b14_id
AND concurso BETWEEN concurso_inicial AND concurso_final
group by ltf_a.b4_a_b14_id, ltf_a.b4,
ltf_a.b5,
ltf_a.b6,
ltf_a.b7,
ltf_a.b8,
ltf_a.b9,
ltf_a.b10,
ltf_a.b11,
ltf_a.b12,
ltf_a.b13,
ltf_a.b14
order by ltf_a.b4_a_b14_id, ltf_a.b4 asc,
ltf_a.b5 asc,
ltf_a.b6 asc,
ltf_a.b7 asc,
ltf_a.b8 asc,
ltf_a.b9 asc,
ltf_a.b10 asc,
ltf_a.b11 asc,
ltf_a.b12 asc,
ltf_a.b13 asc,
ltf_a.b14 asc;
end;
$$;

Drop view if exists lotofacil.v_lotofacil_resultado_b4_a_b15;
create view lotofacil.v_lotofacil_resultado_b4_a_b15 as
Select
ltf_a.b4_a_b15_id,
ltf_a.b4,
ltf_a.b5,
ltf_a.b6,
ltf_a.b7,
ltf_a.b8,
ltf_a.b9,
ltf_a.b10,
ltf_a.b11,
ltf_a.b12,
ltf_a.b13,
ltf_a.b14,
ltf_a.b15,
count(ltf_b.b4_a_b15_id) as qt_vezes
from
lotofacil.lotofacil_id_b4_a_b15 ltf_a
left join lotofacil.lotofacil_resultado_coluna_b ltf_b
on ltf_a.b4_a_b15_id = ltf_b.b4_a_b15_id
group by ltf_a.b4_a_b15_id,
ltf_a.b4,
ltf_a.b5,
ltf_a.b6,
ltf_a.b7,
ltf_a.b8,
ltf_a.b9,
ltf_a.b10,
ltf_a.b11,
ltf_a.b12,
ltf_a.b13,
ltf_a.b14,
ltf_a.b15
order by qt_vezes desc,
ltf_a.b4 asc,
ltf_a.b5 asc,
ltf_a.b6 asc,
ltf_a.b7 asc,
ltf_a.b8 asc,
ltf_a.b9 asc,
ltf_a.b10 asc,
ltf_a.b11 asc,
ltf_a.b12 asc,
ltf_a.b13 asc,
ltf_a.b14 asc,
ltf_a.b15 asc;

DROP FUNCTION IF EXISTS lotofacil.fn_lotofacil_resultado_b4_a_b15( NUMERIC, NUMERIC );
CREATE FUNCTION lotofacil.fn_lotofacil_resultado_b4_a_b15(concurso_inicial NUMERIC, concurso_final NUMERIC)
RETURNS TABLE(b4_a_b15_id numeric, b4 numeric,
b5 numeric,
b6 numeric,
b7 numeric,
b8 numeric,
b9 numeric,
b10 numeric,
b11 numeric,
b12 numeric,
b13 numeric,
b14 numeric,
b15 numeric, qt_vezes NUMERIC)
LANGUAGE plpgsql
As $$
Declare
Begin
RETURN QUERY SELECT
ltf_a.b4_a_b15_id,
ltf_a.b4,
ltf_a.b5,
ltf_a.b6,
ltf_a.b7,
ltf_a.b8,
ltf_a.b9,
ltf_a.b10,
ltf_a.b11,
ltf_a.b12,
ltf_a.b13,
ltf_a.b14,
ltf_a.b15,
count(ltf_b.b4_a_b15_id)::numeric as qt_vezes
from lotofacil.lotofacil_id_b4_a_b15 ltf_a
left join lotofacil.lotofacil_resultado_coluna_b ltf_b
on ltf_a.b4_a_b15_id = ltf_b.b4_a_b15_id
AND concurso BETWEEN concurso_inicial AND concurso_final
group by ltf_a.b4_a_b15_id, ltf_a.b4,
ltf_a.b5,
ltf_a.b6,
ltf_a.b7,
ltf_a.b8,
ltf_a.b9,
ltf_a.b10,
ltf_a.b11,
ltf_a.b12,
ltf_a.b13,
ltf_a.b14,
ltf_a.b15
order by ltf_a.b4_a_b15_id, ltf_a.b4 asc,
ltf_a.b5 asc,
ltf_a.b6 asc,
ltf_a.b7 asc,
ltf_a.b8 asc,
ltf_a.b9 asc,
ltf_a.b10 asc,
ltf_a.b11 asc,
ltf_a.b12 asc,
ltf_a.b13 asc,
ltf_a.b14 asc,
ltf_a.b15 asc;
end;
$$;

Drop view if exists lotofacil.v_lotofacil_resultado_b5_a_b5;
create view lotofacil.v_lotofacil_resultado_b5_a_b5 as
Select
ltf_a.b5_a_b5_id,
ltf_a.b5,
count(ltf_b.b5_a_b5_id) as qt_vezes
from
lotofacil.lotofacil_id_b5_a_b5 ltf_a
left join lotofacil.lotofacil_resultado_coluna_b ltf_b
on ltf_a.b5_a_b5_id = ltf_b.b5_a_b5_id
group by ltf_a.b5_a_b5_id,
ltf_a.b5
order by qt_vezes desc,
ltf_a.b5 asc;

DROP FUNCTION IF EXISTS lotofacil.fn_lotofacil_resultado_b5_a_b5( NUMERIC, NUMERIC );
CREATE FUNCTION lotofacil.fn_lotofacil_resultado_b5_a_b5(concurso_inicial NUMERIC, concurso_final NUMERIC)
RETURNS TABLE(b5_a_b5_id numeric, b5 numeric, qt_vezes NUMERIC)
LANGUAGE plpgsql
As $$
Declare
Begin
RETURN QUERY SELECT
ltf_a.b5_a_b5_id,
ltf_a.b5,
count(ltf_b.b5_a_b5_id)::numeric as qt_vezes
from lotofacil.lotofacil_id_b5_a_b5 ltf_a
left join lotofacil.lotofacil_resultado_coluna_b ltf_b
on ltf_a.b5_a_b5_id = ltf_b.b5_a_b5_id
AND concurso BETWEEN concurso_inicial AND concurso_final
group by ltf_a.b5_a_b5_id, ltf_a.b5
order by ltf_a.b5_a_b5_id, ltf_a.b5 asc;
end;
$$;

Drop view if exists lotofacil.v_lotofacil_resultado_b5_a_b6;
create view lotofacil.v_lotofacil_resultado_b5_a_b6 as
Select
ltf_a.b5_a_b6_id,
ltf_a.b5,
ltf_a.b6,
count(ltf_b.b5_a_b6_id) as qt_vezes
from
lotofacil.lotofacil_id_b5_a_b6 ltf_a
left join lotofacil.lotofacil_resultado_coluna_b ltf_b
on ltf_a.b5_a_b6_id = ltf_b.b5_a_b6_id
group by ltf_a.b5_a_b6_id,
ltf_a.b5,
ltf_a.b6
order by qt_vezes desc,
ltf_a.b5 asc,
ltf_a.b6 asc;

DROP FUNCTION IF EXISTS lotofacil.fn_lotofacil_resultado_b5_a_b6( NUMERIC, NUMERIC );
CREATE FUNCTION lotofacil.fn_lotofacil_resultado_b5_a_b6(concurso_inicial NUMERIC, concurso_final NUMERIC)
RETURNS TABLE(b5_a_b6_id numeric, b5 numeric,
b6 numeric, qt_vezes NUMERIC)
LANGUAGE plpgsql
As $$
Declare
Begin
RETURN QUERY SELECT
ltf_a.b5_a_b6_id,
ltf_a.b5,
ltf_a.b6,
count(ltf_b.b5_a_b6_id)::numeric as qt_vezes
from lotofacil.lotofacil_id_b5_a_b6 ltf_a
left join lotofacil.lotofacil_resultado_coluna_b ltf_b
on ltf_a.b5_a_b6_id = ltf_b.b5_a_b6_id
AND concurso BETWEEN concurso_inicial AND concurso_final
group by ltf_a.b5_a_b6_id, ltf_a.b5,
ltf_a.b6
order by ltf_a.b5_a_b6_id, ltf_a.b5 asc,
ltf_a.b6 asc;
end;
$$;

Drop view if exists lotofacil.v_lotofacil_resultado_b5_a_b7;
create view lotofacil.v_lotofacil_resultado_b5_a_b7 as
Select
ltf_a.b5_a_b7_id,
ltf_a.b5,
ltf_a.b6,
ltf_a.b7,
count(ltf_b.b5_a_b7_id) as qt_vezes
from
lotofacil.lotofacil_id_b5_a_b7 ltf_a
left join lotofacil.lotofacil_resultado_coluna_b ltf_b
on ltf_a.b5_a_b7_id = ltf_b.b5_a_b7_id
group by ltf_a.b5_a_b7_id,
ltf_a.b5,
ltf_a.b6,
ltf_a.b7
order by qt_vezes desc,
ltf_a.b5 asc,
ltf_a.b6 asc,
ltf_a.b7 asc;

DROP FUNCTION IF EXISTS lotofacil.fn_lotofacil_resultado_b5_a_b7( NUMERIC, NUMERIC );
CREATE FUNCTION lotofacil.fn_lotofacil_resultado_b5_a_b7(concurso_inicial NUMERIC, concurso_final NUMERIC)
RETURNS TABLE(b5_a_b7_id numeric, b5 numeric,
b6 numeric,
b7 numeric, qt_vezes NUMERIC)
LANGUAGE plpgsql
As $$
Declare
Begin
RETURN QUERY SELECT
ltf_a.b5_a_b7_id,
ltf_a.b5,
ltf_a.b6,
ltf_a.b7,
count(ltf_b.b5_a_b7_id)::numeric as qt_vezes
from lotofacil.lotofacil_id_b5_a_b7 ltf_a
left join lotofacil.lotofacil_resultado_coluna_b ltf_b
on ltf_a.b5_a_b7_id = ltf_b.b5_a_b7_id
AND concurso BETWEEN concurso_inicial AND concurso_final
group by ltf_a.b5_a_b7_id, ltf_a.b5,
ltf_a.b6,
ltf_a.b7
order by ltf_a.b5_a_b7_id, ltf_a.b5 asc,
ltf_a.b6 asc,
ltf_a.b7 asc;
end;
$$;

Drop view if exists lotofacil.v_lotofacil_resultado_b5_a_b8;
create view lotofacil.v_lotofacil_resultado_b5_a_b8 as
Select
ltf_a.b5_a_b8_id,
ltf_a.b5,
ltf_a.b6,
ltf_a.b7,
ltf_a.b8,
count(ltf_b.b5_a_b8_id) as qt_vezes
from
lotofacil.lotofacil_id_b5_a_b8 ltf_a
left join lotofacil.lotofacil_resultado_coluna_b ltf_b
on ltf_a.b5_a_b8_id = ltf_b.b5_a_b8_id
group by ltf_a.b5_a_b8_id,
ltf_a.b5,
ltf_a.b6,
ltf_a.b7,
ltf_a.b8
order by qt_vezes desc,
ltf_a.b5 asc,
ltf_a.b6 asc,
ltf_a.b7 asc,
ltf_a.b8 asc;

DROP FUNCTION IF EXISTS lotofacil.fn_lotofacil_resultado_b5_a_b8( NUMERIC, NUMERIC );
CREATE FUNCTION lotofacil.fn_lotofacil_resultado_b5_a_b8(concurso_inicial NUMERIC, concurso_final NUMERIC)
RETURNS TABLE(b5_a_b8_id numeric, b5 numeric,
b6 numeric,
b7 numeric,
b8 numeric, qt_vezes NUMERIC)
LANGUAGE plpgsql
As $$
Declare
Begin
RETURN QUERY SELECT
ltf_a.b5_a_b8_id,
ltf_a.b5,
ltf_a.b6,
ltf_a.b7,
ltf_a.b8,
count(ltf_b.b5_a_b8_id)::numeric as qt_vezes
from lotofacil.lotofacil_id_b5_a_b8 ltf_a
left join lotofacil.lotofacil_resultado_coluna_b ltf_b
on ltf_a.b5_a_b8_id = ltf_b.b5_a_b8_id
AND concurso BETWEEN concurso_inicial AND concurso_final
group by ltf_a.b5_a_b8_id, ltf_a.b5,
ltf_a.b6,
ltf_a.b7,
ltf_a.b8
order by ltf_a.b5_a_b8_id, ltf_a.b5 asc,
ltf_a.b6 asc,
ltf_a.b7 asc,
ltf_a.b8 asc;
end;
$$;

Drop view if exists lotofacil.v_lotofacil_resultado_b5_a_b9;
create view lotofacil.v_lotofacil_resultado_b5_a_b9 as
Select
ltf_a.b5_a_b9_id,
ltf_a.b5,
ltf_a.b6,
ltf_a.b7,
ltf_a.b8,
ltf_a.b9,
count(ltf_b.b5_a_b9_id) as qt_vezes
from
lotofacil.lotofacil_id_b5_a_b9 ltf_a
left join lotofacil.lotofacil_resultado_coluna_b ltf_b
on ltf_a.b5_a_b9_id = ltf_b.b5_a_b9_id
group by ltf_a.b5_a_b9_id,
ltf_a.b5,
ltf_a.b6,
ltf_a.b7,
ltf_a.b8,
ltf_a.b9
order by qt_vezes desc,
ltf_a.b5 asc,
ltf_a.b6 asc,
ltf_a.b7 asc,
ltf_a.b8 asc,
ltf_a.b9 asc;

DROP FUNCTION IF EXISTS lotofacil.fn_lotofacil_resultado_b5_a_b9( NUMERIC, NUMERIC );
CREATE FUNCTION lotofacil.fn_lotofacil_resultado_b5_a_b9(concurso_inicial NUMERIC, concurso_final NUMERIC)
RETURNS TABLE(b5_a_b9_id numeric, b5 numeric,
b6 numeric,
b7 numeric,
b8 numeric,
b9 numeric, qt_vezes NUMERIC)
LANGUAGE plpgsql
As $$
Declare
Begin
RETURN QUERY SELECT
ltf_a.b5_a_b9_id,
ltf_a.b5,
ltf_a.b6,
ltf_a.b7,
ltf_a.b8,
ltf_a.b9,
count(ltf_b.b5_a_b9_id)::numeric as qt_vezes
from lotofacil.lotofacil_id_b5_a_b9 ltf_a
left join lotofacil.lotofacil_resultado_coluna_b ltf_b
on ltf_a.b5_a_b9_id = ltf_b.b5_a_b9_id
AND concurso BETWEEN concurso_inicial AND concurso_final
group by ltf_a.b5_a_b9_id, ltf_a.b5,
ltf_a.b6,
ltf_a.b7,
ltf_a.b8,
ltf_a.b9
order by ltf_a.b5_a_b9_id, ltf_a.b5 asc,
ltf_a.b6 asc,
ltf_a.b7 asc,
ltf_a.b8 asc,
ltf_a.b9 asc;
end;
$$;

Drop view if exists lotofacil.v_lotofacil_resultado_b5_a_b10;
create view lotofacil.v_lotofacil_resultado_b5_a_b10 as
Select
ltf_a.b5_a_b10_id,
ltf_a.b5,
ltf_a.b6,
ltf_a.b7,
ltf_a.b8,
ltf_a.b9,
ltf_a.b10,
count(ltf_b.b5_a_b10_id) as qt_vezes
from
lotofacil.lotofacil_id_b5_a_b10 ltf_a
left join lotofacil.lotofacil_resultado_coluna_b ltf_b
on ltf_a.b5_a_b10_id = ltf_b.b5_a_b10_id
group by ltf_a.b5_a_b10_id,
ltf_a.b5,
ltf_a.b6,
ltf_a.b7,
ltf_a.b8,
ltf_a.b9,
ltf_a.b10
order by qt_vezes desc,
ltf_a.b5 asc,
ltf_a.b6 asc,
ltf_a.b7 asc,
ltf_a.b8 asc,
ltf_a.b9 asc,
ltf_a.b10 asc;

DROP FUNCTION IF EXISTS lotofacil.fn_lotofacil_resultado_b5_a_b10( NUMERIC, NUMERIC );
CREATE FUNCTION lotofacil.fn_lotofacil_resultado_b5_a_b10(concurso_inicial NUMERIC, concurso_final NUMERIC)
RETURNS TABLE(b5_a_b10_id numeric, b5 numeric,
b6 numeric,
b7 numeric,
b8 numeric,
b9 numeric,
b10 numeric, qt_vezes NUMERIC)
LANGUAGE plpgsql
As $$
Declare
Begin
RETURN QUERY SELECT
ltf_a.b5_a_b10_id,
ltf_a.b5,
ltf_a.b6,
ltf_a.b7,
ltf_a.b8,
ltf_a.b9,
ltf_a.b10,
count(ltf_b.b5_a_b10_id)::numeric as qt_vezes
from lotofacil.lotofacil_id_b5_a_b10 ltf_a
left join lotofacil.lotofacil_resultado_coluna_b ltf_b
on ltf_a.b5_a_b10_id = ltf_b.b5_a_b10_id
AND concurso BETWEEN concurso_inicial AND concurso_final
group by ltf_a.b5_a_b10_id, ltf_a.b5,
ltf_a.b6,
ltf_a.b7,
ltf_a.b8,
ltf_a.b9,
ltf_a.b10
order by ltf_a.b5_a_b10_id, ltf_a.b5 asc,
ltf_a.b6 asc,
ltf_a.b7 asc,
ltf_a.b8 asc,
ltf_a.b9 asc,
ltf_a.b10 asc;
end;
$$;

Drop view if exists lotofacil.v_lotofacil_resultado_b5_a_b11;
create view lotofacil.v_lotofacil_resultado_b5_a_b11 as
Select
ltf_a.b5_a_b11_id,
ltf_a.b5,
ltf_a.b6,
ltf_a.b7,
ltf_a.b8,
ltf_a.b9,
ltf_a.b10,
ltf_a.b11,
count(ltf_b.b5_a_b11_id) as qt_vezes
from
lotofacil.lotofacil_id_b5_a_b11 ltf_a
left join lotofacil.lotofacil_resultado_coluna_b ltf_b
on ltf_a.b5_a_b11_id = ltf_b.b5_a_b11_id
group by ltf_a.b5_a_b11_id,
ltf_a.b5,
ltf_a.b6,
ltf_a.b7,
ltf_a.b8,
ltf_a.b9,
ltf_a.b10,
ltf_a.b11
order by qt_vezes desc,
ltf_a.b5 asc,
ltf_a.b6 asc,
ltf_a.b7 asc,
ltf_a.b8 asc,
ltf_a.b9 asc,
ltf_a.b10 asc,
ltf_a.b11 asc;

DROP FUNCTION IF EXISTS lotofacil.fn_lotofacil_resultado_b5_a_b11( NUMERIC, NUMERIC );
CREATE FUNCTION lotofacil.fn_lotofacil_resultado_b5_a_b11(concurso_inicial NUMERIC, concurso_final NUMERIC)
RETURNS TABLE(b5_a_b11_id numeric, b5 numeric,
b6 numeric,
b7 numeric,
b8 numeric,
b9 numeric,
b10 numeric,
b11 numeric, qt_vezes NUMERIC)
LANGUAGE plpgsql
As $$
Declare
Begin
RETURN QUERY SELECT
ltf_a.b5_a_b11_id,
ltf_a.b5,
ltf_a.b6,
ltf_a.b7,
ltf_a.b8,
ltf_a.b9,
ltf_a.b10,
ltf_a.b11,
count(ltf_b.b5_a_b11_id)::numeric as qt_vezes
from lotofacil.lotofacil_id_b5_a_b11 ltf_a
left join lotofacil.lotofacil_resultado_coluna_b ltf_b
on ltf_a.b5_a_b11_id = ltf_b.b5_a_b11_id
AND concurso BETWEEN concurso_inicial AND concurso_final
group by ltf_a.b5_a_b11_id, ltf_a.b5,
ltf_a.b6,
ltf_a.b7,
ltf_a.b8,
ltf_a.b9,
ltf_a.b10,
ltf_a.b11
order by ltf_a.b5_a_b11_id, ltf_a.b5 asc,
ltf_a.b6 asc,
ltf_a.b7 asc,
ltf_a.b8 asc,
ltf_a.b9 asc,
ltf_a.b10 asc,
ltf_a.b11 asc;
end;
$$;

Drop view if exists lotofacil.v_lotofacil_resultado_b5_a_b12;
create view lotofacil.v_lotofacil_resultado_b5_a_b12 as
Select
ltf_a.b5_a_b12_id,
ltf_a.b5,
ltf_a.b6,
ltf_a.b7,
ltf_a.b8,
ltf_a.b9,
ltf_a.b10,
ltf_a.b11,
ltf_a.b12,
count(ltf_b.b5_a_b12_id) as qt_vezes
from
lotofacil.lotofacil_id_b5_a_b12 ltf_a
left join lotofacil.lotofacil_resultado_coluna_b ltf_b
on ltf_a.b5_a_b12_id = ltf_b.b5_a_b12_id
group by ltf_a.b5_a_b12_id,
ltf_a.b5,
ltf_a.b6,
ltf_a.b7,
ltf_a.b8,
ltf_a.b9,
ltf_a.b10,
ltf_a.b11,
ltf_a.b12
order by qt_vezes desc,
ltf_a.b5 asc,
ltf_a.b6 asc,
ltf_a.b7 asc,
ltf_a.b8 asc,
ltf_a.b9 asc,
ltf_a.b10 asc,
ltf_a.b11 asc,
ltf_a.b12 asc;

DROP FUNCTION IF EXISTS lotofacil.fn_lotofacil_resultado_b5_a_b12( NUMERIC, NUMERIC );
CREATE FUNCTION lotofacil.fn_lotofacil_resultado_b5_a_b12(concurso_inicial NUMERIC, concurso_final NUMERIC)
RETURNS TABLE(b5_a_b12_id numeric, b5 numeric,
b6 numeric,
b7 numeric,
b8 numeric,
b9 numeric,
b10 numeric,
b11 numeric,
b12 numeric, qt_vezes NUMERIC)
LANGUAGE plpgsql
As $$
Declare
Begin
RETURN QUERY SELECT
ltf_a.b5_a_b12_id,
ltf_a.b5,
ltf_a.b6,
ltf_a.b7,
ltf_a.b8,
ltf_a.b9,
ltf_a.b10,
ltf_a.b11,
ltf_a.b12,
count(ltf_b.b5_a_b12_id)::numeric as qt_vezes
from lotofacil.lotofacil_id_b5_a_b12 ltf_a
left join lotofacil.lotofacil_resultado_coluna_b ltf_b
on ltf_a.b5_a_b12_id = ltf_b.b5_a_b12_id
AND concurso BETWEEN concurso_inicial AND concurso_final
group by ltf_a.b5_a_b12_id, ltf_a.b5,
ltf_a.b6,
ltf_a.b7,
ltf_a.b8,
ltf_a.b9,
ltf_a.b10,
ltf_a.b11,
ltf_a.b12
order by ltf_a.b5_a_b12_id, ltf_a.b5 asc,
ltf_a.b6 asc,
ltf_a.b7 asc,
ltf_a.b8 asc,
ltf_a.b9 asc,
ltf_a.b10 asc,
ltf_a.b11 asc,
ltf_a.b12 asc;
end;
$$;

Drop view if exists lotofacil.v_lotofacil_resultado_b5_a_b13;
create view lotofacil.v_lotofacil_resultado_b5_a_b13 as
Select
ltf_a.b5_a_b13_id,
ltf_a.b5,
ltf_a.b6,
ltf_a.b7,
ltf_a.b8,
ltf_a.b9,
ltf_a.b10,
ltf_a.b11,
ltf_a.b12,
ltf_a.b13,
count(ltf_b.b5_a_b13_id) as qt_vezes
from
lotofacil.lotofacil_id_b5_a_b13 ltf_a
left join lotofacil.lotofacil_resultado_coluna_b ltf_b
on ltf_a.b5_a_b13_id = ltf_b.b5_a_b13_id
group by ltf_a.b5_a_b13_id,
ltf_a.b5,
ltf_a.b6,
ltf_a.b7,
ltf_a.b8,
ltf_a.b9,
ltf_a.b10,
ltf_a.b11,
ltf_a.b12,
ltf_a.b13
order by qt_vezes desc,
ltf_a.b5 asc,
ltf_a.b6 asc,
ltf_a.b7 asc,
ltf_a.b8 asc,
ltf_a.b9 asc,
ltf_a.b10 asc,
ltf_a.b11 asc,
ltf_a.b12 asc,
ltf_a.b13 asc;

DROP FUNCTION IF EXISTS lotofacil.fn_lotofacil_resultado_b5_a_b13( NUMERIC, NUMERIC );
CREATE FUNCTION lotofacil.fn_lotofacil_resultado_b5_a_b13(concurso_inicial NUMERIC, concurso_final NUMERIC)
RETURNS TABLE(b5_a_b13_id numeric, b5 numeric,
b6 numeric,
b7 numeric,
b8 numeric,
b9 numeric,
b10 numeric,
b11 numeric,
b12 numeric,
b13 numeric, qt_vezes NUMERIC)
LANGUAGE plpgsql
As $$
Declare
Begin
RETURN QUERY SELECT
ltf_a.b5_a_b13_id,
ltf_a.b5,
ltf_a.b6,
ltf_a.b7,
ltf_a.b8,
ltf_a.b9,
ltf_a.b10,
ltf_a.b11,
ltf_a.b12,
ltf_a.b13,
count(ltf_b.b5_a_b13_id)::numeric as qt_vezes
from lotofacil.lotofacil_id_b5_a_b13 ltf_a
left join lotofacil.lotofacil_resultado_coluna_b ltf_b
on ltf_a.b5_a_b13_id = ltf_b.b5_a_b13_id
AND concurso BETWEEN concurso_inicial AND concurso_final
group by ltf_a.b5_a_b13_id, ltf_a.b5,
ltf_a.b6,
ltf_a.b7,
ltf_a.b8,
ltf_a.b9,
ltf_a.b10,
ltf_a.b11,
ltf_a.b12,
ltf_a.b13
order by ltf_a.b5_a_b13_id, ltf_a.b5 asc,
ltf_a.b6 asc,
ltf_a.b7 asc,
ltf_a.b8 asc,
ltf_a.b9 asc,
ltf_a.b10 asc,
ltf_a.b11 asc,
ltf_a.b12 asc,
ltf_a.b13 asc;
end;
$$;

Drop view if exists lotofacil.v_lotofacil_resultado_b5_a_b14;
create view lotofacil.v_lotofacil_resultado_b5_a_b14 as
Select
ltf_a.b5_a_b14_id,
ltf_a.b5,
ltf_a.b6,
ltf_a.b7,
ltf_a.b8,
ltf_a.b9,
ltf_a.b10,
ltf_a.b11,
ltf_a.b12,
ltf_a.b13,
ltf_a.b14,
count(ltf_b.b5_a_b14_id) as qt_vezes
from
lotofacil.lotofacil_id_b5_a_b14 ltf_a
left join lotofacil.lotofacil_resultado_coluna_b ltf_b
on ltf_a.b5_a_b14_id = ltf_b.b5_a_b14_id
group by ltf_a.b5_a_b14_id,
ltf_a.b5,
ltf_a.b6,
ltf_a.b7,
ltf_a.b8,
ltf_a.b9,
ltf_a.b10,
ltf_a.b11,
ltf_a.b12,
ltf_a.b13,
ltf_a.b14
order by qt_vezes desc,
ltf_a.b5 asc,
ltf_a.b6 asc,
ltf_a.b7 asc,
ltf_a.b8 asc,
ltf_a.b9 asc,
ltf_a.b10 asc,
ltf_a.b11 asc,
ltf_a.b12 asc,
ltf_a.b13 asc,
ltf_a.b14 asc;

DROP FUNCTION IF EXISTS lotofacil.fn_lotofacil_resultado_b5_a_b14( NUMERIC, NUMERIC );
CREATE FUNCTION lotofacil.fn_lotofacil_resultado_b5_a_b14(concurso_inicial NUMERIC, concurso_final NUMERIC)
RETURNS TABLE(b5_a_b14_id numeric, b5 numeric,
b6 numeric,
b7 numeric,
b8 numeric,
b9 numeric,
b10 numeric,
b11 numeric,
b12 numeric,
b13 numeric,
b14 numeric, qt_vezes NUMERIC)
LANGUAGE plpgsql
As $$
Declare
Begin
RETURN QUERY SELECT
ltf_a.b5_a_b14_id,
ltf_a.b5,
ltf_a.b6,
ltf_a.b7,
ltf_a.b8,
ltf_a.b9,
ltf_a.b10,
ltf_a.b11,
ltf_a.b12,
ltf_a.b13,
ltf_a.b14,
count(ltf_b.b5_a_b14_id)::numeric as qt_vezes
from lotofacil.lotofacil_id_b5_a_b14 ltf_a
left join lotofacil.lotofacil_resultado_coluna_b ltf_b
on ltf_a.b5_a_b14_id = ltf_b.b5_a_b14_id
AND concurso BETWEEN concurso_inicial AND concurso_final
group by ltf_a.b5_a_b14_id, ltf_a.b5,
ltf_a.b6,
ltf_a.b7,
ltf_a.b8,
ltf_a.b9,
ltf_a.b10,
ltf_a.b11,
ltf_a.b12,
ltf_a.b13,
ltf_a.b14
order by ltf_a.b5_a_b14_id, ltf_a.b5 asc,
ltf_a.b6 asc,
ltf_a.b7 asc,
ltf_a.b8 asc,
ltf_a.b9 asc,
ltf_a.b10 asc,
ltf_a.b11 asc,
ltf_a.b12 asc,
ltf_a.b13 asc,
ltf_a.b14 asc;
end;
$$;

Drop view if exists lotofacil.v_lotofacil_resultado_b5_a_b15;
create view lotofacil.v_lotofacil_resultado_b5_a_b15 as
Select
ltf_a.b5_a_b15_id,
ltf_a.b5,
ltf_a.b6,
ltf_a.b7,
ltf_a.b8,
ltf_a.b9,
ltf_a.b10,
ltf_a.b11,
ltf_a.b12,
ltf_a.b13,
ltf_a.b14,
ltf_a.b15,
count(ltf_b.b5_a_b15_id) as qt_vezes
from
lotofacil.lotofacil_id_b5_a_b15 ltf_a
left join lotofacil.lotofacil_resultado_coluna_b ltf_b
on ltf_a.b5_a_b15_id = ltf_b.b5_a_b15_id
group by ltf_a.b5_a_b15_id,
ltf_a.b5,
ltf_a.b6,
ltf_a.b7,
ltf_a.b8,
ltf_a.b9,
ltf_a.b10,
ltf_a.b11,
ltf_a.b12,
ltf_a.b13,
ltf_a.b14,
ltf_a.b15
order by qt_vezes desc,
ltf_a.b5 asc,
ltf_a.b6 asc,
ltf_a.b7 asc,
ltf_a.b8 asc,
ltf_a.b9 asc,
ltf_a.b10 asc,
ltf_a.b11 asc,
ltf_a.b12 asc,
ltf_a.b13 asc,
ltf_a.b14 asc,
ltf_a.b15 asc;

DROP FUNCTION IF EXISTS lotofacil.fn_lotofacil_resultado_b5_a_b15( NUMERIC, NUMERIC );
CREATE FUNCTION lotofacil.fn_lotofacil_resultado_b5_a_b15(concurso_inicial NUMERIC, concurso_final NUMERIC)
RETURNS TABLE(b5_a_b15_id numeric, b5 numeric,
b6 numeric,
b7 numeric,
b8 numeric,
b9 numeric,
b10 numeric,
b11 numeric,
b12 numeric,
b13 numeric,
b14 numeric,
b15 numeric, qt_vezes NUMERIC)
LANGUAGE plpgsql
As $$
Declare
Begin
RETURN QUERY SELECT
ltf_a.b5_a_b15_id,
ltf_a.b5,
ltf_a.b6,
ltf_a.b7,
ltf_a.b8,
ltf_a.b9,
ltf_a.b10,
ltf_a.b11,
ltf_a.b12,
ltf_a.b13,
ltf_a.b14,
ltf_a.b15,
count(ltf_b.b5_a_b15_id)::numeric as qt_vezes
from lotofacil.lotofacil_id_b5_a_b15 ltf_a
left join lotofacil.lotofacil_resultado_coluna_b ltf_b
on ltf_a.b5_a_b15_id = ltf_b.b5_a_b15_id
AND concurso BETWEEN concurso_inicial AND concurso_final
group by ltf_a.b5_a_b15_id, ltf_a.b5,
ltf_a.b6,
ltf_a.b7,
ltf_a.b8,
ltf_a.b9,
ltf_a.b10,
ltf_a.b11,
ltf_a.b12,
ltf_a.b13,
ltf_a.b14,
ltf_a.b15
order by ltf_a.b5_a_b15_id, ltf_a.b5 asc,
ltf_a.b6 asc,
ltf_a.b7 asc,
ltf_a.b8 asc,
ltf_a.b9 asc,
ltf_a.b10 asc,
ltf_a.b11 asc,
ltf_a.b12 asc,
ltf_a.b13 asc,
ltf_a.b14 asc,
ltf_a.b15 asc;
end;
$$;

Drop view if exists lotofacil.v_lotofacil_resultado_b6_a_b6;
create view lotofacil.v_lotofacil_resultado_b6_a_b6 as
Select
ltf_a.b6_a_b6_id,
ltf_a.b6,
count(ltf_b.b6_a_b6_id) as qt_vezes
from
lotofacil.lotofacil_id_b6_a_b6 ltf_a
left join lotofacil.lotofacil_resultado_coluna_b ltf_b
on ltf_a.b6_a_b6_id = ltf_b.b6_a_b6_id
group by ltf_a.b6_a_b6_id,
ltf_a.b6
order by qt_vezes desc,
ltf_a.b6 asc;

DROP FUNCTION IF EXISTS lotofacil.fn_lotofacil_resultado_b6_a_b6( NUMERIC, NUMERIC );
CREATE FUNCTION lotofacil.fn_lotofacil_resultado_b6_a_b6(concurso_inicial NUMERIC, concurso_final NUMERIC)
RETURNS TABLE(b6_a_b6_id numeric, b6 numeric, qt_vezes NUMERIC)
LANGUAGE plpgsql
As $$
Declare
Begin
RETURN QUERY SELECT
ltf_a.b6_a_b6_id,
ltf_a.b6,
count(ltf_b.b6_a_b6_id)::numeric as qt_vezes
from lotofacil.lotofacil_id_b6_a_b6 ltf_a
left join lotofacil.lotofacil_resultado_coluna_b ltf_b
on ltf_a.b6_a_b6_id = ltf_b.b6_a_b6_id
AND concurso BETWEEN concurso_inicial AND concurso_final
group by ltf_a.b6_a_b6_id, ltf_a.b6
order by ltf_a.b6_a_b6_id, ltf_a.b6 asc;
end;
$$;

Drop view if exists lotofacil.v_lotofacil_resultado_b6_a_b7;
create view lotofacil.v_lotofacil_resultado_b6_a_b7 as
Select
ltf_a.b6_a_b7_id,
ltf_a.b6,
ltf_a.b7,
count(ltf_b.b6_a_b7_id) as qt_vezes
from
lotofacil.lotofacil_id_b6_a_b7 ltf_a
left join lotofacil.lotofacil_resultado_coluna_b ltf_b
on ltf_a.b6_a_b7_id = ltf_b.b6_a_b7_id
group by ltf_a.b6_a_b7_id,
ltf_a.b6,
ltf_a.b7
order by qt_vezes desc,
ltf_a.b6 asc,
ltf_a.b7 asc;

DROP FUNCTION IF EXISTS lotofacil.fn_lotofacil_resultado_b6_a_b7( NUMERIC, NUMERIC );
CREATE FUNCTION lotofacil.fn_lotofacil_resultado_b6_a_b7(concurso_inicial NUMERIC, concurso_final NUMERIC)
RETURNS TABLE(b6_a_b7_id numeric, b6 numeric,
b7 numeric, qt_vezes NUMERIC)
LANGUAGE plpgsql
As $$
Declare
Begin
RETURN QUERY SELECT
ltf_a.b6_a_b7_id,
ltf_a.b6,
ltf_a.b7,
count(ltf_b.b6_a_b7_id)::numeric as qt_vezes
from lotofacil.lotofacil_id_b6_a_b7 ltf_a
left join lotofacil.lotofacil_resultado_coluna_b ltf_b
on ltf_a.b6_a_b7_id = ltf_b.b6_a_b7_id
AND concurso BETWEEN concurso_inicial AND concurso_final
group by ltf_a.b6_a_b7_id, ltf_a.b6,
ltf_a.b7
order by ltf_a.b6_a_b7_id, ltf_a.b6 asc,
ltf_a.b7 asc;
end;
$$;

Drop view if exists lotofacil.v_lotofacil_resultado_b6_a_b8;
create view lotofacil.v_lotofacil_resultado_b6_a_b8 as
Select
ltf_a.b6_a_b8_id,
ltf_a.b6,
ltf_a.b7,
ltf_a.b8,
count(ltf_b.b6_a_b8_id) as qt_vezes
from
lotofacil.lotofacil_id_b6_a_b8 ltf_a
left join lotofacil.lotofacil_resultado_coluna_b ltf_b
on ltf_a.b6_a_b8_id = ltf_b.b6_a_b8_id
group by ltf_a.b6_a_b8_id,
ltf_a.b6,
ltf_a.b7,
ltf_a.b8
order by qt_vezes desc,
ltf_a.b6 asc,
ltf_a.b7 asc,
ltf_a.b8 asc;

DROP FUNCTION IF EXISTS lotofacil.fn_lotofacil_resultado_b6_a_b8( NUMERIC, NUMERIC );
CREATE FUNCTION lotofacil.fn_lotofacil_resultado_b6_a_b8(concurso_inicial NUMERIC, concurso_final NUMERIC)
RETURNS TABLE(b6_a_b8_id numeric, b6 numeric,
b7 numeric,
b8 numeric, qt_vezes NUMERIC)
LANGUAGE plpgsql
As $$
Declare
Begin
RETURN QUERY SELECT
ltf_a.b6_a_b8_id,
ltf_a.b6,
ltf_a.b7,
ltf_a.b8,
count(ltf_b.b6_a_b8_id)::numeric as qt_vezes
from lotofacil.lotofacil_id_b6_a_b8 ltf_a
left join lotofacil.lotofacil_resultado_coluna_b ltf_b
on ltf_a.b6_a_b8_id = ltf_b.b6_a_b8_id
AND concurso BETWEEN concurso_inicial AND concurso_final
group by ltf_a.b6_a_b8_id, ltf_a.b6,
ltf_a.b7,
ltf_a.b8
order by ltf_a.b6_a_b8_id, ltf_a.b6 asc,
ltf_a.b7 asc,
ltf_a.b8 asc;
end;
$$;

Drop view if exists lotofacil.v_lotofacil_resultado_b6_a_b9;
create view lotofacil.v_lotofacil_resultado_b6_a_b9 as
Select
ltf_a.b6_a_b9_id,
ltf_a.b6,
ltf_a.b7,
ltf_a.b8,
ltf_a.b9,
count(ltf_b.b6_a_b9_id) as qt_vezes
from
lotofacil.lotofacil_id_b6_a_b9 ltf_a
left join lotofacil.lotofacil_resultado_coluna_b ltf_b
on ltf_a.b6_a_b9_id = ltf_b.b6_a_b9_id
group by ltf_a.b6_a_b9_id,
ltf_a.b6,
ltf_a.b7,
ltf_a.b8,
ltf_a.b9
order by qt_vezes desc,
ltf_a.b6 asc,
ltf_a.b7 asc,
ltf_a.b8 asc,
ltf_a.b9 asc;

DROP FUNCTION IF EXISTS lotofacil.fn_lotofacil_resultado_b6_a_b9( NUMERIC, NUMERIC );
CREATE FUNCTION lotofacil.fn_lotofacil_resultado_b6_a_b9(concurso_inicial NUMERIC, concurso_final NUMERIC)
RETURNS TABLE(b6_a_b9_id numeric, b6 numeric,
b7 numeric,
b8 numeric,
b9 numeric, qt_vezes NUMERIC)
LANGUAGE plpgsql
As $$
Declare
Begin
RETURN QUERY SELECT
ltf_a.b6_a_b9_id,
ltf_a.b6,
ltf_a.b7,
ltf_a.b8,
ltf_a.b9,
count(ltf_b.b6_a_b9_id)::numeric as qt_vezes
from lotofacil.lotofacil_id_b6_a_b9 ltf_a
left join lotofacil.lotofacil_resultado_coluna_b ltf_b
on ltf_a.b6_a_b9_id = ltf_b.b6_a_b9_id
AND concurso BETWEEN concurso_inicial AND concurso_final
group by ltf_a.b6_a_b9_id, ltf_a.b6,
ltf_a.b7,
ltf_a.b8,
ltf_a.b9
order by ltf_a.b6_a_b9_id, ltf_a.b6 asc,
ltf_a.b7 asc,
ltf_a.b8 asc,
ltf_a.b9 asc;
end;
$$;

Drop view if exists lotofacil.v_lotofacil_resultado_b6_a_b10;
create view lotofacil.v_lotofacil_resultado_b6_a_b10 as
Select
ltf_a.b6_a_b10_id,
ltf_a.b6,
ltf_a.b7,
ltf_a.b8,
ltf_a.b9,
ltf_a.b10,
count(ltf_b.b6_a_b10_id) as qt_vezes
from
lotofacil.lotofacil_id_b6_a_b10 ltf_a
left join lotofacil.lotofacil_resultado_coluna_b ltf_b
on ltf_a.b6_a_b10_id = ltf_b.b6_a_b10_id
group by ltf_a.b6_a_b10_id,
ltf_a.b6,
ltf_a.b7,
ltf_a.b8,
ltf_a.b9,
ltf_a.b10
order by qt_vezes desc,
ltf_a.b6 asc,
ltf_a.b7 asc,
ltf_a.b8 asc,
ltf_a.b9 asc,
ltf_a.b10 asc;

DROP FUNCTION IF EXISTS lotofacil.fn_lotofacil_resultado_b6_a_b10( NUMERIC, NUMERIC );
CREATE FUNCTION lotofacil.fn_lotofacil_resultado_b6_a_b10(concurso_inicial NUMERIC, concurso_final NUMERIC)
RETURNS TABLE(b6_a_b10_id numeric, b6 numeric,
b7 numeric,
b8 numeric,
b9 numeric,
b10 numeric, qt_vezes NUMERIC)
LANGUAGE plpgsql
As $$
Declare
Begin
RETURN QUERY SELECT
ltf_a.b6_a_b10_id,
ltf_a.b6,
ltf_a.b7,
ltf_a.b8,
ltf_a.b9,
ltf_a.b10,
count(ltf_b.b6_a_b10_id)::numeric as qt_vezes
from lotofacil.lotofacil_id_b6_a_b10 ltf_a
left join lotofacil.lotofacil_resultado_coluna_b ltf_b
on ltf_a.b6_a_b10_id = ltf_b.b6_a_b10_id
AND concurso BETWEEN concurso_inicial AND concurso_final
group by ltf_a.b6_a_b10_id, ltf_a.b6,
ltf_a.b7,
ltf_a.b8,
ltf_a.b9,
ltf_a.b10
order by ltf_a.b6_a_b10_id, ltf_a.b6 asc,
ltf_a.b7 asc,
ltf_a.b8 asc,
ltf_a.b9 asc,
ltf_a.b10 asc;
end;
$$;

Drop view if exists lotofacil.v_lotofacil_resultado_b6_a_b11;
create view lotofacil.v_lotofacil_resultado_b6_a_b11 as
Select
ltf_a.b6_a_b11_id,
ltf_a.b6,
ltf_a.b7,
ltf_a.b8,
ltf_a.b9,
ltf_a.b10,
ltf_a.b11,
count(ltf_b.b6_a_b11_id) as qt_vezes
from
lotofacil.lotofacil_id_b6_a_b11 ltf_a
left join lotofacil.lotofacil_resultado_coluna_b ltf_b
on ltf_a.b6_a_b11_id = ltf_b.b6_a_b11_id
group by ltf_a.b6_a_b11_id,
ltf_a.b6,
ltf_a.b7,
ltf_a.b8,
ltf_a.b9,
ltf_a.b10,
ltf_a.b11
order by qt_vezes desc,
ltf_a.b6 asc,
ltf_a.b7 asc,
ltf_a.b8 asc,
ltf_a.b9 asc,
ltf_a.b10 asc,
ltf_a.b11 asc;

DROP FUNCTION IF EXISTS lotofacil.fn_lotofacil_resultado_b6_a_b11( NUMERIC, NUMERIC );
CREATE FUNCTION lotofacil.fn_lotofacil_resultado_b6_a_b11(concurso_inicial NUMERIC, concurso_final NUMERIC)
RETURNS TABLE(b6_a_b11_id numeric, b6 numeric,
b7 numeric,
b8 numeric,
b9 numeric,
b10 numeric,
b11 numeric, qt_vezes NUMERIC)
LANGUAGE plpgsql
As $$
Declare
Begin
RETURN QUERY SELECT
ltf_a.b6_a_b11_id,
ltf_a.b6,
ltf_a.b7,
ltf_a.b8,
ltf_a.b9,
ltf_a.b10,
ltf_a.b11,
count(ltf_b.b6_a_b11_id)::numeric as qt_vezes
from lotofacil.lotofacil_id_b6_a_b11 ltf_a
left join lotofacil.lotofacil_resultado_coluna_b ltf_b
on ltf_a.b6_a_b11_id = ltf_b.b6_a_b11_id
AND concurso BETWEEN concurso_inicial AND concurso_final
group by ltf_a.b6_a_b11_id, ltf_a.b6,
ltf_a.b7,
ltf_a.b8,
ltf_a.b9,
ltf_a.b10,
ltf_a.b11
order by ltf_a.b6_a_b11_id, ltf_a.b6 asc,
ltf_a.b7 asc,
ltf_a.b8 asc,
ltf_a.b9 asc,
ltf_a.b10 asc,
ltf_a.b11 asc;
end;
$$;

Drop view if exists lotofacil.v_lotofacil_resultado_b6_a_b12;
create view lotofacil.v_lotofacil_resultado_b6_a_b12 as
Select
ltf_a.b6_a_b12_id,
ltf_a.b6,
ltf_a.b7,
ltf_a.b8,
ltf_a.b9,
ltf_a.b10,
ltf_a.b11,
ltf_a.b12,
count(ltf_b.b6_a_b12_id) as qt_vezes
from
lotofacil.lotofacil_id_b6_a_b12 ltf_a
left join lotofacil.lotofacil_resultado_coluna_b ltf_b
on ltf_a.b6_a_b12_id = ltf_b.b6_a_b12_id
group by ltf_a.b6_a_b12_id,
ltf_a.b6,
ltf_a.b7,
ltf_a.b8,
ltf_a.b9,
ltf_a.b10,
ltf_a.b11,
ltf_a.b12
order by qt_vezes desc,
ltf_a.b6 asc,
ltf_a.b7 asc,
ltf_a.b8 asc,
ltf_a.b9 asc,
ltf_a.b10 asc,
ltf_a.b11 asc,
ltf_a.b12 asc;

DROP FUNCTION IF EXISTS lotofacil.fn_lotofacil_resultado_b6_a_b12( NUMERIC, NUMERIC );
CREATE FUNCTION lotofacil.fn_lotofacil_resultado_b6_a_b12(concurso_inicial NUMERIC, concurso_final NUMERIC)
RETURNS TABLE(b6_a_b12_id numeric, b6 numeric,
b7 numeric,
b8 numeric,
b9 numeric,
b10 numeric,
b11 numeric,
b12 numeric, qt_vezes NUMERIC)
LANGUAGE plpgsql
As $$
Declare
Begin
RETURN QUERY SELECT
ltf_a.b6_a_b12_id,
ltf_a.b6,
ltf_a.b7,
ltf_a.b8,
ltf_a.b9,
ltf_a.b10,
ltf_a.b11,
ltf_a.b12,
count(ltf_b.b6_a_b12_id)::numeric as qt_vezes
from lotofacil.lotofacil_id_b6_a_b12 ltf_a
left join lotofacil.lotofacil_resultado_coluna_b ltf_b
on ltf_a.b6_a_b12_id = ltf_b.b6_a_b12_id
AND concurso BETWEEN concurso_inicial AND concurso_final
group by ltf_a.b6_a_b12_id, ltf_a.b6,
ltf_a.b7,
ltf_a.b8,
ltf_a.b9,
ltf_a.b10,
ltf_a.b11,
ltf_a.b12
order by ltf_a.b6_a_b12_id, ltf_a.b6 asc,
ltf_a.b7 asc,
ltf_a.b8 asc,
ltf_a.b9 asc,
ltf_a.b10 asc,
ltf_a.b11 asc,
ltf_a.b12 asc;
end;
$$;

Drop view if exists lotofacil.v_lotofacil_resultado_b6_a_b13;
create view lotofacil.v_lotofacil_resultado_b6_a_b13 as
Select
ltf_a.b6_a_b13_id,
ltf_a.b6,
ltf_a.b7,
ltf_a.b8,
ltf_a.b9,
ltf_a.b10,
ltf_a.b11,
ltf_a.b12,
ltf_a.b13,
count(ltf_b.b6_a_b13_id) as qt_vezes
from
lotofacil.lotofacil_id_b6_a_b13 ltf_a
left join lotofacil.lotofacil_resultado_coluna_b ltf_b
on ltf_a.b6_a_b13_id = ltf_b.b6_a_b13_id
group by ltf_a.b6_a_b13_id,
ltf_a.b6,
ltf_a.b7,
ltf_a.b8,
ltf_a.b9,
ltf_a.b10,
ltf_a.b11,
ltf_a.b12,
ltf_a.b13
order by qt_vezes desc,
ltf_a.b6 asc,
ltf_a.b7 asc,
ltf_a.b8 asc,
ltf_a.b9 asc,
ltf_a.b10 asc,
ltf_a.b11 asc,
ltf_a.b12 asc,
ltf_a.b13 asc;

DROP FUNCTION IF EXISTS lotofacil.fn_lotofacil_resultado_b6_a_b13( NUMERIC, NUMERIC );
CREATE FUNCTION lotofacil.fn_lotofacil_resultado_b6_a_b13(concurso_inicial NUMERIC, concurso_final NUMERIC)
RETURNS TABLE(b6_a_b13_id numeric, b6 numeric,
b7 numeric,
b8 numeric,
b9 numeric,
b10 numeric,
b11 numeric,
b12 numeric,
b13 numeric, qt_vezes NUMERIC)
LANGUAGE plpgsql
As $$
Declare
Begin
RETURN QUERY SELECT
ltf_a.b6_a_b13_id,
ltf_a.b6,
ltf_a.b7,
ltf_a.b8,
ltf_a.b9,
ltf_a.b10,
ltf_a.b11,
ltf_a.b12,
ltf_a.b13,
count(ltf_b.b6_a_b13_id)::numeric as qt_vezes
from lotofacil.lotofacil_id_b6_a_b13 ltf_a
left join lotofacil.lotofacil_resultado_coluna_b ltf_b
on ltf_a.b6_a_b13_id = ltf_b.b6_a_b13_id
AND concurso BETWEEN concurso_inicial AND concurso_final
group by ltf_a.b6_a_b13_id, ltf_a.b6,
ltf_a.b7,
ltf_a.b8,
ltf_a.b9,
ltf_a.b10,
ltf_a.b11,
ltf_a.b12,
ltf_a.b13
order by ltf_a.b6_a_b13_id, ltf_a.b6 asc,
ltf_a.b7 asc,
ltf_a.b8 asc,
ltf_a.b9 asc,
ltf_a.b10 asc,
ltf_a.b11 asc,
ltf_a.b12 asc,
ltf_a.b13 asc;
end;
$$;

Drop view if exists lotofacil.v_lotofacil_resultado_b6_a_b14;
create view lotofacil.v_lotofacil_resultado_b6_a_b14 as
Select
ltf_a.b6_a_b14_id,
ltf_a.b6,
ltf_a.b7,
ltf_a.b8,
ltf_a.b9,
ltf_a.b10,
ltf_a.b11,
ltf_a.b12,
ltf_a.b13,
ltf_a.b14,
count(ltf_b.b6_a_b14_id) as qt_vezes
from
lotofacil.lotofacil_id_b6_a_b14 ltf_a
left join lotofacil.lotofacil_resultado_coluna_b ltf_b
on ltf_a.b6_a_b14_id = ltf_b.b6_a_b14_id
group by ltf_a.b6_a_b14_id,
ltf_a.b6,
ltf_a.b7,
ltf_a.b8,
ltf_a.b9,
ltf_a.b10,
ltf_a.b11,
ltf_a.b12,
ltf_a.b13,
ltf_a.b14
order by qt_vezes desc,
ltf_a.b6 asc,
ltf_a.b7 asc,
ltf_a.b8 asc,
ltf_a.b9 asc,
ltf_a.b10 asc,
ltf_a.b11 asc,
ltf_a.b12 asc,
ltf_a.b13 asc,
ltf_a.b14 asc;

DROP FUNCTION IF EXISTS lotofacil.fn_lotofacil_resultado_b6_a_b14( NUMERIC, NUMERIC );
CREATE FUNCTION lotofacil.fn_lotofacil_resultado_b6_a_b14(concurso_inicial NUMERIC, concurso_final NUMERIC)
RETURNS TABLE(b6_a_b14_id numeric, b6 numeric,
b7 numeric,
b8 numeric,
b9 numeric,
b10 numeric,
b11 numeric,
b12 numeric,
b13 numeric,
b14 numeric, qt_vezes NUMERIC)
LANGUAGE plpgsql
As $$
Declare
Begin
RETURN QUERY SELECT
ltf_a.b6_a_b14_id,
ltf_a.b6,
ltf_a.b7,
ltf_a.b8,
ltf_a.b9,
ltf_a.b10,
ltf_a.b11,
ltf_a.b12,
ltf_a.b13,
ltf_a.b14,
count(ltf_b.b6_a_b14_id)::numeric as qt_vezes
from lotofacil.lotofacil_id_b6_a_b14 ltf_a
left join lotofacil.lotofacil_resultado_coluna_b ltf_b
on ltf_a.b6_a_b14_id = ltf_b.b6_a_b14_id
AND concurso BETWEEN concurso_inicial AND concurso_final
group by ltf_a.b6_a_b14_id, ltf_a.b6,
ltf_a.b7,
ltf_a.b8,
ltf_a.b9,
ltf_a.b10,
ltf_a.b11,
ltf_a.b12,
ltf_a.b13,
ltf_a.b14
order by ltf_a.b6_a_b14_id, ltf_a.b6 asc,
ltf_a.b7 asc,
ltf_a.b8 asc,
ltf_a.b9 asc,
ltf_a.b10 asc,
ltf_a.b11 asc,
ltf_a.b12 asc,
ltf_a.b13 asc,
ltf_a.b14 asc;
end;
$$;

Drop view if exists lotofacil.v_lotofacil_resultado_b6_a_b15;
create view lotofacil.v_lotofacil_resultado_b6_a_b15 as
Select
ltf_a.b6_a_b15_id,
ltf_a.b6,
ltf_a.b7,
ltf_a.b8,
ltf_a.b9,
ltf_a.b10,
ltf_a.b11,
ltf_a.b12,
ltf_a.b13,
ltf_a.b14,
ltf_a.b15,
count(ltf_b.b6_a_b15_id) as qt_vezes
from
lotofacil.lotofacil_id_b6_a_b15 ltf_a
left join lotofacil.lotofacil_resultado_coluna_b ltf_b
on ltf_a.b6_a_b15_id = ltf_b.b6_a_b15_id
group by ltf_a.b6_a_b15_id,
ltf_a.b6,
ltf_a.b7,
ltf_a.b8,
ltf_a.b9,
ltf_a.b10,
ltf_a.b11,
ltf_a.b12,
ltf_a.b13,
ltf_a.b14,
ltf_a.b15
order by qt_vezes desc,
ltf_a.b6 asc,
ltf_a.b7 asc,
ltf_a.b8 asc,
ltf_a.b9 asc,
ltf_a.b10 asc,
ltf_a.b11 asc,
ltf_a.b12 asc,
ltf_a.b13 asc,
ltf_a.b14 asc,
ltf_a.b15 asc;

DROP FUNCTION IF EXISTS lotofacil.fn_lotofacil_resultado_b6_a_b15( NUMERIC, NUMERIC );
CREATE FUNCTION lotofacil.fn_lotofacil_resultado_b6_a_b15(concurso_inicial NUMERIC, concurso_final NUMERIC)
RETURNS TABLE(b6_a_b15_id numeric, b6 numeric,
b7 numeric,
b8 numeric,
b9 numeric,
b10 numeric,
b11 numeric,
b12 numeric,
b13 numeric,
b14 numeric,
b15 numeric, qt_vezes NUMERIC)
LANGUAGE plpgsql
As $$
Declare
Begin
RETURN QUERY SELECT
ltf_a.b6_a_b15_id,
ltf_a.b6,
ltf_a.b7,
ltf_a.b8,
ltf_a.b9,
ltf_a.b10,
ltf_a.b11,
ltf_a.b12,
ltf_a.b13,
ltf_a.b14,
ltf_a.b15,
count(ltf_b.b6_a_b15_id)::numeric as qt_vezes
from lotofacil.lotofacil_id_b6_a_b15 ltf_a
left join lotofacil.lotofacil_resultado_coluna_b ltf_b
on ltf_a.b6_a_b15_id = ltf_b.b6_a_b15_id
AND concurso BETWEEN concurso_inicial AND concurso_final
group by ltf_a.b6_a_b15_id, ltf_a.b6,
ltf_a.b7,
ltf_a.b8,
ltf_a.b9,
ltf_a.b10,
ltf_a.b11,
ltf_a.b12,
ltf_a.b13,
ltf_a.b14,
ltf_a.b15
order by ltf_a.b6_a_b15_id, ltf_a.b6 asc,
ltf_a.b7 asc,
ltf_a.b8 asc,
ltf_a.b9 asc,
ltf_a.b10 asc,
ltf_a.b11 asc,
ltf_a.b12 asc,
ltf_a.b13 asc,
ltf_a.b14 asc,
ltf_a.b15 asc;
end;
$$;

Drop view if exists lotofacil.v_lotofacil_resultado_b7_a_b7;
create view lotofacil.v_lotofacil_resultado_b7_a_b7 as
Select
ltf_a.b7_a_b7_id,
ltf_a.b7,
count(ltf_b.b7_a_b7_id) as qt_vezes
from
lotofacil.lotofacil_id_b7_a_b7 ltf_a
left join lotofacil.lotofacil_resultado_coluna_b ltf_b
on ltf_a.b7_a_b7_id = ltf_b.b7_a_b7_id
group by ltf_a.b7_a_b7_id,
ltf_a.b7
order by qt_vezes desc,
ltf_a.b7 asc;

DROP FUNCTION IF EXISTS lotofacil.fn_lotofacil_resultado_b7_a_b7( NUMERIC, NUMERIC );
CREATE FUNCTION lotofacil.fn_lotofacil_resultado_b7_a_b7(concurso_inicial NUMERIC, concurso_final NUMERIC)
RETURNS TABLE(b7_a_b7_id numeric, b7 numeric, qt_vezes NUMERIC)
LANGUAGE plpgsql
As $$
Declare
Begin
RETURN QUERY SELECT
ltf_a.b7_a_b7_id,
ltf_a.b7,
count(ltf_b.b7_a_b7_id)::numeric as qt_vezes
from lotofacil.lotofacil_id_b7_a_b7 ltf_a
left join lotofacil.lotofacil_resultado_coluna_b ltf_b
on ltf_a.b7_a_b7_id = ltf_b.b7_a_b7_id
AND concurso BETWEEN concurso_inicial AND concurso_final
group by ltf_a.b7_a_b7_id, ltf_a.b7
order by ltf_a.b7_a_b7_id, ltf_a.b7 asc;
end;
$$;

Drop view if exists lotofacil.v_lotofacil_resultado_b7_a_b8;
create view lotofacil.v_lotofacil_resultado_b7_a_b8 as
Select
ltf_a.b7_a_b8_id,
ltf_a.b7,
ltf_a.b8,
count(ltf_b.b7_a_b8_id) as qt_vezes
from
lotofacil.lotofacil_id_b7_a_b8 ltf_a
left join lotofacil.lotofacil_resultado_coluna_b ltf_b
on ltf_a.b7_a_b8_id = ltf_b.b7_a_b8_id
group by ltf_a.b7_a_b8_id,
ltf_a.b7,
ltf_a.b8
order by qt_vezes desc,
ltf_a.b7 asc,
ltf_a.b8 asc;

DROP FUNCTION IF EXISTS lotofacil.fn_lotofacil_resultado_b7_a_b8( NUMERIC, NUMERIC );
CREATE FUNCTION lotofacil.fn_lotofacil_resultado_b7_a_b8(concurso_inicial NUMERIC, concurso_final NUMERIC)
RETURNS TABLE(b7_a_b8_id numeric, b7 numeric,
b8 numeric, qt_vezes NUMERIC)
LANGUAGE plpgsql
As $$
Declare
Begin
RETURN QUERY SELECT
ltf_a.b7_a_b8_id,
ltf_a.b7,
ltf_a.b8,
count(ltf_b.b7_a_b8_id)::numeric as qt_vezes
from lotofacil.lotofacil_id_b7_a_b8 ltf_a
left join lotofacil.lotofacil_resultado_coluna_b ltf_b
on ltf_a.b7_a_b8_id = ltf_b.b7_a_b8_id
AND concurso BETWEEN concurso_inicial AND concurso_final
group by ltf_a.b7_a_b8_id, ltf_a.b7,
ltf_a.b8
order by ltf_a.b7_a_b8_id, ltf_a.b7 asc,
ltf_a.b8 asc;
end;
$$;

Drop view if exists lotofacil.v_lotofacil_resultado_b7_a_b9;
create view lotofacil.v_lotofacil_resultado_b7_a_b9 as
Select
ltf_a.b7_a_b9_id,
ltf_a.b7,
ltf_a.b8,
ltf_a.b9,
count(ltf_b.b7_a_b9_id) as qt_vezes
from
lotofacil.lotofacil_id_b7_a_b9 ltf_a
left join lotofacil.lotofacil_resultado_coluna_b ltf_b
on ltf_a.b7_a_b9_id = ltf_b.b7_a_b9_id
group by ltf_a.b7_a_b9_id,
ltf_a.b7,
ltf_a.b8,
ltf_a.b9
order by qt_vezes desc,
ltf_a.b7 asc,
ltf_a.b8 asc,
ltf_a.b9 asc;

DROP FUNCTION IF EXISTS lotofacil.fn_lotofacil_resultado_b7_a_b9( NUMERIC, NUMERIC );
CREATE FUNCTION lotofacil.fn_lotofacil_resultado_b7_a_b9(concurso_inicial NUMERIC, concurso_final NUMERIC)
RETURNS TABLE(b7_a_b9_id numeric, b7 numeric,
b8 numeric,
b9 numeric, qt_vezes NUMERIC)
LANGUAGE plpgsql
As $$
Declare
Begin
RETURN QUERY SELECT
ltf_a.b7_a_b9_id,
ltf_a.b7,
ltf_a.b8,
ltf_a.b9,
count(ltf_b.b7_a_b9_id)::numeric as qt_vezes
from lotofacil.lotofacil_id_b7_a_b9 ltf_a
left join lotofacil.lotofacil_resultado_coluna_b ltf_b
on ltf_a.b7_a_b9_id = ltf_b.b7_a_b9_id
AND concurso BETWEEN concurso_inicial AND concurso_final
group by ltf_a.b7_a_b9_id, ltf_a.b7,
ltf_a.b8,
ltf_a.b9
order by ltf_a.b7_a_b9_id, ltf_a.b7 asc,
ltf_a.b8 asc,
ltf_a.b9 asc;
end;
$$;

Drop view if exists lotofacil.v_lotofacil_resultado_b7_a_b10;
create view lotofacil.v_lotofacil_resultado_b7_a_b10 as
Select
ltf_a.b7_a_b10_id,
ltf_a.b7,
ltf_a.b8,
ltf_a.b9,
ltf_a.b10,
count(ltf_b.b7_a_b10_id) as qt_vezes
from
lotofacil.lotofacil_id_b7_a_b10 ltf_a
left join lotofacil.lotofacil_resultado_coluna_b ltf_b
on ltf_a.b7_a_b10_id = ltf_b.b7_a_b10_id
group by ltf_a.b7_a_b10_id,
ltf_a.b7,
ltf_a.b8,
ltf_a.b9,
ltf_a.b10
order by qt_vezes desc,
ltf_a.b7 asc,
ltf_a.b8 asc,
ltf_a.b9 asc,
ltf_a.b10 asc;

DROP FUNCTION IF EXISTS lotofacil.fn_lotofacil_resultado_b7_a_b10( NUMERIC, NUMERIC );
CREATE FUNCTION lotofacil.fn_lotofacil_resultado_b7_a_b10(concurso_inicial NUMERIC, concurso_final NUMERIC)
RETURNS TABLE(b7_a_b10_id numeric, b7 numeric,
b8 numeric,
b9 numeric,
b10 numeric, qt_vezes NUMERIC)
LANGUAGE plpgsql
As $$
Declare
Begin
RETURN QUERY SELECT
ltf_a.b7_a_b10_id,
ltf_a.b7,
ltf_a.b8,
ltf_a.b9,
ltf_a.b10,
count(ltf_b.b7_a_b10_id)::numeric as qt_vezes
from lotofacil.lotofacil_id_b7_a_b10 ltf_a
left join lotofacil.lotofacil_resultado_coluna_b ltf_b
on ltf_a.b7_a_b10_id = ltf_b.b7_a_b10_id
AND concurso BETWEEN concurso_inicial AND concurso_final
group by ltf_a.b7_a_b10_id, ltf_a.b7,
ltf_a.b8,
ltf_a.b9,
ltf_a.b10
order by ltf_a.b7_a_b10_id, ltf_a.b7 asc,
ltf_a.b8 asc,
ltf_a.b9 asc,
ltf_a.b10 asc;
end;
$$;

Drop view if exists lotofacil.v_lotofacil_resultado_b7_a_b11;
create view lotofacil.v_lotofacil_resultado_b7_a_b11 as
Select
ltf_a.b7_a_b11_id,
ltf_a.b7,
ltf_a.b8,
ltf_a.b9,
ltf_a.b10,
ltf_a.b11,
count(ltf_b.b7_a_b11_id) as qt_vezes
from
lotofacil.lotofacil_id_b7_a_b11 ltf_a
left join lotofacil.lotofacil_resultado_coluna_b ltf_b
on ltf_a.b7_a_b11_id = ltf_b.b7_a_b11_id
group by ltf_a.b7_a_b11_id,
ltf_a.b7,
ltf_a.b8,
ltf_a.b9,
ltf_a.b10,
ltf_a.b11
order by qt_vezes desc,
ltf_a.b7 asc,
ltf_a.b8 asc,
ltf_a.b9 asc,
ltf_a.b10 asc,
ltf_a.b11 asc;

DROP FUNCTION IF EXISTS lotofacil.fn_lotofacil_resultado_b7_a_b11( NUMERIC, NUMERIC );
CREATE FUNCTION lotofacil.fn_lotofacil_resultado_b7_a_b11(concurso_inicial NUMERIC, concurso_final NUMERIC)
RETURNS TABLE(b7_a_b11_id numeric, b7 numeric,
b8 numeric,
b9 numeric,
b10 numeric,
b11 numeric, qt_vezes NUMERIC)
LANGUAGE plpgsql
As $$
Declare
Begin
RETURN QUERY SELECT
ltf_a.b7_a_b11_id,
ltf_a.b7,
ltf_a.b8,
ltf_a.b9,
ltf_a.b10,
ltf_a.b11,
count(ltf_b.b7_a_b11_id)::numeric as qt_vezes
from lotofacil.lotofacil_id_b7_a_b11 ltf_a
left join lotofacil.lotofacil_resultado_coluna_b ltf_b
on ltf_a.b7_a_b11_id = ltf_b.b7_a_b11_id
AND concurso BETWEEN concurso_inicial AND concurso_final
group by ltf_a.b7_a_b11_id, ltf_a.b7,
ltf_a.b8,
ltf_a.b9,
ltf_a.b10,
ltf_a.b11
order by ltf_a.b7_a_b11_id, ltf_a.b7 asc,
ltf_a.b8 asc,
ltf_a.b9 asc,
ltf_a.b10 asc,
ltf_a.b11 asc;
end;
$$;

Drop view if exists lotofacil.v_lotofacil_resultado_b7_a_b12;
create view lotofacil.v_lotofacil_resultado_b7_a_b12 as
Select
ltf_a.b7_a_b12_id,
ltf_a.b7,
ltf_a.b8,
ltf_a.b9,
ltf_a.b10,
ltf_a.b11,
ltf_a.b12,
count(ltf_b.b7_a_b12_id) as qt_vezes
from
lotofacil.lotofacil_id_b7_a_b12 ltf_a
left join lotofacil.lotofacil_resultado_coluna_b ltf_b
on ltf_a.b7_a_b12_id = ltf_b.b7_a_b12_id
group by ltf_a.b7_a_b12_id,
ltf_a.b7,
ltf_a.b8,
ltf_a.b9,
ltf_a.b10,
ltf_a.b11,
ltf_a.b12
order by qt_vezes desc,
ltf_a.b7 asc,
ltf_a.b8 asc,
ltf_a.b9 asc,
ltf_a.b10 asc,
ltf_a.b11 asc,
ltf_a.b12 asc;

DROP FUNCTION IF EXISTS lotofacil.fn_lotofacil_resultado_b7_a_b12( NUMERIC, NUMERIC );
CREATE FUNCTION lotofacil.fn_lotofacil_resultado_b7_a_b12(concurso_inicial NUMERIC, concurso_final NUMERIC)
RETURNS TABLE(b7_a_b12_id numeric, b7 numeric,
b8 numeric,
b9 numeric,
b10 numeric,
b11 numeric,
b12 numeric, qt_vezes NUMERIC)
LANGUAGE plpgsql
As $$
Declare
Begin
RETURN QUERY SELECT
ltf_a.b7_a_b12_id,
ltf_a.b7,
ltf_a.b8,
ltf_a.b9,
ltf_a.b10,
ltf_a.b11,
ltf_a.b12,
count(ltf_b.b7_a_b12_id)::numeric as qt_vezes
from lotofacil.lotofacil_id_b7_a_b12 ltf_a
left join lotofacil.lotofacil_resultado_coluna_b ltf_b
on ltf_a.b7_a_b12_id = ltf_b.b7_a_b12_id
AND concurso BETWEEN concurso_inicial AND concurso_final
group by ltf_a.b7_a_b12_id, ltf_a.b7,
ltf_a.b8,
ltf_a.b9,
ltf_a.b10,
ltf_a.b11,
ltf_a.b12
order by ltf_a.b7_a_b12_id, ltf_a.b7 asc,
ltf_a.b8 asc,
ltf_a.b9 asc,
ltf_a.b10 asc,
ltf_a.b11 asc,
ltf_a.b12 asc;
end;
$$;

Drop view if exists lotofacil.v_lotofacil_resultado_b7_a_b13;
create view lotofacil.v_lotofacil_resultado_b7_a_b13 as
Select
ltf_a.b7_a_b13_id,
ltf_a.b7,
ltf_a.b8,
ltf_a.b9,
ltf_a.b10,
ltf_a.b11,
ltf_a.b12,
ltf_a.b13,
count(ltf_b.b7_a_b13_id) as qt_vezes
from
lotofacil.lotofacil_id_b7_a_b13 ltf_a
left join lotofacil.lotofacil_resultado_coluna_b ltf_b
on ltf_a.b7_a_b13_id = ltf_b.b7_a_b13_id
group by ltf_a.b7_a_b13_id,
ltf_a.b7,
ltf_a.b8,
ltf_a.b9,
ltf_a.b10,
ltf_a.b11,
ltf_a.b12,
ltf_a.b13
order by qt_vezes desc,
ltf_a.b7 asc,
ltf_a.b8 asc,
ltf_a.b9 asc,
ltf_a.b10 asc,
ltf_a.b11 asc,
ltf_a.b12 asc,
ltf_a.b13 asc;

DROP FUNCTION IF EXISTS lotofacil.fn_lotofacil_resultado_b7_a_b13( NUMERIC, NUMERIC );
CREATE FUNCTION lotofacil.fn_lotofacil_resultado_b7_a_b13(concurso_inicial NUMERIC, concurso_final NUMERIC)
RETURNS TABLE(b7_a_b13_id numeric, b7 numeric,
b8 numeric,
b9 numeric,
b10 numeric,
b11 numeric,
b12 numeric,
b13 numeric, qt_vezes NUMERIC)
LANGUAGE plpgsql
As $$
Declare
Begin
RETURN QUERY SELECT
ltf_a.b7_a_b13_id,
ltf_a.b7,
ltf_a.b8,
ltf_a.b9,
ltf_a.b10,
ltf_a.b11,
ltf_a.b12,
ltf_a.b13,
count(ltf_b.b7_a_b13_id)::numeric as qt_vezes
from lotofacil.lotofacil_id_b7_a_b13 ltf_a
left join lotofacil.lotofacil_resultado_coluna_b ltf_b
on ltf_a.b7_a_b13_id = ltf_b.b7_a_b13_id
AND concurso BETWEEN concurso_inicial AND concurso_final
group by ltf_a.b7_a_b13_id, ltf_a.b7,
ltf_a.b8,
ltf_a.b9,
ltf_a.b10,
ltf_a.b11,
ltf_a.b12,
ltf_a.b13
order by ltf_a.b7_a_b13_id, ltf_a.b7 asc,
ltf_a.b8 asc,
ltf_a.b9 asc,
ltf_a.b10 asc,
ltf_a.b11 asc,
ltf_a.b12 asc,
ltf_a.b13 asc;
end;
$$;

Drop view if exists lotofacil.v_lotofacil_resultado_b7_a_b14;
create view lotofacil.v_lotofacil_resultado_b7_a_b14 as
Select
ltf_a.b7_a_b14_id,
ltf_a.b7,
ltf_a.b8,
ltf_a.b9,
ltf_a.b10,
ltf_a.b11,
ltf_a.b12,
ltf_a.b13,
ltf_a.b14,
count(ltf_b.b7_a_b14_id) as qt_vezes
from
lotofacil.lotofacil_id_b7_a_b14 ltf_a
left join lotofacil.lotofacil_resultado_coluna_b ltf_b
on ltf_a.b7_a_b14_id = ltf_b.b7_a_b14_id
group by ltf_a.b7_a_b14_id,
ltf_a.b7,
ltf_a.b8,
ltf_a.b9,
ltf_a.b10,
ltf_a.b11,
ltf_a.b12,
ltf_a.b13,
ltf_a.b14
order by qt_vezes desc,
ltf_a.b7 asc,
ltf_a.b8 asc,
ltf_a.b9 asc,
ltf_a.b10 asc,
ltf_a.b11 asc,
ltf_a.b12 asc,
ltf_a.b13 asc,
ltf_a.b14 asc;

DROP FUNCTION IF EXISTS lotofacil.fn_lotofacil_resultado_b7_a_b14( NUMERIC, NUMERIC );
CREATE FUNCTION lotofacil.fn_lotofacil_resultado_b7_a_b14(concurso_inicial NUMERIC, concurso_final NUMERIC)
RETURNS TABLE(b7_a_b14_id numeric, b7 numeric,
b8 numeric,
b9 numeric,
b10 numeric,
b11 numeric,
b12 numeric,
b13 numeric,
b14 numeric, qt_vezes NUMERIC)
LANGUAGE plpgsql
As $$
Declare
Begin
RETURN QUERY SELECT
ltf_a.b7_a_b14_id,
ltf_a.b7,
ltf_a.b8,
ltf_a.b9,
ltf_a.b10,
ltf_a.b11,
ltf_a.b12,
ltf_a.b13,
ltf_a.b14,
count(ltf_b.b7_a_b14_id)::numeric as qt_vezes
from lotofacil.lotofacil_id_b7_a_b14 ltf_a
left join lotofacil.lotofacil_resultado_coluna_b ltf_b
on ltf_a.b7_a_b14_id = ltf_b.b7_a_b14_id
AND concurso BETWEEN concurso_inicial AND concurso_final
group by ltf_a.b7_a_b14_id, ltf_a.b7,
ltf_a.b8,
ltf_a.b9,
ltf_a.b10,
ltf_a.b11,
ltf_a.b12,
ltf_a.b13,
ltf_a.b14
order by ltf_a.b7_a_b14_id, ltf_a.b7 asc,
ltf_a.b8 asc,
ltf_a.b9 asc,
ltf_a.b10 asc,
ltf_a.b11 asc,
ltf_a.b12 asc,
ltf_a.b13 asc,
ltf_a.b14 asc;
end;
$$;

Drop view if exists lotofacil.v_lotofacil_resultado_b7_a_b15;
create view lotofacil.v_lotofacil_resultado_b7_a_b15 as
Select
ltf_a.b7_a_b15_id,
ltf_a.b7,
ltf_a.b8,
ltf_a.b9,
ltf_a.b10,
ltf_a.b11,
ltf_a.b12,
ltf_a.b13,
ltf_a.b14,
ltf_a.b15,
count(ltf_b.b7_a_b15_id) as qt_vezes
from
lotofacil.lotofacil_id_b7_a_b15 ltf_a
left join lotofacil.lotofacil_resultado_coluna_b ltf_b
on ltf_a.b7_a_b15_id = ltf_b.b7_a_b15_id
group by ltf_a.b7_a_b15_id,
ltf_a.b7,
ltf_a.b8,
ltf_a.b9,
ltf_a.b10,
ltf_a.b11,
ltf_a.b12,
ltf_a.b13,
ltf_a.b14,
ltf_a.b15
order by qt_vezes desc,
ltf_a.b7 asc,
ltf_a.b8 asc,
ltf_a.b9 asc,
ltf_a.b10 asc,
ltf_a.b11 asc,
ltf_a.b12 asc,
ltf_a.b13 asc,
ltf_a.b14 asc,
ltf_a.b15 asc;

DROP FUNCTION IF EXISTS lotofacil.fn_lotofacil_resultado_b7_a_b15( NUMERIC, NUMERIC );
CREATE FUNCTION lotofacil.fn_lotofacil_resultado_b7_a_b15(concurso_inicial NUMERIC, concurso_final NUMERIC)
RETURNS TABLE(b7_a_b15_id numeric, b7 numeric,
b8 numeric,
b9 numeric,
b10 numeric,
b11 numeric,
b12 numeric,
b13 numeric,
b14 numeric,
b15 numeric, qt_vezes NUMERIC)
LANGUAGE plpgsql
As $$
Declare
Begin
RETURN QUERY SELECT
ltf_a.b7_a_b15_id,
ltf_a.b7,
ltf_a.b8,
ltf_a.b9,
ltf_a.b10,
ltf_a.b11,
ltf_a.b12,
ltf_a.b13,
ltf_a.b14,
ltf_a.b15,
count(ltf_b.b7_a_b15_id)::numeric as qt_vezes
from lotofacil.lotofacil_id_b7_a_b15 ltf_a
left join lotofacil.lotofacil_resultado_coluna_b ltf_b
on ltf_a.b7_a_b15_id = ltf_b.b7_a_b15_id
AND concurso BETWEEN concurso_inicial AND concurso_final
group by ltf_a.b7_a_b15_id, ltf_a.b7,
ltf_a.b8,
ltf_a.b9,
ltf_a.b10,
ltf_a.b11,
ltf_a.b12,
ltf_a.b13,
ltf_a.b14,
ltf_a.b15
order by ltf_a.b7_a_b15_id, ltf_a.b7 asc,
ltf_a.b8 asc,
ltf_a.b9 asc,
ltf_a.b10 asc,
ltf_a.b11 asc,
ltf_a.b12 asc,
ltf_a.b13 asc,
ltf_a.b14 asc,
ltf_a.b15 asc;
end;
$$;

Drop view if exists lotofacil.v_lotofacil_resultado_b8_a_b8;
create view lotofacil.v_lotofacil_resultado_b8_a_b8 as
Select
ltf_a.b8_a_b8_id,
ltf_a.b8,
count(ltf_b.b8_a_b8_id) as qt_vezes
from
lotofacil.lotofacil_id_b8_a_b8 ltf_a
left join lotofacil.lotofacil_resultado_coluna_b ltf_b
on ltf_a.b8_a_b8_id = ltf_b.b8_a_b8_id
group by ltf_a.b8_a_b8_id,
ltf_a.b8
order by qt_vezes desc,
ltf_a.b8 asc;

DROP FUNCTION IF EXISTS lotofacil.fn_lotofacil_resultado_b8_a_b8( NUMERIC, NUMERIC );
CREATE FUNCTION lotofacil.fn_lotofacil_resultado_b8_a_b8(concurso_inicial NUMERIC, concurso_final NUMERIC)
RETURNS TABLE(b8_a_b8_id numeric, b8 numeric, qt_vezes NUMERIC)
LANGUAGE plpgsql
As $$
Declare
Begin
RETURN QUERY SELECT
ltf_a.b8_a_b8_id,
ltf_a.b8,
count(ltf_b.b8_a_b8_id)::numeric as qt_vezes
from lotofacil.lotofacil_id_b8_a_b8 ltf_a
left join lotofacil.lotofacil_resultado_coluna_b ltf_b
on ltf_a.b8_a_b8_id = ltf_b.b8_a_b8_id
AND concurso BETWEEN concurso_inicial AND concurso_final
group by ltf_a.b8_a_b8_id, ltf_a.b8
order by ltf_a.b8_a_b8_id, ltf_a.b8 asc;
end;
$$;

Drop view if exists lotofacil.v_lotofacil_resultado_b8_a_b9;
create view lotofacil.v_lotofacil_resultado_b8_a_b9 as
Select
ltf_a.b8_a_b9_id,
ltf_a.b8,
ltf_a.b9,
count(ltf_b.b8_a_b9_id) as qt_vezes
from
lotofacil.lotofacil_id_b8_a_b9 ltf_a
left join lotofacil.lotofacil_resultado_coluna_b ltf_b
on ltf_a.b8_a_b9_id = ltf_b.b8_a_b9_id
group by ltf_a.b8_a_b9_id,
ltf_a.b8,
ltf_a.b9
order by qt_vezes desc,
ltf_a.b8 asc,
ltf_a.b9 asc;

DROP FUNCTION IF EXISTS lotofacil.fn_lotofacil_resultado_b8_a_b9( NUMERIC, NUMERIC );
CREATE FUNCTION lotofacil.fn_lotofacil_resultado_b8_a_b9(concurso_inicial NUMERIC, concurso_final NUMERIC)
RETURNS TABLE(b8_a_b9_id numeric, b8 numeric,
b9 numeric, qt_vezes NUMERIC)
LANGUAGE plpgsql
As $$
Declare
Begin
RETURN QUERY SELECT
ltf_a.b8_a_b9_id,
ltf_a.b8,
ltf_a.b9,
count(ltf_b.b8_a_b9_id)::numeric as qt_vezes
from lotofacil.lotofacil_id_b8_a_b9 ltf_a
left join lotofacil.lotofacil_resultado_coluna_b ltf_b
on ltf_a.b8_a_b9_id = ltf_b.b8_a_b9_id
AND concurso BETWEEN concurso_inicial AND concurso_final
group by ltf_a.b8_a_b9_id, ltf_a.b8,
ltf_a.b9
order by ltf_a.b8_a_b9_id, ltf_a.b8 asc,
ltf_a.b9 asc;
end;
$$;

Drop view if exists lotofacil.v_lotofacil_resultado_b8_a_b10;
create view lotofacil.v_lotofacil_resultado_b8_a_b10 as
Select
ltf_a.b8_a_b10_id,
ltf_a.b8,
ltf_a.b9,
ltf_a.b10,
count(ltf_b.b8_a_b10_id) as qt_vezes
from
lotofacil.lotofacil_id_b8_a_b10 ltf_a
left join lotofacil.lotofacil_resultado_coluna_b ltf_b
on ltf_a.b8_a_b10_id = ltf_b.b8_a_b10_id
group by ltf_a.b8_a_b10_id,
ltf_a.b8,
ltf_a.b9,
ltf_a.b10
order by qt_vezes desc,
ltf_a.b8 asc,
ltf_a.b9 asc,
ltf_a.b10 asc;

DROP FUNCTION IF EXISTS lotofacil.fn_lotofacil_resultado_b8_a_b10( NUMERIC, NUMERIC );
CREATE FUNCTION lotofacil.fn_lotofacil_resultado_b8_a_b10(concurso_inicial NUMERIC, concurso_final NUMERIC)
RETURNS TABLE(b8_a_b10_id numeric, b8 numeric,
b9 numeric,
b10 numeric, qt_vezes NUMERIC)
LANGUAGE plpgsql
As $$
Declare
Begin
RETURN QUERY SELECT
ltf_a.b8_a_b10_id,
ltf_a.b8,
ltf_a.b9,
ltf_a.b10,
count(ltf_b.b8_a_b10_id)::numeric as qt_vezes
from lotofacil.lotofacil_id_b8_a_b10 ltf_a
left join lotofacil.lotofacil_resultado_coluna_b ltf_b
on ltf_a.b8_a_b10_id = ltf_b.b8_a_b10_id
AND concurso BETWEEN concurso_inicial AND concurso_final
group by ltf_a.b8_a_b10_id, ltf_a.b8,
ltf_a.b9,
ltf_a.b10
order by ltf_a.b8_a_b10_id, ltf_a.b8 asc,
ltf_a.b9 asc,
ltf_a.b10 asc;
end;
$$;

Drop view if exists lotofacil.v_lotofacil_resultado_b8_a_b11;
create view lotofacil.v_lotofacil_resultado_b8_a_b11 as
Select
ltf_a.b8_a_b11_id,
ltf_a.b8,
ltf_a.b9,
ltf_a.b10,
ltf_a.b11,
count(ltf_b.b8_a_b11_id) as qt_vezes
from
lotofacil.lotofacil_id_b8_a_b11 ltf_a
left join lotofacil.lotofacil_resultado_coluna_b ltf_b
on ltf_a.b8_a_b11_id = ltf_b.b8_a_b11_id
group by ltf_a.b8_a_b11_id,
ltf_a.b8,
ltf_a.b9,
ltf_a.b10,
ltf_a.b11
order by qt_vezes desc,
ltf_a.b8 asc,
ltf_a.b9 asc,
ltf_a.b10 asc,
ltf_a.b11 asc;

DROP FUNCTION IF EXISTS lotofacil.fn_lotofacil_resultado_b8_a_b11( NUMERIC, NUMERIC );
CREATE FUNCTION lotofacil.fn_lotofacil_resultado_b8_a_b11(concurso_inicial NUMERIC, concurso_final NUMERIC)
RETURNS TABLE(b8_a_b11_id numeric, b8 numeric,
b9 numeric,
b10 numeric,
b11 numeric, qt_vezes NUMERIC)
LANGUAGE plpgsql
As $$
Declare
Begin
RETURN QUERY SELECT
ltf_a.b8_a_b11_id,
ltf_a.b8,
ltf_a.b9,
ltf_a.b10,
ltf_a.b11,
count(ltf_b.b8_a_b11_id)::numeric as qt_vezes
from lotofacil.lotofacil_id_b8_a_b11 ltf_a
left join lotofacil.lotofacil_resultado_coluna_b ltf_b
on ltf_a.b8_a_b11_id = ltf_b.b8_a_b11_id
AND concurso BETWEEN concurso_inicial AND concurso_final
group by ltf_a.b8_a_b11_id, ltf_a.b8,
ltf_a.b9,
ltf_a.b10,
ltf_a.b11
order by ltf_a.b8_a_b11_id, ltf_a.b8 asc,
ltf_a.b9 asc,
ltf_a.b10 asc,
ltf_a.b11 asc;
end;
$$;

Drop view if exists lotofacil.v_lotofacil_resultado_b8_a_b12;
create view lotofacil.v_lotofacil_resultado_b8_a_b12 as
Select
ltf_a.b8_a_b12_id,
ltf_a.b8,
ltf_a.b9,
ltf_a.b10,
ltf_a.b11,
ltf_a.b12,
count(ltf_b.b8_a_b12_id) as qt_vezes
from
lotofacil.lotofacil_id_b8_a_b12 ltf_a
left join lotofacil.lotofacil_resultado_coluna_b ltf_b
on ltf_a.b8_a_b12_id = ltf_b.b8_a_b12_id
group by ltf_a.b8_a_b12_id,
ltf_a.b8,
ltf_a.b9,
ltf_a.b10,
ltf_a.b11,
ltf_a.b12
order by qt_vezes desc,
ltf_a.b8 asc,
ltf_a.b9 asc,
ltf_a.b10 asc,
ltf_a.b11 asc,
ltf_a.b12 asc;

DROP FUNCTION IF EXISTS lotofacil.fn_lotofacil_resultado_b8_a_b12( NUMERIC, NUMERIC );
CREATE FUNCTION lotofacil.fn_lotofacil_resultado_b8_a_b12(concurso_inicial NUMERIC, concurso_final NUMERIC)
RETURNS TABLE(b8_a_b12_id numeric, b8 numeric,
b9 numeric,
b10 numeric,
b11 numeric,
b12 numeric, qt_vezes NUMERIC)
LANGUAGE plpgsql
As $$
Declare
Begin
RETURN QUERY SELECT
ltf_a.b8_a_b12_id,
ltf_a.b8,
ltf_a.b9,
ltf_a.b10,
ltf_a.b11,
ltf_a.b12,
count(ltf_b.b8_a_b12_id)::numeric as qt_vezes
from lotofacil.lotofacil_id_b8_a_b12 ltf_a
left join lotofacil.lotofacil_resultado_coluna_b ltf_b
on ltf_a.b8_a_b12_id = ltf_b.b8_a_b12_id
AND concurso BETWEEN concurso_inicial AND concurso_final
group by ltf_a.b8_a_b12_id, ltf_a.b8,
ltf_a.b9,
ltf_a.b10,
ltf_a.b11,
ltf_a.b12
order by ltf_a.b8_a_b12_id, ltf_a.b8 asc,
ltf_a.b9 asc,
ltf_a.b10 asc,
ltf_a.b11 asc,
ltf_a.b12 asc;
end;
$$;

Drop view if exists lotofacil.v_lotofacil_resultado_b8_a_b13;
create view lotofacil.v_lotofacil_resultado_b8_a_b13 as
Select
ltf_a.b8_a_b13_id,
ltf_a.b8,
ltf_a.b9,
ltf_a.b10,
ltf_a.b11,
ltf_a.b12,
ltf_a.b13,
count(ltf_b.b8_a_b13_id) as qt_vezes
from
lotofacil.lotofacil_id_b8_a_b13 ltf_a
left join lotofacil.lotofacil_resultado_coluna_b ltf_b
on ltf_a.b8_a_b13_id = ltf_b.b8_a_b13_id
group by ltf_a.b8_a_b13_id,
ltf_a.b8,
ltf_a.b9,
ltf_a.b10,
ltf_a.b11,
ltf_a.b12,
ltf_a.b13
order by qt_vezes desc,
ltf_a.b8 asc,
ltf_a.b9 asc,
ltf_a.b10 asc,
ltf_a.b11 asc,
ltf_a.b12 asc,
ltf_a.b13 asc;

DROP FUNCTION IF EXISTS lotofacil.fn_lotofacil_resultado_b8_a_b13( NUMERIC, NUMERIC );
CREATE FUNCTION lotofacil.fn_lotofacil_resultado_b8_a_b13(concurso_inicial NUMERIC, concurso_final NUMERIC)
RETURNS TABLE(b8_a_b13_id numeric, b8 numeric,
b9 numeric,
b10 numeric,
b11 numeric,
b12 numeric,
b13 numeric, qt_vezes NUMERIC)
LANGUAGE plpgsql
As $$
Declare
Begin
RETURN QUERY SELECT
ltf_a.b8_a_b13_id,
ltf_a.b8,
ltf_a.b9,
ltf_a.b10,
ltf_a.b11,
ltf_a.b12,
ltf_a.b13,
count(ltf_b.b8_a_b13_id)::numeric as qt_vezes
from lotofacil.lotofacil_id_b8_a_b13 ltf_a
left join lotofacil.lotofacil_resultado_coluna_b ltf_b
on ltf_a.b8_a_b13_id = ltf_b.b8_a_b13_id
AND concurso BETWEEN concurso_inicial AND concurso_final
group by ltf_a.b8_a_b13_id, ltf_a.b8,
ltf_a.b9,
ltf_a.b10,
ltf_a.b11,
ltf_a.b12,
ltf_a.b13
order by ltf_a.b8_a_b13_id, ltf_a.b8 asc,
ltf_a.b9 asc,
ltf_a.b10 asc,
ltf_a.b11 asc,
ltf_a.b12 asc,
ltf_a.b13 asc;
end;
$$;

Drop view if exists lotofacil.v_lotofacil_resultado_b8_a_b14;
create view lotofacil.v_lotofacil_resultado_b8_a_b14 as
Select
ltf_a.b8_a_b14_id,
ltf_a.b8,
ltf_a.b9,
ltf_a.b10,
ltf_a.b11,
ltf_a.b12,
ltf_a.b13,
ltf_a.b14,
count(ltf_b.b8_a_b14_id) as qt_vezes
from
lotofacil.lotofacil_id_b8_a_b14 ltf_a
left join lotofacil.lotofacil_resultado_coluna_b ltf_b
on ltf_a.b8_a_b14_id = ltf_b.b8_a_b14_id
group by ltf_a.b8_a_b14_id,
ltf_a.b8,
ltf_a.b9,
ltf_a.b10,
ltf_a.b11,
ltf_a.b12,
ltf_a.b13,
ltf_a.b14
order by qt_vezes desc,
ltf_a.b8 asc,
ltf_a.b9 asc,
ltf_a.b10 asc,
ltf_a.b11 asc,
ltf_a.b12 asc,
ltf_a.b13 asc,
ltf_a.b14 asc;

DROP FUNCTION IF EXISTS lotofacil.fn_lotofacil_resultado_b8_a_b14( NUMERIC, NUMERIC );
CREATE FUNCTION lotofacil.fn_lotofacil_resultado_b8_a_b14(concurso_inicial NUMERIC, concurso_final NUMERIC)
RETURNS TABLE(b8_a_b14_id numeric, b8 numeric,
b9 numeric,
b10 numeric,
b11 numeric,
b12 numeric,
b13 numeric,
b14 numeric, qt_vezes NUMERIC)
LANGUAGE plpgsql
As $$
Declare
Begin
RETURN QUERY SELECT
ltf_a.b8_a_b14_id,
ltf_a.b8,
ltf_a.b9,
ltf_a.b10,
ltf_a.b11,
ltf_a.b12,
ltf_a.b13,
ltf_a.b14,
count(ltf_b.b8_a_b14_id)::numeric as qt_vezes
from lotofacil.lotofacil_id_b8_a_b14 ltf_a
left join lotofacil.lotofacil_resultado_coluna_b ltf_b
on ltf_a.b8_a_b14_id = ltf_b.b8_a_b14_id
AND concurso BETWEEN concurso_inicial AND concurso_final
group by ltf_a.b8_a_b14_id, ltf_a.b8,
ltf_a.b9,
ltf_a.b10,
ltf_a.b11,
ltf_a.b12,
ltf_a.b13,
ltf_a.b14
order by ltf_a.b8_a_b14_id, ltf_a.b8 asc,
ltf_a.b9 asc,
ltf_a.b10 asc,
ltf_a.b11 asc,
ltf_a.b12 asc,
ltf_a.b13 asc,
ltf_a.b14 asc;
end;
$$;

Drop view if exists lotofacil.v_lotofacil_resultado_b8_a_b15;
create view lotofacil.v_lotofacil_resultado_b8_a_b15 as
Select
ltf_a.b8_a_b15_id,
ltf_a.b8,
ltf_a.b9,
ltf_a.b10,
ltf_a.b11,
ltf_a.b12,
ltf_a.b13,
ltf_a.b14,
ltf_a.b15,
count(ltf_b.b8_a_b15_id) as qt_vezes
from
lotofacil.lotofacil_id_b8_a_b15 ltf_a
left join lotofacil.lotofacil_resultado_coluna_b ltf_b
on ltf_a.b8_a_b15_id = ltf_b.b8_a_b15_id
group by ltf_a.b8_a_b15_id,
ltf_a.b8,
ltf_a.b9,
ltf_a.b10,
ltf_a.b11,
ltf_a.b12,
ltf_a.b13,
ltf_a.b14,
ltf_a.b15
order by qt_vezes desc,
ltf_a.b8 asc,
ltf_a.b9 asc,
ltf_a.b10 asc,
ltf_a.b11 asc,
ltf_a.b12 asc,
ltf_a.b13 asc,
ltf_a.b14 asc,
ltf_a.b15 asc;

DROP FUNCTION IF EXISTS lotofacil.fn_lotofacil_resultado_b8_a_b15( NUMERIC, NUMERIC );
CREATE FUNCTION lotofacil.fn_lotofacil_resultado_b8_a_b15(concurso_inicial NUMERIC, concurso_final NUMERIC)
RETURNS TABLE(b8_a_b15_id numeric, b8 numeric,
b9 numeric,
b10 numeric,
b11 numeric,
b12 numeric,
b13 numeric,
b14 numeric,
b15 numeric, qt_vezes NUMERIC)
LANGUAGE plpgsql
As $$
Declare
Begin
RETURN QUERY SELECT
ltf_a.b8_a_b15_id,
ltf_a.b8,
ltf_a.b9,
ltf_a.b10,
ltf_a.b11,
ltf_a.b12,
ltf_a.b13,
ltf_a.b14,
ltf_a.b15,
count(ltf_b.b8_a_b15_id)::numeric as qt_vezes
from lotofacil.lotofacil_id_b8_a_b15 ltf_a
left join lotofacil.lotofacil_resultado_coluna_b ltf_b
on ltf_a.b8_a_b15_id = ltf_b.b8_a_b15_id
AND concurso BETWEEN concurso_inicial AND concurso_final
group by ltf_a.b8_a_b15_id, ltf_a.b8,
ltf_a.b9,
ltf_a.b10,
ltf_a.b11,
ltf_a.b12,
ltf_a.b13,
ltf_a.b14,
ltf_a.b15
order by ltf_a.b8_a_b15_id, ltf_a.b8 asc,
ltf_a.b9 asc,
ltf_a.b10 asc,
ltf_a.b11 asc,
ltf_a.b12 asc,
ltf_a.b13 asc,
ltf_a.b14 asc,
ltf_a.b15 asc;
end;
$$;

Drop view if exists lotofacil.v_lotofacil_resultado_b9_a_b9;
create view lotofacil.v_lotofacil_resultado_b9_a_b9 as
Select
ltf_a.b9_a_b9_id,
ltf_a.b9,
count(ltf_b.b9_a_b9_id) as qt_vezes
from
lotofacil.lotofacil_id_b9_a_b9 ltf_a
left join lotofacil.lotofacil_resultado_coluna_b ltf_b
on ltf_a.b9_a_b9_id = ltf_b.b9_a_b9_id
group by ltf_a.b9_a_b9_id,
ltf_a.b9
order by qt_vezes desc,
ltf_a.b9 asc;

DROP FUNCTION IF EXISTS lotofacil.fn_lotofacil_resultado_b9_a_b9( NUMERIC, NUMERIC );
CREATE FUNCTION lotofacil.fn_lotofacil_resultado_b9_a_b9(concurso_inicial NUMERIC, concurso_final NUMERIC)
RETURNS TABLE(b9_a_b9_id numeric, b9 numeric, qt_vezes NUMERIC)
LANGUAGE plpgsql
As $$
Declare
Begin
RETURN QUERY SELECT
ltf_a.b9_a_b9_id,
ltf_a.b9,
count(ltf_b.b9_a_b9_id)::numeric as qt_vezes
from lotofacil.lotofacil_id_b9_a_b9 ltf_a
left join lotofacil.lotofacil_resultado_coluna_b ltf_b
on ltf_a.b9_a_b9_id = ltf_b.b9_a_b9_id
AND concurso BETWEEN concurso_inicial AND concurso_final
group by ltf_a.b9_a_b9_id, ltf_a.b9
order by ltf_a.b9_a_b9_id, ltf_a.b9 asc;
end;
$$;

Drop view if exists lotofacil.v_lotofacil_resultado_b9_a_b10;
create view lotofacil.v_lotofacil_resultado_b9_a_b10 as
Select
ltf_a.b9_a_b10_id,
ltf_a.b9,
ltf_a.b10,
count(ltf_b.b9_a_b10_id) as qt_vezes
from
lotofacil.lotofacil_id_b9_a_b10 ltf_a
left join lotofacil.lotofacil_resultado_coluna_b ltf_b
on ltf_a.b9_a_b10_id = ltf_b.b9_a_b10_id
group by ltf_a.b9_a_b10_id,
ltf_a.b9,
ltf_a.b10
order by qt_vezes desc,
ltf_a.b9 asc,
ltf_a.b10 asc;

DROP FUNCTION IF EXISTS lotofacil.fn_lotofacil_resultado_b9_a_b10( NUMERIC, NUMERIC );
CREATE FUNCTION lotofacil.fn_lotofacil_resultado_b9_a_b10(concurso_inicial NUMERIC, concurso_final NUMERIC)
RETURNS TABLE(b9_a_b10_id numeric, b9 numeric,
b10 numeric, qt_vezes NUMERIC)
LANGUAGE plpgsql
As $$
Declare
Begin
RETURN QUERY SELECT
ltf_a.b9_a_b10_id,
ltf_a.b9,
ltf_a.b10,
count(ltf_b.b9_a_b10_id)::numeric as qt_vezes
from lotofacil.lotofacil_id_b9_a_b10 ltf_a
left join lotofacil.lotofacil_resultado_coluna_b ltf_b
on ltf_a.b9_a_b10_id = ltf_b.b9_a_b10_id
AND concurso BETWEEN concurso_inicial AND concurso_final
group by ltf_a.b9_a_b10_id, ltf_a.b9,
ltf_a.b10
order by ltf_a.b9_a_b10_id, ltf_a.b9 asc,
ltf_a.b10 asc;
end;
$$;

Drop view if exists lotofacil.v_lotofacil_resultado_b9_a_b11;
create view lotofacil.v_lotofacil_resultado_b9_a_b11 as
Select
ltf_a.b9_a_b11_id,
ltf_a.b9,
ltf_a.b10,
ltf_a.b11,
count(ltf_b.b9_a_b11_id) as qt_vezes
from
lotofacil.lotofacil_id_b9_a_b11 ltf_a
left join lotofacil.lotofacil_resultado_coluna_b ltf_b
on ltf_a.b9_a_b11_id = ltf_b.b9_a_b11_id
group by ltf_a.b9_a_b11_id,
ltf_a.b9,
ltf_a.b10,
ltf_a.b11
order by qt_vezes desc,
ltf_a.b9 asc,
ltf_a.b10 asc,
ltf_a.b11 asc;

DROP FUNCTION IF EXISTS lotofacil.fn_lotofacil_resultado_b9_a_b11( NUMERIC, NUMERIC );
CREATE FUNCTION lotofacil.fn_lotofacil_resultado_b9_a_b11(concurso_inicial NUMERIC, concurso_final NUMERIC)
RETURNS TABLE(b9_a_b11_id numeric, b9 numeric,
b10 numeric,
b11 numeric, qt_vezes NUMERIC)
LANGUAGE plpgsql
As $$
Declare
Begin
RETURN QUERY SELECT
ltf_a.b9_a_b11_id,
ltf_a.b9,
ltf_a.b10,
ltf_a.b11,
count(ltf_b.b9_a_b11_id)::numeric as qt_vezes
from lotofacil.lotofacil_id_b9_a_b11 ltf_a
left join lotofacil.lotofacil_resultado_coluna_b ltf_b
on ltf_a.b9_a_b11_id = ltf_b.b9_a_b11_id
AND concurso BETWEEN concurso_inicial AND concurso_final
group by ltf_a.b9_a_b11_id, ltf_a.b9,
ltf_a.b10,
ltf_a.b11
order by ltf_a.b9_a_b11_id, ltf_a.b9 asc,
ltf_a.b10 asc,
ltf_a.b11 asc;
end;
$$;

Drop view if exists lotofacil.v_lotofacil_resultado_b9_a_b12;
create view lotofacil.v_lotofacil_resultado_b9_a_b12 as
Select
ltf_a.b9_a_b12_id,
ltf_a.b9,
ltf_a.b10,
ltf_a.b11,
ltf_a.b12,
count(ltf_b.b9_a_b12_id) as qt_vezes
from
lotofacil.lotofacil_id_b9_a_b12 ltf_a
left join lotofacil.lotofacil_resultado_coluna_b ltf_b
on ltf_a.b9_a_b12_id = ltf_b.b9_a_b12_id
group by ltf_a.b9_a_b12_id,
ltf_a.b9,
ltf_a.b10,
ltf_a.b11,
ltf_a.b12
order by qt_vezes desc,
ltf_a.b9 asc,
ltf_a.b10 asc,
ltf_a.b11 asc,
ltf_a.b12 asc;

DROP FUNCTION IF EXISTS lotofacil.fn_lotofacil_resultado_b9_a_b12( NUMERIC, NUMERIC );
CREATE FUNCTION lotofacil.fn_lotofacil_resultado_b9_a_b12(concurso_inicial NUMERIC, concurso_final NUMERIC)
RETURNS TABLE(b9_a_b12_id numeric, b9 numeric,
b10 numeric,
b11 numeric,
b12 numeric, qt_vezes NUMERIC)
LANGUAGE plpgsql
As $$
Declare
Begin
RETURN QUERY SELECT
ltf_a.b9_a_b12_id,
ltf_a.b9,
ltf_a.b10,
ltf_a.b11,
ltf_a.b12,
count(ltf_b.b9_a_b12_id)::numeric as qt_vezes
from lotofacil.lotofacil_id_b9_a_b12 ltf_a
left join lotofacil.lotofacil_resultado_coluna_b ltf_b
on ltf_a.b9_a_b12_id = ltf_b.b9_a_b12_id
AND concurso BETWEEN concurso_inicial AND concurso_final
group by ltf_a.b9_a_b12_id, ltf_a.b9,
ltf_a.b10,
ltf_a.b11,
ltf_a.b12
order by ltf_a.b9_a_b12_id, ltf_a.b9 asc,
ltf_a.b10 asc,
ltf_a.b11 asc,
ltf_a.b12 asc;
end;
$$;

Drop view if exists lotofacil.v_lotofacil_resultado_b9_a_b13;
create view lotofacil.v_lotofacil_resultado_b9_a_b13 as
Select
ltf_a.b9_a_b13_id,
ltf_a.b9,
ltf_a.b10,
ltf_a.b11,
ltf_a.b12,
ltf_a.b13,
count(ltf_b.b9_a_b13_id) as qt_vezes
from
lotofacil.lotofacil_id_b9_a_b13 ltf_a
left join lotofacil.lotofacil_resultado_coluna_b ltf_b
on ltf_a.b9_a_b13_id = ltf_b.b9_a_b13_id
group by ltf_a.b9_a_b13_id,
ltf_a.b9,
ltf_a.b10,
ltf_a.b11,
ltf_a.b12,
ltf_a.b13
order by qt_vezes desc,
ltf_a.b9 asc,
ltf_a.b10 asc,
ltf_a.b11 asc,
ltf_a.b12 asc,
ltf_a.b13 asc;

DROP FUNCTION IF EXISTS lotofacil.fn_lotofacil_resultado_b9_a_b13( NUMERIC, NUMERIC );
CREATE FUNCTION lotofacil.fn_lotofacil_resultado_b9_a_b13(concurso_inicial NUMERIC, concurso_final NUMERIC)
RETURNS TABLE(b9_a_b13_id numeric, b9 numeric,
b10 numeric,
b11 numeric,
b12 numeric,
b13 numeric, qt_vezes NUMERIC)
LANGUAGE plpgsql
As $$
Declare
Begin
RETURN QUERY SELECT
ltf_a.b9_a_b13_id,
ltf_a.b9,
ltf_a.b10,
ltf_a.b11,
ltf_a.b12,
ltf_a.b13,
count(ltf_b.b9_a_b13_id)::numeric as qt_vezes
from lotofacil.lotofacil_id_b9_a_b13 ltf_a
left join lotofacil.lotofacil_resultado_coluna_b ltf_b
on ltf_a.b9_a_b13_id = ltf_b.b9_a_b13_id
AND concurso BETWEEN concurso_inicial AND concurso_final
group by ltf_a.b9_a_b13_id, ltf_a.b9,
ltf_a.b10,
ltf_a.b11,
ltf_a.b12,
ltf_a.b13
order by ltf_a.b9_a_b13_id, ltf_a.b9 asc,
ltf_a.b10 asc,
ltf_a.b11 asc,
ltf_a.b12 asc,
ltf_a.b13 asc;
end;
$$;

Drop view if exists lotofacil.v_lotofacil_resultado_b9_a_b14;
create view lotofacil.v_lotofacil_resultado_b9_a_b14 as
Select
ltf_a.b9_a_b14_id,
ltf_a.b9,
ltf_a.b10,
ltf_a.b11,
ltf_a.b12,
ltf_a.b13,
ltf_a.b14,
count(ltf_b.b9_a_b14_id) as qt_vezes
from
lotofacil.lotofacil_id_b9_a_b14 ltf_a
left join lotofacil.lotofacil_resultado_coluna_b ltf_b
on ltf_a.b9_a_b14_id = ltf_b.b9_a_b14_id
group by ltf_a.b9_a_b14_id,
ltf_a.b9,
ltf_a.b10,
ltf_a.b11,
ltf_a.b12,
ltf_a.b13,
ltf_a.b14
order by qt_vezes desc,
ltf_a.b9 asc,
ltf_a.b10 asc,
ltf_a.b11 asc,
ltf_a.b12 asc,
ltf_a.b13 asc,
ltf_a.b14 asc;

DROP FUNCTION IF EXISTS lotofacil.fn_lotofacil_resultado_b9_a_b14( NUMERIC, NUMERIC );
CREATE FUNCTION lotofacil.fn_lotofacil_resultado_b9_a_b14(concurso_inicial NUMERIC, concurso_final NUMERIC)
RETURNS TABLE(b9_a_b14_id numeric, b9 numeric,
b10 numeric,
b11 numeric,
b12 numeric,
b13 numeric,
b14 numeric, qt_vezes NUMERIC)
LANGUAGE plpgsql
As $$
Declare
Begin
RETURN QUERY SELECT
ltf_a.b9_a_b14_id,
ltf_a.b9,
ltf_a.b10,
ltf_a.b11,
ltf_a.b12,
ltf_a.b13,
ltf_a.b14,
count(ltf_b.b9_a_b14_id)::numeric as qt_vezes
from lotofacil.lotofacil_id_b9_a_b14 ltf_a
left join lotofacil.lotofacil_resultado_coluna_b ltf_b
on ltf_a.b9_a_b14_id = ltf_b.b9_a_b14_id
AND concurso BETWEEN concurso_inicial AND concurso_final
group by ltf_a.b9_a_b14_id, ltf_a.b9,
ltf_a.b10,
ltf_a.b11,
ltf_a.b12,
ltf_a.b13,
ltf_a.b14
order by ltf_a.b9_a_b14_id, ltf_a.b9 asc,
ltf_a.b10 asc,
ltf_a.b11 asc,
ltf_a.b12 asc,
ltf_a.b13 asc,
ltf_a.b14 asc;
end;
$$;

Drop view if exists lotofacil.v_lotofacil_resultado_b9_a_b15;
create view lotofacil.v_lotofacil_resultado_b9_a_b15 as
Select
ltf_a.b9_a_b15_id,
ltf_a.b9,
ltf_a.b10,
ltf_a.b11,
ltf_a.b12,
ltf_a.b13,
ltf_a.b14,
ltf_a.b15,
count(ltf_b.b9_a_b15_id) as qt_vezes
from
lotofacil.lotofacil_id_b9_a_b15 ltf_a
left join lotofacil.lotofacil_resultado_coluna_b ltf_b
on ltf_a.b9_a_b15_id = ltf_b.b9_a_b15_id
group by ltf_a.b9_a_b15_id,
ltf_a.b9,
ltf_a.b10,
ltf_a.b11,
ltf_a.b12,
ltf_a.b13,
ltf_a.b14,
ltf_a.b15
order by qt_vezes desc,
ltf_a.b9 asc,
ltf_a.b10 asc,
ltf_a.b11 asc,
ltf_a.b12 asc,
ltf_a.b13 asc,
ltf_a.b14 asc,
ltf_a.b15 asc;

DROP FUNCTION IF EXISTS lotofacil.fn_lotofacil_resultado_b9_a_b15( NUMERIC, NUMERIC );
CREATE FUNCTION lotofacil.fn_lotofacil_resultado_b9_a_b15(concurso_inicial NUMERIC, concurso_final NUMERIC)
RETURNS TABLE(b9_a_b15_id numeric, b9 numeric,
b10 numeric,
b11 numeric,
b12 numeric,
b13 numeric,
b14 numeric,
b15 numeric, qt_vezes NUMERIC)
LANGUAGE plpgsql
As $$
Declare
Begin
RETURN QUERY SELECT
ltf_a.b9_a_b15_id,
ltf_a.b9,
ltf_a.b10,
ltf_a.b11,
ltf_a.b12,
ltf_a.b13,
ltf_a.b14,
ltf_a.b15,
count(ltf_b.b9_a_b15_id)::numeric as qt_vezes
from lotofacil.lotofacil_id_b9_a_b15 ltf_a
left join lotofacil.lotofacil_resultado_coluna_b ltf_b
on ltf_a.b9_a_b15_id = ltf_b.b9_a_b15_id
AND concurso BETWEEN concurso_inicial AND concurso_final
group by ltf_a.b9_a_b15_id, ltf_a.b9,
ltf_a.b10,
ltf_a.b11,
ltf_a.b12,
ltf_a.b13,
ltf_a.b14,
ltf_a.b15
order by ltf_a.b9_a_b15_id, ltf_a.b9 asc,
ltf_a.b10 asc,
ltf_a.b11 asc,
ltf_a.b12 asc,
ltf_a.b13 asc,
ltf_a.b14 asc,
ltf_a.b15 asc;
end;
$$;

Drop view if exists lotofacil.v_lotofacil_resultado_b10_a_b10;
create view lotofacil.v_lotofacil_resultado_b10_a_b10 as
Select
ltf_a.b10_a_b10_id,
ltf_a.b10,
count(ltf_b.b10_a_b10_id) as qt_vezes
from
lotofacil.lotofacil_id_b10_a_b10 ltf_a
left join lotofacil.lotofacil_resultado_coluna_b ltf_b
on ltf_a.b10_a_b10_id = ltf_b.b10_a_b10_id
group by ltf_a.b10_a_b10_id,
ltf_a.b10
order by qt_vezes desc,
ltf_a.b10 asc;

DROP FUNCTION IF EXISTS lotofacil.fn_lotofacil_resultado_b10_a_b10( NUMERIC, NUMERIC );
CREATE FUNCTION lotofacil.fn_lotofacil_resultado_b10_a_b10(concurso_inicial NUMERIC, concurso_final NUMERIC)
RETURNS TABLE(b10_a_b10_id numeric, b10 numeric, qt_vezes NUMERIC)
LANGUAGE plpgsql
As $$
Declare
Begin
RETURN QUERY SELECT
ltf_a.b10_a_b10_id,
ltf_a.b10,
count(ltf_b.b10_a_b10_id)::numeric as qt_vezes
from lotofacil.lotofacil_id_b10_a_b10 ltf_a
left join lotofacil.lotofacil_resultado_coluna_b ltf_b
on ltf_a.b10_a_b10_id = ltf_b.b10_a_b10_id
AND concurso BETWEEN concurso_inicial AND concurso_final
group by ltf_a.b10_a_b10_id, ltf_a.b10
order by ltf_a.b10_a_b10_id, ltf_a.b10 asc;
end;
$$;

Drop view if exists lotofacil.v_lotofacil_resultado_b10_a_b11;
create view lotofacil.v_lotofacil_resultado_b10_a_b11 as
Select
ltf_a.b10_a_b11_id,
ltf_a.b10,
ltf_a.b11,
count(ltf_b.b10_a_b11_id) as qt_vezes
from
lotofacil.lotofacil_id_b10_a_b11 ltf_a
left join lotofacil.lotofacil_resultado_coluna_b ltf_b
on ltf_a.b10_a_b11_id = ltf_b.b10_a_b11_id
group by ltf_a.b10_a_b11_id,
ltf_a.b10,
ltf_a.b11
order by qt_vezes desc,
ltf_a.b10 asc,
ltf_a.b11 asc;

DROP FUNCTION IF EXISTS lotofacil.fn_lotofacil_resultado_b10_a_b11( NUMERIC, NUMERIC );
CREATE FUNCTION lotofacil.fn_lotofacil_resultado_b10_a_b11(concurso_inicial NUMERIC, concurso_final NUMERIC)
RETURNS TABLE(b10_a_b11_id numeric, b10 numeric,
b11 numeric, qt_vezes NUMERIC)
LANGUAGE plpgsql
As $$
Declare
Begin
RETURN QUERY SELECT
ltf_a.b10_a_b11_id,
ltf_a.b10,
ltf_a.b11,
count(ltf_b.b10_a_b11_id)::numeric as qt_vezes
from lotofacil.lotofacil_id_b10_a_b11 ltf_a
left join lotofacil.lotofacil_resultado_coluna_b ltf_b
on ltf_a.b10_a_b11_id = ltf_b.b10_a_b11_id
AND concurso BETWEEN concurso_inicial AND concurso_final
group by ltf_a.b10_a_b11_id, ltf_a.b10,
ltf_a.b11
order by ltf_a.b10_a_b11_id, ltf_a.b10 asc,
ltf_a.b11 asc;
end;
$$;

Drop view if exists lotofacil.v_lotofacil_resultado_b10_a_b12;
create view lotofacil.v_lotofacil_resultado_b10_a_b12 as
Select
ltf_a.b10_a_b12_id,
ltf_a.b10,
ltf_a.b11,
ltf_a.b12,
count(ltf_b.b10_a_b12_id) as qt_vezes
from
lotofacil.lotofacil_id_b10_a_b12 ltf_a
left join lotofacil.lotofacil_resultado_coluna_b ltf_b
on ltf_a.b10_a_b12_id = ltf_b.b10_a_b12_id
group by ltf_a.b10_a_b12_id,
ltf_a.b10,
ltf_a.b11,
ltf_a.b12
order by qt_vezes desc,
ltf_a.b10 asc,
ltf_a.b11 asc,
ltf_a.b12 asc;

DROP FUNCTION IF EXISTS lotofacil.fn_lotofacil_resultado_b10_a_b12( NUMERIC, NUMERIC );
CREATE FUNCTION lotofacil.fn_lotofacil_resultado_b10_a_b12(concurso_inicial NUMERIC, concurso_final NUMERIC)
RETURNS TABLE(b10_a_b12_id numeric, b10 numeric,
b11 numeric,
b12 numeric, qt_vezes NUMERIC)
LANGUAGE plpgsql
As $$
Declare
Begin
RETURN QUERY SELECT
ltf_a.b10_a_b12_id,
ltf_a.b10,
ltf_a.b11,
ltf_a.b12,
count(ltf_b.b10_a_b12_id)::numeric as qt_vezes
from lotofacil.lotofacil_id_b10_a_b12 ltf_a
left join lotofacil.lotofacil_resultado_coluna_b ltf_b
on ltf_a.b10_a_b12_id = ltf_b.b10_a_b12_id
AND concurso BETWEEN concurso_inicial AND concurso_final
group by ltf_a.b10_a_b12_id, ltf_a.b10,
ltf_a.b11,
ltf_a.b12
order by ltf_a.b10_a_b12_id, ltf_a.b10 asc,
ltf_a.b11 asc,
ltf_a.b12 asc;
end;
$$;

Drop view if exists lotofacil.v_lotofacil_resultado_b10_a_b13;
create view lotofacil.v_lotofacil_resultado_b10_a_b13 as
Select
ltf_a.b10_a_b13_id,
ltf_a.b10,
ltf_a.b11,
ltf_a.b12,
ltf_a.b13,
count(ltf_b.b10_a_b13_id) as qt_vezes
from
lotofacil.lotofacil_id_b10_a_b13 ltf_a
left join lotofacil.lotofacil_resultado_coluna_b ltf_b
on ltf_a.b10_a_b13_id = ltf_b.b10_a_b13_id
group by ltf_a.b10_a_b13_id,
ltf_a.b10,
ltf_a.b11,
ltf_a.b12,
ltf_a.b13
order by qt_vezes desc,
ltf_a.b10 asc,
ltf_a.b11 asc,
ltf_a.b12 asc,
ltf_a.b13 asc;

DROP FUNCTION IF EXISTS lotofacil.fn_lotofacil_resultado_b10_a_b13( NUMERIC, NUMERIC );
CREATE FUNCTION lotofacil.fn_lotofacil_resultado_b10_a_b13(concurso_inicial NUMERIC, concurso_final NUMERIC)
RETURNS TABLE(b10_a_b13_id numeric, b10 numeric,
b11 numeric,
b12 numeric,
b13 numeric, qt_vezes NUMERIC)
LANGUAGE plpgsql
As $$
Declare
Begin
RETURN QUERY SELECT
ltf_a.b10_a_b13_id,
ltf_a.b10,
ltf_a.b11,
ltf_a.b12,
ltf_a.b13,
count(ltf_b.b10_a_b13_id)::numeric as qt_vezes
from lotofacil.lotofacil_id_b10_a_b13 ltf_a
left join lotofacil.lotofacil_resultado_coluna_b ltf_b
on ltf_a.b10_a_b13_id = ltf_b.b10_a_b13_id
AND concurso BETWEEN concurso_inicial AND concurso_final
group by ltf_a.b10_a_b13_id, ltf_a.b10,
ltf_a.b11,
ltf_a.b12,
ltf_a.b13
order by ltf_a.b10_a_b13_id, ltf_a.b10 asc,
ltf_a.b11 asc,
ltf_a.b12 asc,
ltf_a.b13 asc;
end;
$$;

Drop view if exists lotofacil.v_lotofacil_resultado_b10_a_b14;
create view lotofacil.v_lotofacil_resultado_b10_a_b14 as
Select
ltf_a.b10_a_b14_id,
ltf_a.b10,
ltf_a.b11,
ltf_a.b12,
ltf_a.b13,
ltf_a.b14,
count(ltf_b.b10_a_b14_id) as qt_vezes
from
lotofacil.lotofacil_id_b10_a_b14 ltf_a
left join lotofacil.lotofacil_resultado_coluna_b ltf_b
on ltf_a.b10_a_b14_id = ltf_b.b10_a_b14_id
group by ltf_a.b10_a_b14_id,
ltf_a.b10,
ltf_a.b11,
ltf_a.b12,
ltf_a.b13,
ltf_a.b14
order by qt_vezes desc,
ltf_a.b10 asc,
ltf_a.b11 asc,
ltf_a.b12 asc,
ltf_a.b13 asc,
ltf_a.b14 asc;

DROP FUNCTION IF EXISTS lotofacil.fn_lotofacil_resultado_b10_a_b14( NUMERIC, NUMERIC );
CREATE FUNCTION lotofacil.fn_lotofacil_resultado_b10_a_b14(concurso_inicial NUMERIC, concurso_final NUMERIC)
RETURNS TABLE(b10_a_b14_id numeric, b10 numeric,
b11 numeric,
b12 numeric,
b13 numeric,
b14 numeric, qt_vezes NUMERIC)
LANGUAGE plpgsql
As $$
Declare
Begin
RETURN QUERY SELECT
ltf_a.b10_a_b14_id,
ltf_a.b10,
ltf_a.b11,
ltf_a.b12,
ltf_a.b13,
ltf_a.b14,
count(ltf_b.b10_a_b14_id)::numeric as qt_vezes
from lotofacil.lotofacil_id_b10_a_b14 ltf_a
left join lotofacil.lotofacil_resultado_coluna_b ltf_b
on ltf_a.b10_a_b14_id = ltf_b.b10_a_b14_id
AND concurso BETWEEN concurso_inicial AND concurso_final
group by ltf_a.b10_a_b14_id, ltf_a.b10,
ltf_a.b11,
ltf_a.b12,
ltf_a.b13,
ltf_a.b14
order by ltf_a.b10_a_b14_id, ltf_a.b10 asc,
ltf_a.b11 asc,
ltf_a.b12 asc,
ltf_a.b13 asc,
ltf_a.b14 asc;
end;
$$;

Drop view if exists lotofacil.v_lotofacil_resultado_b10_a_b15;
create view lotofacil.v_lotofacil_resultado_b10_a_b15 as
Select
ltf_a.b10_a_b15_id,
ltf_a.b10,
ltf_a.b11,
ltf_a.b12,
ltf_a.b13,
ltf_a.b14,
ltf_a.b15,
count(ltf_b.b10_a_b15_id) as qt_vezes
from
lotofacil.lotofacil_id_b10_a_b15 ltf_a
left join lotofacil.lotofacil_resultado_coluna_b ltf_b
on ltf_a.b10_a_b15_id = ltf_b.b10_a_b15_id
group by ltf_a.b10_a_b15_id,
ltf_a.b10,
ltf_a.b11,
ltf_a.b12,
ltf_a.b13,
ltf_a.b14,
ltf_a.b15
order by qt_vezes desc,
ltf_a.b10 asc,
ltf_a.b11 asc,
ltf_a.b12 asc,
ltf_a.b13 asc,
ltf_a.b14 asc,
ltf_a.b15 asc;

DROP FUNCTION IF EXISTS lotofacil.fn_lotofacil_resultado_b10_a_b15( NUMERIC, NUMERIC );
CREATE FUNCTION lotofacil.fn_lotofacil_resultado_b10_a_b15(concurso_inicial NUMERIC, concurso_final NUMERIC)
RETURNS TABLE(b10_a_b15_id numeric, b10 numeric,
b11 numeric,
b12 numeric,
b13 numeric,
b14 numeric,
b15 numeric, qt_vezes NUMERIC)
LANGUAGE plpgsql
As $$
Declare
Begin
RETURN QUERY SELECT
ltf_a.b10_a_b15_id,
ltf_a.b10,
ltf_a.b11,
ltf_a.b12,
ltf_a.b13,
ltf_a.b14,
ltf_a.b15,
count(ltf_b.b10_a_b15_id)::numeric as qt_vezes
from lotofacil.lotofacil_id_b10_a_b15 ltf_a
left join lotofacil.lotofacil_resultado_coluna_b ltf_b
on ltf_a.b10_a_b15_id = ltf_b.b10_a_b15_id
AND concurso BETWEEN concurso_inicial AND concurso_final
group by ltf_a.b10_a_b15_id, ltf_a.b10,
ltf_a.b11,
ltf_a.b12,
ltf_a.b13,
ltf_a.b14,
ltf_a.b15
order by ltf_a.b10_a_b15_id, ltf_a.b10 asc,
ltf_a.b11 asc,
ltf_a.b12 asc,
ltf_a.b13 asc,
ltf_a.b14 asc,
ltf_a.b15 asc;
end;
$$;

Drop view if exists lotofacil.v_lotofacil_resultado_b11_a_b11;
create view lotofacil.v_lotofacil_resultado_b11_a_b11 as
Select
ltf_a.b11_a_b11_id,
ltf_a.b11,
count(ltf_b.b11_a_b11_id) as qt_vezes
from
lotofacil.lotofacil_id_b11_a_b11 ltf_a
left join lotofacil.lotofacil_resultado_coluna_b ltf_b
on ltf_a.b11_a_b11_id = ltf_b.b11_a_b11_id
group by ltf_a.b11_a_b11_id,
ltf_a.b11
order by qt_vezes desc,
ltf_a.b11 asc;

DROP FUNCTION IF EXISTS lotofacil.fn_lotofacil_resultado_b11_a_b11( NUMERIC, NUMERIC );
CREATE FUNCTION lotofacil.fn_lotofacil_resultado_b11_a_b11(concurso_inicial NUMERIC, concurso_final NUMERIC)
RETURNS TABLE(b11_a_b11_id numeric, b11 numeric, qt_vezes NUMERIC)
LANGUAGE plpgsql
As $$
Declare
Begin
RETURN QUERY SELECT
ltf_a.b11_a_b11_id,
ltf_a.b11,
count(ltf_b.b11_a_b11_id)::numeric as qt_vezes
from lotofacil.lotofacil_id_b11_a_b11 ltf_a
left join lotofacil.lotofacil_resultado_coluna_b ltf_b
on ltf_a.b11_a_b11_id = ltf_b.b11_a_b11_id
AND concurso BETWEEN concurso_inicial AND concurso_final
group by ltf_a.b11_a_b11_id, ltf_a.b11
order by ltf_a.b11_a_b11_id, ltf_a.b11 asc;
end;
$$;

Drop view if exists lotofacil.v_lotofacil_resultado_b11_a_b12;
create view lotofacil.v_lotofacil_resultado_b11_a_b12 as
Select
ltf_a.b11_a_b12_id,
ltf_a.b11,
ltf_a.b12,
count(ltf_b.b11_a_b12_id) as qt_vezes
from
lotofacil.lotofacil_id_b11_a_b12 ltf_a
left join lotofacil.lotofacil_resultado_coluna_b ltf_b
on ltf_a.b11_a_b12_id = ltf_b.b11_a_b12_id
group by ltf_a.b11_a_b12_id,
ltf_a.b11,
ltf_a.b12
order by qt_vezes desc,
ltf_a.b11 asc,
ltf_a.b12 asc;

DROP FUNCTION IF EXISTS lotofacil.fn_lotofacil_resultado_b11_a_b12( NUMERIC, NUMERIC );
CREATE FUNCTION lotofacil.fn_lotofacil_resultado_b11_a_b12(concurso_inicial NUMERIC, concurso_final NUMERIC)
RETURNS TABLE(b11_a_b12_id numeric, b11 numeric,
b12 numeric, qt_vezes NUMERIC)
LANGUAGE plpgsql
As $$
Declare
Begin
RETURN QUERY SELECT
ltf_a.b11_a_b12_id,
ltf_a.b11,
ltf_a.b12,
count(ltf_b.b11_a_b12_id)::numeric as qt_vezes
from lotofacil.lotofacil_id_b11_a_b12 ltf_a
left join lotofacil.lotofacil_resultado_coluna_b ltf_b
on ltf_a.b11_a_b12_id = ltf_b.b11_a_b12_id
AND concurso BETWEEN concurso_inicial AND concurso_final
group by ltf_a.b11_a_b12_id, ltf_a.b11,
ltf_a.b12
order by ltf_a.b11_a_b12_id, ltf_a.b11 asc,
ltf_a.b12 asc;
end;
$$;

Drop view if exists lotofacil.v_lotofacil_resultado_b11_a_b13;
create view lotofacil.v_lotofacil_resultado_b11_a_b13 as
Select
ltf_a.b11_a_b13_id,
ltf_a.b11,
ltf_a.b12,
ltf_a.b13,
count(ltf_b.b11_a_b13_id) as qt_vezes
from
lotofacil.lotofacil_id_b11_a_b13 ltf_a
left join lotofacil.lotofacil_resultado_coluna_b ltf_b
on ltf_a.b11_a_b13_id = ltf_b.b11_a_b13_id
group by ltf_a.b11_a_b13_id,
ltf_a.b11,
ltf_a.b12,
ltf_a.b13
order by qt_vezes desc,
ltf_a.b11 asc,
ltf_a.b12 asc,
ltf_a.b13 asc;

DROP FUNCTION IF EXISTS lotofacil.fn_lotofacil_resultado_b11_a_b13( NUMERIC, NUMERIC );
CREATE FUNCTION lotofacil.fn_lotofacil_resultado_b11_a_b13(concurso_inicial NUMERIC, concurso_final NUMERIC)
RETURNS TABLE(b11_a_b13_id numeric, b11 numeric,
b12 numeric,
b13 numeric, qt_vezes NUMERIC)
LANGUAGE plpgsql
As $$
Declare
Begin
RETURN QUERY SELECT
ltf_a.b11_a_b13_id,
ltf_a.b11,
ltf_a.b12,
ltf_a.b13,
count(ltf_b.b11_a_b13_id)::numeric as qt_vezes
from lotofacil.lotofacil_id_b11_a_b13 ltf_a
left join lotofacil.lotofacil_resultado_coluna_b ltf_b
on ltf_a.b11_a_b13_id = ltf_b.b11_a_b13_id
AND concurso BETWEEN concurso_inicial AND concurso_final
group by ltf_a.b11_a_b13_id, ltf_a.b11,
ltf_a.b12,
ltf_a.b13
order by ltf_a.b11_a_b13_id, ltf_a.b11 asc,
ltf_a.b12 asc,
ltf_a.b13 asc;
end;
$$;

Drop view if exists lotofacil.v_lotofacil_resultado_b11_a_b14;
create view lotofacil.v_lotofacil_resultado_b11_a_b14 as
Select
ltf_a.b11_a_b14_id,
ltf_a.b11,
ltf_a.b12,
ltf_a.b13,
ltf_a.b14,
count(ltf_b.b11_a_b14_id) as qt_vezes
from
lotofacil.lotofacil_id_b11_a_b14 ltf_a
left join lotofacil.lotofacil_resultado_coluna_b ltf_b
on ltf_a.b11_a_b14_id = ltf_b.b11_a_b14_id
group by ltf_a.b11_a_b14_id,
ltf_a.b11,
ltf_a.b12,
ltf_a.b13,
ltf_a.b14
order by qt_vezes desc,
ltf_a.b11 asc,
ltf_a.b12 asc,
ltf_a.b13 asc,
ltf_a.b14 asc;

DROP FUNCTION IF EXISTS lotofacil.fn_lotofacil_resultado_b11_a_b14( NUMERIC, NUMERIC );
CREATE FUNCTION lotofacil.fn_lotofacil_resultado_b11_a_b14(concurso_inicial NUMERIC, concurso_final NUMERIC)
RETURNS TABLE(b11_a_b14_id numeric, b11 numeric,
b12 numeric,
b13 numeric,
b14 numeric, qt_vezes NUMERIC)
LANGUAGE plpgsql
As $$
Declare
Begin
RETURN QUERY SELECT
ltf_a.b11_a_b14_id,
ltf_a.b11,
ltf_a.b12,
ltf_a.b13,
ltf_a.b14,
count(ltf_b.b11_a_b14_id)::numeric as qt_vezes
from lotofacil.lotofacil_id_b11_a_b14 ltf_a
left join lotofacil.lotofacil_resultado_coluna_b ltf_b
on ltf_a.b11_a_b14_id = ltf_b.b11_a_b14_id
AND concurso BETWEEN concurso_inicial AND concurso_final
group by ltf_a.b11_a_b14_id, ltf_a.b11,
ltf_a.b12,
ltf_a.b13,
ltf_a.b14
order by ltf_a.b11_a_b14_id, ltf_a.b11 asc,
ltf_a.b12 asc,
ltf_a.b13 asc,
ltf_a.b14 asc;
end;
$$;

Drop view if exists lotofacil.v_lotofacil_resultado_b11_a_b15;
create view lotofacil.v_lotofacil_resultado_b11_a_b15 as
Select
ltf_a.b11_a_b15_id,
ltf_a.b11,
ltf_a.b12,
ltf_a.b13,
ltf_a.b14,
ltf_a.b15,
count(ltf_b.b11_a_b15_id) as qt_vezes
from
lotofacil.lotofacil_id_b11_a_b15 ltf_a
left join lotofacil.lotofacil_resultado_coluna_b ltf_b
on ltf_a.b11_a_b15_id = ltf_b.b11_a_b15_id
group by ltf_a.b11_a_b15_id,
ltf_a.b11,
ltf_a.b12,
ltf_a.b13,
ltf_a.b14,
ltf_a.b15
order by qt_vezes desc,
ltf_a.b11 asc,
ltf_a.b12 asc,
ltf_a.b13 asc,
ltf_a.b14 asc,
ltf_a.b15 asc;

DROP FUNCTION IF EXISTS lotofacil.fn_lotofacil_resultado_b11_a_b15( NUMERIC, NUMERIC );
CREATE FUNCTION lotofacil.fn_lotofacil_resultado_b11_a_b15(concurso_inicial NUMERIC, concurso_final NUMERIC)
RETURNS TABLE(b11_a_b15_id numeric, b11 numeric,
b12 numeric,
b13 numeric,
b14 numeric,
b15 numeric, qt_vezes NUMERIC)
LANGUAGE plpgsql
As $$
Declare
Begin
RETURN QUERY SELECT
ltf_a.b11_a_b15_id,
ltf_a.b11,
ltf_a.b12,
ltf_a.b13,
ltf_a.b14,
ltf_a.b15,
count(ltf_b.b11_a_b15_id)::numeric as qt_vezes
from lotofacil.lotofacil_id_b11_a_b15 ltf_a
left join lotofacil.lotofacil_resultado_coluna_b ltf_b
on ltf_a.b11_a_b15_id = ltf_b.b11_a_b15_id
AND concurso BETWEEN concurso_inicial AND concurso_final
group by ltf_a.b11_a_b15_id, ltf_a.b11,
ltf_a.b12,
ltf_a.b13,
ltf_a.b14,
ltf_a.b15
order by ltf_a.b11_a_b15_id, ltf_a.b11 asc,
ltf_a.b12 asc,
ltf_a.b13 asc,
ltf_a.b14 asc,
ltf_a.b15 asc;
end;
$$;

Drop view if exists lotofacil.v_lotofacil_resultado_b12_a_b12;
create view lotofacil.v_lotofacil_resultado_b12_a_b12 as
Select
ltf_a.b12_a_b12_id,
ltf_a.b12,
count(ltf_b.b12_a_b12_id) as qt_vezes
from
lotofacil.lotofacil_id_b12_a_b12 ltf_a
left join lotofacil.lotofacil_resultado_coluna_b ltf_b
on ltf_a.b12_a_b12_id = ltf_b.b12_a_b12_id
group by ltf_a.b12_a_b12_id,
ltf_a.b12
order by qt_vezes desc,
ltf_a.b12 asc;

DROP FUNCTION IF EXISTS lotofacil.fn_lotofacil_resultado_b12_a_b12( NUMERIC, NUMERIC );
CREATE FUNCTION lotofacil.fn_lotofacil_resultado_b12_a_b12(concurso_inicial NUMERIC, concurso_final NUMERIC)
RETURNS TABLE(b12_a_b12_id numeric, b12 numeric, qt_vezes NUMERIC)
LANGUAGE plpgsql
As $$
Declare
Begin
RETURN QUERY SELECT
ltf_a.b12_a_b12_id,
ltf_a.b12,
count(ltf_b.b12_a_b12_id)::numeric as qt_vezes
from lotofacil.lotofacil_id_b12_a_b12 ltf_a
left join lotofacil.lotofacil_resultado_coluna_b ltf_b
on ltf_a.b12_a_b12_id = ltf_b.b12_a_b12_id
AND concurso BETWEEN concurso_inicial AND concurso_final
group by ltf_a.b12_a_b12_id, ltf_a.b12
order by ltf_a.b12_a_b12_id, ltf_a.b12 asc;
end;
$$;

Drop view if exists lotofacil.v_lotofacil_resultado_b12_a_b13;
create view lotofacil.v_lotofacil_resultado_b12_a_b13 as
Select
ltf_a.b12_a_b13_id,
ltf_a.b12,
ltf_a.b13,
count(ltf_b.b12_a_b13_id) as qt_vezes
from
lotofacil.lotofacil_id_b12_a_b13 ltf_a
left join lotofacil.lotofacil_resultado_coluna_b ltf_b
on ltf_a.b12_a_b13_id = ltf_b.b12_a_b13_id
group by ltf_a.b12_a_b13_id,
ltf_a.b12,
ltf_a.b13
order by qt_vezes desc,
ltf_a.b12 asc,
ltf_a.b13 asc;

DROP FUNCTION IF EXISTS lotofacil.fn_lotofacil_resultado_b12_a_b13( NUMERIC, NUMERIC );
CREATE FUNCTION lotofacil.fn_lotofacil_resultado_b12_a_b13(concurso_inicial NUMERIC, concurso_final NUMERIC)
RETURNS TABLE(b12_a_b13_id numeric, b12 numeric,
b13 numeric, qt_vezes NUMERIC)
LANGUAGE plpgsql
As $$
Declare
Begin
RETURN QUERY SELECT
ltf_a.b12_a_b13_id,
ltf_a.b12,
ltf_a.b13,
count(ltf_b.b12_a_b13_id)::numeric as qt_vezes
from lotofacil.lotofacil_id_b12_a_b13 ltf_a
left join lotofacil.lotofacil_resultado_coluna_b ltf_b
on ltf_a.b12_a_b13_id = ltf_b.b12_a_b13_id
AND concurso BETWEEN concurso_inicial AND concurso_final
group by ltf_a.b12_a_b13_id, ltf_a.b12,
ltf_a.b13
order by ltf_a.b12_a_b13_id, ltf_a.b12 asc,
ltf_a.b13 asc;
end;
$$;

Drop view if exists lotofacil.v_lotofacil_resultado_b12_a_b14;
create view lotofacil.v_lotofacil_resultado_b12_a_b14 as
Select
ltf_a.b12_a_b14_id,
ltf_a.b12,
ltf_a.b13,
ltf_a.b14,
count(ltf_b.b12_a_b14_id) as qt_vezes
from
lotofacil.lotofacil_id_b12_a_b14 ltf_a
left join lotofacil.lotofacil_resultado_coluna_b ltf_b
on ltf_a.b12_a_b14_id = ltf_b.b12_a_b14_id
group by ltf_a.b12_a_b14_id,
ltf_a.b12,
ltf_a.b13,
ltf_a.b14
order by qt_vezes desc,
ltf_a.b12 asc,
ltf_a.b13 asc,
ltf_a.b14 asc;

DROP FUNCTION IF EXISTS lotofacil.fn_lotofacil_resultado_b12_a_b14( NUMERIC, NUMERIC );
CREATE FUNCTION lotofacil.fn_lotofacil_resultado_b12_a_b14(concurso_inicial NUMERIC, concurso_final NUMERIC)
RETURNS TABLE(b12_a_b14_id numeric, b12 numeric,
b13 numeric,
b14 numeric, qt_vezes NUMERIC)
LANGUAGE plpgsql
As $$
Declare
Begin
RETURN QUERY SELECT
ltf_a.b12_a_b14_id,
ltf_a.b12,
ltf_a.b13,
ltf_a.b14,
count(ltf_b.b12_a_b14_id)::numeric as qt_vezes
from lotofacil.lotofacil_id_b12_a_b14 ltf_a
left join lotofacil.lotofacil_resultado_coluna_b ltf_b
on ltf_a.b12_a_b14_id = ltf_b.b12_a_b14_id
AND concurso BETWEEN concurso_inicial AND concurso_final
group by ltf_a.b12_a_b14_id, ltf_a.b12,
ltf_a.b13,
ltf_a.b14
order by ltf_a.b12_a_b14_id, ltf_a.b12 asc,
ltf_a.b13 asc,
ltf_a.b14 asc;
end;
$$;

Drop view if exists lotofacil.v_lotofacil_resultado_b12_a_b15;
create view lotofacil.v_lotofacil_resultado_b12_a_b15 as
Select
ltf_a.b12_a_b15_id,
ltf_a.b12,
ltf_a.b13,
ltf_a.b14,
ltf_a.b15,
count(ltf_b.b12_a_b15_id) as qt_vezes
from
lotofacil.lotofacil_id_b12_a_b15 ltf_a
left join lotofacil.lotofacil_resultado_coluna_b ltf_b
on ltf_a.b12_a_b15_id = ltf_b.b12_a_b15_id
group by ltf_a.b12_a_b15_id,
ltf_a.b12,
ltf_a.b13,
ltf_a.b14,
ltf_a.b15
order by qt_vezes desc,
ltf_a.b12 asc,
ltf_a.b13 asc,
ltf_a.b14 asc,
ltf_a.b15 asc;

DROP FUNCTION IF EXISTS lotofacil.fn_lotofacil_resultado_b12_a_b15( NUMERIC, NUMERIC );
CREATE FUNCTION lotofacil.fn_lotofacil_resultado_b12_a_b15(concurso_inicial NUMERIC, concurso_final NUMERIC)
RETURNS TABLE(b12_a_b15_id numeric, b12 numeric,
b13 numeric,
b14 numeric,
b15 numeric, qt_vezes NUMERIC)
LANGUAGE plpgsql
As $$
Declare
Begin
RETURN QUERY SELECT
ltf_a.b12_a_b15_id,
ltf_a.b12,
ltf_a.b13,
ltf_a.b14,
ltf_a.b15,
count(ltf_b.b12_a_b15_id)::numeric as qt_vezes
from lotofacil.lotofacil_id_b12_a_b15 ltf_a
left join lotofacil.lotofacil_resultado_coluna_b ltf_b
on ltf_a.b12_a_b15_id = ltf_b.b12_a_b15_id
AND concurso BETWEEN concurso_inicial AND concurso_final
group by ltf_a.b12_a_b15_id, ltf_a.b12,
ltf_a.b13,
ltf_a.b14,
ltf_a.b15
order by ltf_a.b12_a_b15_id, ltf_a.b12 asc,
ltf_a.b13 asc,
ltf_a.b14 asc,
ltf_a.b15 asc;
end;
$$;

Drop view if exists lotofacil.v_lotofacil_resultado_b13_a_b13;
create view lotofacil.v_lotofacil_resultado_b13_a_b13 as
Select
ltf_a.b13_a_b13_id,
ltf_a.b13,
count(ltf_b.b13_a_b13_id) as qt_vezes
from
lotofacil.lotofacil_id_b13_a_b13 ltf_a
left join lotofacil.lotofacil_resultado_coluna_b ltf_b
on ltf_a.b13_a_b13_id = ltf_b.b13_a_b13_id
group by ltf_a.b13_a_b13_id,
ltf_a.b13
order by qt_vezes desc,
ltf_a.b13 asc;

DROP FUNCTION IF EXISTS lotofacil.fn_lotofacil_resultado_b13_a_b13( NUMERIC, NUMERIC );
CREATE FUNCTION lotofacil.fn_lotofacil_resultado_b13_a_b13(concurso_inicial NUMERIC, concurso_final NUMERIC)
RETURNS TABLE(b13_a_b13_id numeric, b13 numeric, qt_vezes NUMERIC)
LANGUAGE plpgsql
As $$
Declare
Begin
RETURN QUERY SELECT
ltf_a.b13_a_b13_id,
ltf_a.b13,
count(ltf_b.b13_a_b13_id)::numeric as qt_vezes
from lotofacil.lotofacil_id_b13_a_b13 ltf_a
left join lotofacil.lotofacil_resultado_coluna_b ltf_b
on ltf_a.b13_a_b13_id = ltf_b.b13_a_b13_id
AND concurso BETWEEN concurso_inicial AND concurso_final
group by ltf_a.b13_a_b13_id, ltf_a.b13
order by ltf_a.b13_a_b13_id, ltf_a.b13 asc;
end;
$$;

Drop view if exists lotofacil.v_lotofacil_resultado_b13_a_b14;
create view lotofacil.v_lotofacil_resultado_b13_a_b14 as
Select
ltf_a.b13_a_b14_id,
ltf_a.b13,
ltf_a.b14,
count(ltf_b.b13_a_b14_id) as qt_vezes
from
lotofacil.lotofacil_id_b13_a_b14 ltf_a
left join lotofacil.lotofacil_resultado_coluna_b ltf_b
on ltf_a.b13_a_b14_id = ltf_b.b13_a_b14_id
group by ltf_a.b13_a_b14_id,
ltf_a.b13,
ltf_a.b14
order by qt_vezes desc,
ltf_a.b13 asc,
ltf_a.b14 asc;

DROP FUNCTION IF EXISTS lotofacil.fn_lotofacil_resultado_b13_a_b14( NUMERIC, NUMERIC );
CREATE FUNCTION lotofacil.fn_lotofacil_resultado_b13_a_b14(concurso_inicial NUMERIC, concurso_final NUMERIC)
RETURNS TABLE(b13_a_b14_id numeric, b13 numeric,
b14 numeric, qt_vezes NUMERIC)
LANGUAGE plpgsql
As $$
Declare
Begin
RETURN QUERY SELECT
ltf_a.b13_a_b14_id,
ltf_a.b13,
ltf_a.b14,
count(ltf_b.b13_a_b14_id)::numeric as qt_vezes
from lotofacil.lotofacil_id_b13_a_b14 ltf_a
left join lotofacil.lotofacil_resultado_coluna_b ltf_b
on ltf_a.b13_a_b14_id = ltf_b.b13_a_b14_id
AND concurso BETWEEN concurso_inicial AND concurso_final
group by ltf_a.b13_a_b14_id, ltf_a.b13,
ltf_a.b14
order by ltf_a.b13_a_b14_id, ltf_a.b13 asc,
ltf_a.b14 asc;
end;
$$;

Drop view if exists lotofacil.v_lotofacil_resultado_b13_a_b15;
create view lotofacil.v_lotofacil_resultado_b13_a_b15 as
Select
ltf_a.b13_a_b15_id,
ltf_a.b13,
ltf_a.b14,
ltf_a.b15,
count(ltf_b.b13_a_b15_id) as qt_vezes
from
lotofacil.lotofacil_id_b13_a_b15 ltf_a
left join lotofacil.lotofacil_resultado_coluna_b ltf_b
on ltf_a.b13_a_b15_id = ltf_b.b13_a_b15_id
group by ltf_a.b13_a_b15_id,
ltf_a.b13,
ltf_a.b14,
ltf_a.b15
order by qt_vezes desc,
ltf_a.b13 asc,
ltf_a.b14 asc,
ltf_a.b15 asc;

DROP FUNCTION IF EXISTS lotofacil.fn_lotofacil_resultado_b13_a_b15( NUMERIC, NUMERIC );
CREATE FUNCTION lotofacil.fn_lotofacil_resultado_b13_a_b15(concurso_inicial NUMERIC, concurso_final NUMERIC)
RETURNS TABLE(b13_a_b15_id numeric, b13 numeric,
b14 numeric,
b15 numeric, qt_vezes NUMERIC)
LANGUAGE plpgsql
As $$
Declare
Begin
RETURN QUERY SELECT
ltf_a.b13_a_b15_id,
ltf_a.b13,
ltf_a.b14,
ltf_a.b15,
count(ltf_b.b13_a_b15_id)::numeric as qt_vezes
from lotofacil.lotofacil_id_b13_a_b15 ltf_a
left join lotofacil.lotofacil_resultado_coluna_b ltf_b
on ltf_a.b13_a_b15_id = ltf_b.b13_a_b15_id
AND concurso BETWEEN concurso_inicial AND concurso_final
group by ltf_a.b13_a_b15_id, ltf_a.b13,
ltf_a.b14,
ltf_a.b15
order by ltf_a.b13_a_b15_id, ltf_a.b13 asc,
ltf_a.b14 asc,
ltf_a.b15 asc;
end;
$$;

Drop view if exists lotofacil.v_lotofacil_resultado_b14_a_b14;
create view lotofacil.v_lotofacil_resultado_b14_a_b14 as
Select
ltf_a.b14_a_b14_id,
ltf_a.b14,
count(ltf_b.b14_a_b14_id) as qt_vezes
from
lotofacil.lotofacil_id_b14_a_b14 ltf_a
left join lotofacil.lotofacil_resultado_coluna_b ltf_b
on ltf_a.b14_a_b14_id = ltf_b.b14_a_b14_id
group by ltf_a.b14_a_b14_id,
ltf_a.b14
order by qt_vezes desc,
ltf_a.b14 asc;

DROP FUNCTION IF EXISTS lotofacil.fn_lotofacil_resultado_b14_a_b14( NUMERIC, NUMERIC );
CREATE FUNCTION lotofacil.fn_lotofacil_resultado_b14_a_b14(concurso_inicial NUMERIC, concurso_final NUMERIC)
RETURNS TABLE(b14_a_b14_id numeric, b14 numeric, qt_vezes NUMERIC)
LANGUAGE plpgsql
As $$
Declare
Begin
RETURN QUERY SELECT
ltf_a.b14_a_b14_id,
ltf_a.b14,
count(ltf_b.b14_a_b14_id)::numeric as qt_vezes
from lotofacil.lotofacil_id_b14_a_b14 ltf_a
left join lotofacil.lotofacil_resultado_coluna_b ltf_b
on ltf_a.b14_a_b14_id = ltf_b.b14_a_b14_id
AND concurso BETWEEN concurso_inicial AND concurso_final
group by ltf_a.b14_a_b14_id, ltf_a.b14
order by ltf_a.b14_a_b14_id, ltf_a.b14 asc;
end;
$$;

Drop view if exists lotofacil.v_lotofacil_resultado_b14_a_b15;
create view lotofacil.v_lotofacil_resultado_b14_a_b15 as
Select
ltf_a.b14_a_b15_id,
ltf_a.b14,
ltf_a.b15,
count(ltf_b.b14_a_b15_id) as qt_vezes
from
lotofacil.lotofacil_id_b14_a_b15 ltf_a
left join lotofacil.lotofacil_resultado_coluna_b ltf_b
on ltf_a.b14_a_b15_id = ltf_b.b14_a_b15_id
group by ltf_a.b14_a_b15_id,
ltf_a.b14,
ltf_a.b15
order by qt_vezes desc,
ltf_a.b14 asc,
ltf_a.b15 asc;

DROP FUNCTION IF EXISTS lotofacil.fn_lotofacil_resultado_b14_a_b15( NUMERIC, NUMERIC );
CREATE FUNCTION lotofacil.fn_lotofacil_resultado_b14_a_b15(concurso_inicial NUMERIC, concurso_final NUMERIC)
RETURNS TABLE(b14_a_b15_id numeric, b14 numeric,
b15 numeric, qt_vezes NUMERIC)
LANGUAGE plpgsql
As $$
Declare
Begin
RETURN QUERY SELECT
ltf_a.b14_a_b15_id,
ltf_a.b14,
ltf_a.b15,
count(ltf_b.b14_a_b15_id)::numeric as qt_vezes
from lotofacil.lotofacil_id_b14_a_b15 ltf_a
left join lotofacil.lotofacil_resultado_coluna_b ltf_b
on ltf_a.b14_a_b15_id = ltf_b.b14_a_b15_id
AND concurso BETWEEN concurso_inicial AND concurso_final
group by ltf_a.b14_a_b15_id, ltf_a.b14,
ltf_a.b15
order by ltf_a.b14_a_b15_id, ltf_a.b14 asc,
ltf_a.b15 asc;
end;
$$;

Drop view if exists lotofacil.v_lotofacil_resultado_b15_a_b15;
create view lotofacil.v_lotofacil_resultado_b15_a_b15 as
Select
ltf_a.b15_a_b15_id,
ltf_a.b15,
count(ltf_b.b15_a_b15_id) as qt_vezes
from
lotofacil.lotofacil_id_b15_a_b15 ltf_a
left join lotofacil.lotofacil_resultado_coluna_b ltf_b
on ltf_a.b15_a_b15_id = ltf_b.b15_a_b15_id
group by ltf_a.b15_a_b15_id,
ltf_a.b15
order by qt_vezes desc,
ltf_a.b15 asc;

DROP FUNCTION IF EXISTS lotofacil.fn_lotofacil_resultado_b15_a_b15( NUMERIC, NUMERIC );
CREATE FUNCTION lotofacil.fn_lotofacil_resultado_b15_a_b15(concurso_inicial NUMERIC, concurso_final NUMERIC)
RETURNS TABLE(b15_a_b15_id numeric, b15 numeric, qt_vezes NUMERIC)
LANGUAGE plpgsql
As $$
Declare
Begin
RETURN QUERY SELECT
ltf_a.b15_a_b15_id,
ltf_a.b15,
count(ltf_b.b15_a_b15_id)::numeric as qt_vezes
from lotofacil.lotofacil_id_b15_a_b15 ltf_a
left join lotofacil.lotofacil_resultado_coluna_b ltf_b
on ltf_a.b15_a_b15_id = ltf_b.b15_a_b15_id
AND concurso BETWEEN concurso_inicial AND concurso_final
group by ltf_a.b15_a_b15_id, ltf_a.b15
order by ltf_a.b15_a_b15_id, ltf_a.b15 asc;
end;
$$;


/**
     Fim
 */



