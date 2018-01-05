Drop View if exists lotomania.v_lotomania_resultado_concursos;
Create View lotomania.v_lotomania_resultado_concursos AS 
  Select concurso from lotomania.lotomania_resultado_bolas
    group by concurso
  order by concurso desc;

Drop view if exists lotomania.v_lotomania_resultado_par_impar;
Create View lotomania.v_lotomania_resultado_par_impar as
  Select qt_pares, qt_impares, count(*) as qt_vezes FROM lotomania.lotomania_resultado_par_impar
  group by qt_pares, qt_impares
  order by qt_vezes desc, qt_pares, qt_impares;
