{
 Autor:         Fábio Moura de Oliveira.
 Descrição:     Programa pra gerar as views pra analisar as 120 colunas
                da tabela lotofacil.lotofacil_resultado_coluna_b.
 Como funciona: Substitua no template as variáveis entre {}.
 Obs.:
 Eu poderia ter codificado manualmente, mas levaria tempo, então, resolvi
 criar um template e dentro deste template, há locais que devem ser substituídos
 por valores.
 Este script cria uma e uma função pra as 120 colunas da tabela lotofacil.lotofacil_resultado_coluna_b.
 }

program gerar_sql_b1_a_b15;
uses
    classes, sysUtils, strUtils;

var
  uA, uB, bola_minima, qt_bolas_por_combinacao, bola_maxima,
    bolas_por_grupo, id_campo_do_select, uC, qt_bolas: Integer;
  template, stl_template, stl_template_gerado: TStringList;
  nome_da_tabela, campo_da_view, texto_a_ser_substituido, texto_gerado,
    campo_do_select: String;
  plural, campo_do_return_table, nome_dos_campos_b,
    sufixo_do_nome_da_tabela, campos_b_ao_inserir, strTexto,

    nome_dos_campos_b_asc, nome_dos_campos_b_numeric, campo_id_1,
    campo_id_2: String;
begin
  template := TStringList.Create;
  template.Add('Drop view if exists lotofacil.v_lotofacil_resultado_{nome_tabela};');
  template.Add('Create View lotofacil.v_lotofacil_resultado_{nome_tabela} (grp_id{campo_da_view}, qt_vezes) as');
  template.Add('Select ltf_a.grp_id{campo_do_select}, count(ltf_b.{nome_tabela}_id) as qt_vezes from');
  template.Add('lotofacil.lotofacil_id_grupo_{qt_bolas_por_grupo}_bola{plural} ltf_a');
  template.Add('left join lotofacil.lotofacil_resultado_coluna_b ltf_b');
  template.Add('on {nome_tabela}_id = ltf_a.grp_id');
  template.Add('where ltf_a.bola1 >= {bola_minima} and ltf_a.bola1 <= {bola_maxima}');
  template.Add('group by ltf_a.grp_id{campo_do_select}');
  template.Add('order by qt_vezes desc{campo_do_select};');
  template.Add('drop function if exists lotofacil.fn_lotofacil_resultado_{nome_tabela}(numeric, numeric);');
  template.Add('create function lotofacil.fn_lotofacil_resultado_{nome_tabela}(concurso_inicial numeric, concurso_final numeric)');
  template.Add('returns table (grp_id numeric{campo_do_return_table})');
  template.Add('LANGUAGE plpgsql');
  template.Add(' as $$');
  template.Add('DECLARE');
  template.Add('begin');
  template.Add('Return Query Select ltf_a.grp_id{campo_do_select},count(ltf_b.{nome_tabela}_id)::numeric as qt_vezes from');
  template.Add('lotofacil.lotofacil_id_grupo_{qt_bolas_por_grupo}_bola{plural} ltf_a left join lotofacil.lotofacil_resultado_coluna_b ltf_b');
  template.Add('on {nome_tabela}_id = ltf_a.grp_id');
  template.Add('and concurso between concurso_inicial and concurso_final');
  template.Add('where ltf_a.bola1 >= {bola_minima} and ltf_a.bola1 <= {bola_maxima};');
  template.Add('end;');
  template.Add('$$;');



  template.Clear;
  for uA := 1 to 15 do begin
    for uB := uA to 15 do begin
      sufixo_do_nome_da_tabela := Format('b%d_a_b%d', [uA, uB]);
      nome_dos_campos_b := '';
      campos_b_ao_inserir := '';
      for uC := uA to uB do begin
        nome_dos_campos_b:= nome_dos_campos_b + space(5) + Format('b%d', [uC]);
        if uC <> uB then begin
          nome_dos_campos_b:=nome_dos_campos_b + ','
        end;
        nome_dos_campos_b:=nome_dos_campos_b + LineEnding;
        campos_b_ao_inserir:=campos_b_ao_inserir + space(5) + Format('b%d numeric not null,', [uC]) + LineEnding;
      end;
      // Cria dinamicamente um sql, similar a este:
      // Drop table if exists lotofacil_id_b1_a_b1;
      // Create table lotofacil_id_b1_a_b1(
      // b1_a_b1_id numeric not null,
      // b1 numeric not null,
      // constraint lotofacil_id_b1_a_b1_pk primary key(b1_a_b1_id);
      strTexto := '/*' + LineEnding;
      strTexto := strTexto + 'TABELA:   lotofacil_id_' + sufixo_do_nome_da_tabela + '##' + LineEnding;
      strTexto := strTexto + 'Objetivo: Armazena um identificador pra a combinação de ';
      strTexto := strTexto + IntToSTr(uB - uA + 1) + ' bolas válidas, iniciando da esquerda' + LineEnding;
      strTexto := strTexto + 'pra direita, a partir da coluna ' + Format('B%d', [uA]);
      strTexto := strTexto + ' considerando todas as bolas adjacentes a direita até chegar ' + LineEnding;
      strTexto := strTexto + ' na coluna ' + Format('B%d', [uB]) + '.' + LineEnding;
      strTexto := strTexto + 'Por exemplo, se a tabela é lotofacil_id_b1_a_b5, então, ' + LineEnding;
      strTexto := strTexto + 'a tabela irá armazenar as combinações de bolas que é possível ' + LineEnding;
      strTexto := strTexto + 'nas posições b1, b2, b3, b4, b5, na coluna b1, por exemplo, é ' + LineEnding;
      strTexto := strTexto + 'possível armazenar as bolas 1 até 11' + LineEnding;
      strTexto := strTexto + 'Os ids das combinações corresponde ao deslocamento de 25 bolas, ' + LineEnding;
      strTexto := strTexto + 'tais ids corresponde aos ids de grupos considerando a quantidade de ' + LineEnding;
      strTexto := strTexto + ' de bolas pra aquela combinação.' + LineEnding;
      strTexto := strTexto + '*/' + LineEnding;

      strTexto := strTexto + 'Drop table if exists lotofacil.lotofacil_id_' + sufixo_do_nome_da_tabela + ';' + LineEnding;
      strTexto := strTexto + 'Create table lotofacil.lotofacil_id_' + sufixo_do_nome_da_tabela + '(' + LineEnding;
      strTexto := strTexto + Space(5) + sufixo_do_nome_da_tabela +'_id numeric not null,' + LineEnding;
      strTexto := strTexto + campos_b_ao_inserir;
      strTexto := strTexto + space(5) + 'constraint lotofacil_id_' + sufixo_do_nome_da_tabela + '_pk primary key';
      strTexto := strTexto + '(' + sufixo_do_nome_da_tabela + '_id)' + LineEnding;
      strTexto := strTexto + ');' + LineEnding;

      strTexto := strTexto + 'Insert into lotofacil.lotofacil_id_' + sufixo_do_nome_da_tabela + '(' + LineEnding;
      strTexto := strTexto + space(5) + sufixo_do_nome_da_tabela + '_id,' + LineEnding;
      strTexto := strTexto + nome_dos_campos_b + ')' + LineEnding;
      strTexto := strTexto + 'Select grp_id,' + LineEnding;

      // Na tabela de id de grupos, o campo começa assim bola1, bola2
      qt_bolas := uB - uA + 1;
      for uC := 1 to qt_bolas do begin
        strTexto := strTexto + Space(5) + Format('bola%d', [uC]);
        if uC <> qt_bolas then begin
          strTexto := strTexto + ','
        end;
        strTexto := strTexto + LineEnding;
      end;

      strTexto := strTexto + 'from lotofacil.lotofacil_id_grupo_' + IntToStr(qt_bolas);
      // A tabela 'lotofacil_id_grupo_1 não está pluralizada o nome grupos
      if qt_bolas = 1 then begin
         strTexto := strTexto + '_bola' + LineEnding;
      end else begin
        strTexto := strTexto + '_bolas' + LineEnding;
      end;

      strTexto := strTexto + Format('where bola1 >= %d and bola1 <= %d', [uA, 10+uA]) + LineEnding;
      strTexto := strTexto + ' order by bola1';

      for uC := 2 to qt_bolas do begin
        strTexto := strTexto + Format(', bola%d', [uC]);
      end;

      strTexto := strTexto + ';' + LineEnding;
      strTexto := strTexto + '/*' + LineEnding;
      strTexto := strTexto + 'Cada coluna tem a menor e a maior bola que pode estar' + LineEnding;
      strTexto := strTexto + 'naquela posição, por exemplo, na coluna b1, pode ter ' + LineEnding;
      strTexto := strTexto + 'no máximo até a bola 11, vc nunca verá uma bola 12 nesta posição ' + LineEnding;
      strTexto := strTexto + '*/' + LineEnding;
      strTexto := strTexto + LineEnding + LineEnding;

      template.Add(strTexto);
      strTexto := '';
    end;
  end;

  {
    Drop view if exists lotofacil.lotofacil_id_@nome_da_tabela@;
  Create table lotofacil.lotofacil_id_@nome_da_tabela@(
    @nome_da_tabela@_id numeric not null,
    #create_dos_campos_b1_da_tabela#,

    constraint lotofacil_id@nome_da_tabela@_pk primary key(@nome_da_tabela@_id)
  );
  Insert into lotofacil_id_@nome_da_tabela(@todos_os_campos)
  Select @nome_da_tabela@id, @campo_b_da_tabela from
    lotofacil.lotofacil
}
  template.SaveToFile('lotofacil_b1_a_b15.sql');


  {
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
}
{
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
  }


  stl_template := TStringList.Create;

  stl_template.Add('Drop view if exists lotofacil.v_lotofacil_resultado_@nome_tabela_sufixo;');
  stl_template.Add('create view lotofacil.v_lotofacil_resultado_@nome_tabela_sufixo as');
  stl_template.Add('Select');
  stl_template.Add('ltf_a.@nome_tabela_sufixo_id,');
  stl_template.Add('@nome_campos_b,');
  stl_template.Add('count(ltf_b.@nome_tabela_sufixo_id) as qt_vezes');
  stl_template.Add('from');
  stl_template.Add('lotofacil.lotofacil_id_@nome_tabela_sufixo ltf_a');
  stl_template.Add('left join lotofacil.lotofacil_resultado_coluna_b ltf_b');
  stl_template.Add('on ltf_a.@nome_tabela_sufixo_id = ltf_b.@nome_tabela_sufixo_id');
  stl_template.Add('group by ltf_a.@nome_tabela_sufixo_id,');
  stl_template.Add('@nome_campos_b');
  stl_template.Add('order by qt_vezes desc,');
  stl_template.Add('@nome_campos_b_asc;');
  stl_template.Add('');
  stl_template.Add('DROP FUNCTION IF EXISTS lotofacil.fn_lotofacil_resultado_@nome_tabela_sufixo( NUMERIC, NUMERIC );');
  stl_template.Add('CREATE FUNCTION lotofacil.fn_lotofacil_resultado_@nome_tabela_sufixo(concurso_inicial NUMERIC, concurso_final NUMERIC)');
  stl_template.Add('RETURNS TABLE(@nome_tabela_sufixo_id numeric, @nome_campos_b_numeric, qt_vezes NUMERIC)');
  stl_template.Add('LANGUAGE plpgsql');
  stl_template.Add('As $$');
  stl_template.Add('Declare');
  stl_template.Add('Begin');
  stl_template.Add('RETURN QUERY SELECT');
  stl_template.Add('ltf_a.@nome_tabela_sufixo_id,');
  stl_template.Add('@nome_campos_b,');
  stl_template.Add('count(ltf_b.@nome_tabela_sufixo_id)::numeric as qt_vezes');
  stl_template.Add('from lotofacil.lotofacil_id_@nome_tabela_sufixo ltf_a');
  stl_template.Add('left join lotofacil.lotofacil_resultado_coluna_b ltf_b');
  stl_template.Add('on ltf_a.@nome_tabela_sufixo_id = ltf_b.@nome_tabela_sufixo_id');
  stl_template.Add('AND concurso BETWEEN concurso_inicial AND concurso_final');
  stl_template.Add('group by ltf_a.@nome_tabela_sufixo_id, @nome_campos_b');
  stl_template.Add('order by ltf_a.@nome_tabela_sufixo_id, @nome_campos_b_asc;');
  stl_template.Add('end;');
  stl_template.Add('$$;');

  stl_template_gerado := TStringList.Create;
  stl_template_gerado.Clear;
  stl_template_gerado.Add('/*');
  stl_template_gerado.Add('Views e triggers pra analisar as combinações de bolas');
  stl_template_gerado.Add('nos campos b, que são os campos b1 até b15.');
  stl_template_gerado.Add('Há uma tabela pra cada campo da forma bx_a_y');
  stl_template_gerado.Add('da tabela lotofacil.lotofacil_coluna_b.');
  stl_template_gerado.Add('No total há 120 campos, então há 120 tabelas');
  stl_template_gerado.Add('No script abaixo, há 120 views e 120 funções');
  stl_template_gerado.Add('Nas views, retorna informações de quantas vezes');
  stl_template_gerado.Add('uma combinação já foi sorteada.');
  stl_template_gerado.Add('No caso da function, ela retorna estatística');
  stl_template_gerado.Add('baseado em um intervalo de concurso.');
  stl_template_gerado.Add('Basicamente, as duas, views e function são quase idênticas,');
  stl_template_gerado.Add('a view e function retornam os mesmos campos, entretanto');
  stl_template_gerado.Add('a view retorna um estatística geral enquanto a function');
  stl_template_gerado.Add('retorna uma estatística baseada em um intervalo de concursos.');
  stl_template_gerado.Add('*/');
  stl_template_gerado.Add('');


  for uA := 1 to 15 do begin
    for uB := uA to 15 do begin
      sufixo_do_nome_da_tabela:= Format('b%d_a_b%d', [uA, uB]);

      nome_dos_campos_b := '';
      nome_dos_campos_b_asc := '';
      nome_dos_campos_b_numeric := '';

      for uC := uA to uB do begin

        nome_dos_campos_b:= nome_dos_campos_b + Format('ltf_a.b%d', [uC]);
        nome_dos_campos_b_asc := nome_dos_campos_b_asc + Format('ltf_a.b%d asc', [uC]);
        nome_dos_campos_b_numeric := nome_dos_campos_b_numeric + Format('b%d numeric', [uC]);

        if uC <> uB then begin
           nome_dos_campos_b:= nome_dos_campos_b + ', ' + LineEnding;
           nome_dos_campos_b_asc := nome_dos_campos_b_asc + ', ' + LineEnding;
           nome_dos_campos_b_numeric := nome_dos_campos_b_numeric + ', ' + LineEnding;
        end;
      end;

      texto_gerado := stl_template.Text;
      texto_gerado := replaceText(texto_gerado, '@nome_tabela_sufixo', sufixo_do_nome_da_tabela);
      texto_gerado := replaceText(texto_gerado, '@nome_campos_b_asc', nome_dos_campos_b_asc);
      texto_gerado := replaceText(texto_gerado, '@nome_campos_b_numeric', nome_dos_campos_b_numeric);
      texto_gerado := replaceText(texto_gerado, '@nome_campos_b', nome_dos_campos_b);
      stl_template_gerado.Add(texto_gerado);

    end;
  end;

  stl_template_gerado.SaveToFile('lotofacil_id_b1_a_b15_views_e_funcoes.sql');
  stl_template_gerado.Clear;

  stl_template.Clear;
  stl_template.Add('/*');
  stl_template.add('=============================================================================');
  stl_template.Add('Tabela: lotofacil.ltf_bx_a_by_@id_1@_agregado_com_@id_2@: [INICIO]');
  stl_template.Add('Pra que serve:');
  stl_template.Add(Space(5) + 'Armazena campos @id_1@_id e @id_2@_id agregados da tabela');
  stl_template.Add(Space(5) + 'lotofacil.lotofacil_coluna_b');
  stl_template.Add('*/');
  stl_template.Add('Drop table if exists lotofacil.ltf_bx_a_by_@id_1@_agregado_com_@id_2@;');
  stl_template.Add('Create table lotofacil.ltf_bx_a_by_@id_1@_agregado_com_@id_2@(');
  stl_template.Add(Space(5) + '@id_1@_id numeric not null,');
  stl_template.Add(Space(5) + '@id_2@_id numeric not null,');
  stl_template.Add(Space(5) + 'constraint ltf_bx_a_by_@id_1@_agregado_com_@id_2@_pk primary key(@id_1@_id, @id_2@_id)');
  stl_template.Add(');');
  stl_template.Add('Insert into lotofacil.ltf_bx_a_by_@id_1@_agregado_com_@id_2@ (@id_1@_id, @id_2@_id)');
  stl_template.Add(Space(5) + 'Select @id_1@_id, @id_2@_id from lotofacil.lotofacil_coluna_b');
  stl_template.Add(Space(5) + 'group by @id_1@_id, @id_2@_id');
  stl_template.Add(Space(5) + 'order by @id_1@_id, @id_2@_id;');
  stl_template.Add('/*');
  stl_template.Add('Tabela: lotofacil.ltf_bx_a_by_@id_1@_agregado_com_@id_2@: [FIM]');
  stl_template.add('=============================================================================');
  stl_template.Add('*/');
  stl_template.Add('');

  for uA := 1 to 15 do begin
    for uB := uA to 15 do begin
      campo_id_1 := Format('b%d_a_b%d', [uA, uB]);
      uC := uB + 1;
      if uC > 15 then begin
         continue;
      end;
      campo_id_2 := Format('b%d_a_b%d', [uA, uC]);

      texto_gerado := stl_template.Text;
      texto_gerado := ReplaceText(texto_gerado, '@id_1@', campo_id_1);
      texto_gerado := ReplaceText(texto_gerado, '@id_2@', campo_id_2);

      stl_template_gerado.Add(texto_gerado);

    end;
  end;

  stl_template_gerado.SaveToFile('ltf_bx_a_by_agregado.sql');






end.

