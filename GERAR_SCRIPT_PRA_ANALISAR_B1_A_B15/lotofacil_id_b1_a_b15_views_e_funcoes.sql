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

