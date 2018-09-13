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



