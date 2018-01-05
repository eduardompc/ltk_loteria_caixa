drop trigger if exists tg_lotomania_aleatorio_num on lotomania.lotomania_aleatorio_num;

drop function if exists lotomania.fn_lotomania_aleatorio_num();
CREATE FUNCTION lotomania.fn_lotomania_aleatorio_num()
  RETURNS TRIGGER
LANGUAGE plpgsql
AS $$
DECLARE
  -- Vamos armazenar todas as bolas.
  lotomania_aleatorio_num numeric[100];
BEGIN

  CASE
    when TG_OP = 'DELETE'
    THEN
      Delete from lotomania.lotomania_aleatorio_bolas where id_sequencial = old.id_sequencial;
      Delete from lotomania.lotomania_aleatorio_par_impar where id_sequencial = old.id_sequencial;

      Return old;

  -- Aqui, praticamente o código é o mesmo iremos implementar, a lógica após.
    WHEN TG_OP = 'INSERT' OR TG_OP = 'UPDATE'
    THEN
      lotomania_aleatorio_num[0] := new.num_0;
      lotomania_aleatorio_num[1] := new.num_1;
      lotomania_aleatorio_num[2] := new.num_2;
      lotomania_aleatorio_num[3] := new.num_3;
      lotomania_aleatorio_num[4] := new.num_4;
      lotomania_aleatorio_num[5] := new.num_5;
      lotomania_aleatorio_num[6] := new.num_6;
      lotomania_aleatorio_num[7] := new.num_7;
      lotomania_aleatorio_num[8] := new.num_8;
      lotomania_aleatorio_num[9] := new.num_9;
      lotomania_aleatorio_num[10] := new.num_10;
      lotomania_aleatorio_num[11] := new.num_11;
      lotomania_aleatorio_num[12] := new.num_12;
      lotomania_aleatorio_num[13] := new.num_13;
      lotomania_aleatorio_num[14] := new.num_14;
      lotomania_aleatorio_num[15] := new.num_15;
      lotomania_aleatorio_num[16] := new.num_16;
      lotomania_aleatorio_num[17] := new.num_17;
      lotomania_aleatorio_num[18] := new.num_18;
      lotomania_aleatorio_num[19] := new.num_19;
      lotomania_aleatorio_num[20] := new.num_20;
      lotomania_aleatorio_num[21] := new.num_21;
      lotomania_aleatorio_num[22] := new.num_22;
      lotomania_aleatorio_num[23] := new.num_23;
      lotomania_aleatorio_num[24] := new.num_24;
      lotomania_aleatorio_num[25] := new.num_25;
      lotomania_aleatorio_num[26] := new.num_26;
      lotomania_aleatorio_num[27] := new.num_27;
      lotomania_aleatorio_num[28] := new.num_28;
      lotomania_aleatorio_num[29] := new.num_29;
      lotomania_aleatorio_num[30] := new.num_30;
      lotomania_aleatorio_num[31] := new.num_31;
      lotomania_aleatorio_num[32] := new.num_32;
      lotomania_aleatorio_num[33] := new.num_33;
      lotomania_aleatorio_num[34] := new.num_34;
      lotomania_aleatorio_num[35] := new.num_35;
      lotomania_aleatorio_num[36] := new.num_36;
      lotomania_aleatorio_num[37] := new.num_37;
      lotomania_aleatorio_num[38] := new.num_38;
      lotomania_aleatorio_num[39] := new.num_39;
      lotomania_aleatorio_num[40] := new.num_40;
      lotomania_aleatorio_num[41] := new.num_41;
      lotomania_aleatorio_num[42] := new.num_42;
      lotomania_aleatorio_num[43] := new.num_43;
      lotomania_aleatorio_num[44] := new.num_44;
      lotomania_aleatorio_num[45] := new.num_45;
      lotomania_aleatorio_num[46] := new.num_46;
      lotomania_aleatorio_num[47] := new.num_47;
      lotomania_aleatorio_num[48] := new.num_48;
      lotomania_aleatorio_num[49] := new.num_49;
      lotomania_aleatorio_num[50] := new.num_50;
      lotomania_aleatorio_num[51] := new.num_51;
      lotomania_aleatorio_num[52] := new.num_52;
      lotomania_aleatorio_num[53] := new.num_53;
      lotomania_aleatorio_num[54] := new.num_54;
      lotomania_aleatorio_num[55] := new.num_55;
      lotomania_aleatorio_num[56] := new.num_56;
      lotomania_aleatorio_num[57] := new.num_57;
      lotomania_aleatorio_num[58] := new.num_58;
      lotomania_aleatorio_num[59] := new.num_59;
      lotomania_aleatorio_num[60] := new.num_60;
      lotomania_aleatorio_num[61] := new.num_61;
      lotomania_aleatorio_num[62] := new.num_62;
      lotomania_aleatorio_num[63] := new.num_63;
      lotomania_aleatorio_num[64] := new.num_64;
      lotomania_aleatorio_num[65] := new.num_65;
      lotomania_aleatorio_num[66] := new.num_66;
      lotomania_aleatorio_num[67] := new.num_67;
      lotomania_aleatorio_num[68] := new.num_68;
      lotomania_aleatorio_num[69] := new.num_69;
      lotomania_aleatorio_num[70] := new.num_70;
      lotomania_aleatorio_num[71] := new.num_71;
      lotomania_aleatorio_num[72] := new.num_72;
      lotomania_aleatorio_num[73] := new.num_73;
      lotomania_aleatorio_num[74] := new.num_74;
      lotomania_aleatorio_num[75] := new.num_75;
      lotomania_aleatorio_num[76] := new.num_76;
      lotomania_aleatorio_num[77] := new.num_77;
      lotomania_aleatorio_num[78] := new.num_78;
      lotomania_aleatorio_num[79] := new.num_79;
      lotomania_aleatorio_num[80] := new.num_80;
      lotomania_aleatorio_num[81] := new.num_81;
      lotomania_aleatorio_num[82] := new.num_82;
      lotomania_aleatorio_num[83] := new.num_83;
      lotomania_aleatorio_num[84] := new.num_84;
      lotomania_aleatorio_num[85] := new.num_85;
      lotomania_aleatorio_num[86] := new.num_86;
      lotomania_aleatorio_num[87] := new.num_87;
      lotomania_aleatorio_num[88] := new.num_88;
      lotomania_aleatorio_num[89] := new.num_89;
      lotomania_aleatorio_num[90] := new.num_90;
      lotomania_aleatorio_num[91] := new.num_91;
      lotomania_aleatorio_num[92] := new.num_92;
      lotomania_aleatorio_num[93] := new.num_93;
      lotomania_aleatorio_num[94] := new.num_94;
      lotomania_aleatorio_num[95] := new.num_95;
      lotomania_aleatorio_num[96] := new.num_96;
      lotomania_aleatorio_num[97] := new.num_97;
      lotomania_aleatorio_num[98] := new.num_98;
      lotomania_aleatorio_num[99] := new.num_99;

      -- Insere na tabela lotomania.lotomania_aleatorio_bolas;
      if tg_op = 'UPDATE' then
        Delete from lotomania.lotomania_aleatorio_bolas where id_sequencial = old.id_sequencial;
        Delete from lotomania.lotomania_aleatorio_par_impar where id_sequencial = old.id_sequencial;
      END IF;

      
      Execute lotomania.fn_lotomania_aleatorio_par_impar(new.id_sequencial, lotomania_aleatorio_num);
      Execute lotomania.fn_lotomania_aleatorio_bolas(new.id_sequencial, new.data_hora, new.id_sequencial_aleatorio, lotomania_aleatorio_num);

      Return new;
    RETURN New;
  END CASE;
END $$;

-- Cria o trigger
CREATE TRIGGER tg_lotomania_aleatorio_num
AFTER INSERT OR DELETE OR UPDATE
  ON lotomania.lotomania_aleatorio_num
FOR EACH ROW
EXECUTE PROCEDURE lotomania.fn_lotomania_aleatorio_num();

drop function if exists lotomania.fn_lotomania_aleatorio_par_impar(BIGINT[]);
create function lotomania.fn_lotomania_aleatorio_par_impar(id_seq BIGINT, lotomania_aleatorio_num numeric[]) returns VOID
  LANGUAGE plpgsql
  as $$
  DECLARE 
    qt_pares numeric;
    qt_impares numeric;
    contador_de_bolas numeric;
  BEGIN
    qt_pares := 0;
    qt_impares := 0;
    contador_de_bolas := 0;    
    
    for uA in 0..99 LOOP
      if lotomania_aleatorio_num[uA] = 1 then
        if mod(uA, 2) = 0 then
          qt_pares := qt_pares + 1;
        Else
          qt_impares := qt_impares + 1;
        end if;
      END if;
    end loop;
        
    if qt_pares + qt_impares <> 50 then
      Raise Exception 'qt_de_pares + qt_de_impares diferente de 50';
      Return;
    END if;
    
    Insert into Lotomania.lotomania_aleatorio_par_impar (id_sequencial, qt_par, qt_impar) values (id_seq, qt_pares, qt_impares);
    
  END; $$;


drop function if exists lotomania.fn_lotomania_aleatorio_bolas(bigint, timestamp, numeric, numeric[]);
create function lotomania.fn_lotomania_aleatorio_bolas(id_seq bigint, dt_data_hora timestamp, id_seq_aleatorio numeric, lotomania_aleatorio_num numeric[]) returns VOID
  LANGUAGE plpgsql
  as $$
  DECLARE
    lotomania_bolas numeric[100];

    -- Cada vez que uma bola é sorteada, incrementa esta variável.
    contador_bolas numeric;

    -- Pra percorrer o arranjo resultado_num
    indice_num numeric;
    
    indice_bolas numeric;
  BEGIN
    indice_bolas := 0;
    contador_bolas := 0;

    for indice_num in 0..99 LOOP

        if lotomania_aleatorio_num[indice_num] = 1 THEN
          contador_bolas := contador_bolas + 1;
          
          if contador_bolas > 50 THEN
            Raise EXCEPTION 'Erro, há mais de 50 bolas sorteadas';
          end if;
          lotomania_bolas[indice_bolas] := indice_num;
          indice_bolas := indice_bolas + 1;
          
        END IF;
      END LOOP;
    
      Insert Into lotomania.lotomania_aleatorio_bolas (id_sequencial, data_hora, id_sequencial_aleatorio, 
                                                       b_1, b_2, b_3, b_4, b_5, b_6, b_7, b_8, b_9, b_10, 
                                                       b_11, b_12, b_13, b_14, b_15, b_16, b_17, b_18, b_19, b_20, 
                                                       b_21, b_22, b_23, b_24, b_25, b_26, b_27, b_28, b_29, b_30, 
                                                       b_31, b_32, b_33, b_34, b_35, b_36, b_37, b_38, b_39, b_40, 
                                                       b_41, b_42, b_43, b_44, b_45, b_46, b_47, b_48, b_49, b_50) VALUES
        (id_seq, dt_data_hora, id_seq_aleatorio, 
          lotomania_bolas[0], lotomania_bolas[1], lotomania_bolas[2],  lotomania_bolas[3], lotomania_bolas[4], lotomania_bolas[5],
          lotomania_bolas[6], lotomania_bolas[7], lotomania_bolas[8],  lotomania_bolas[9],
          
          lotomania_bolas[10], lotomania_bolas[11], lotomania_bolas[12],  lotomania_bolas[13], lotomania_bolas[14], lotomania_bolas[15],
          lotomania_bolas[16], lotomania_bolas[17], lotomania_bolas[18],  lotomania_bolas[19],
          
          lotomania_bolas[20], lotomania_bolas[21], lotomania_bolas[22],  lotomania_bolas[23], lotomania_bolas[24], lotomania_bolas[25],
          lotomania_bolas[26], lotomania_bolas[27], lotomania_bolas[28],  lotomania_bolas[29],
          
          lotomania_bolas[30], lotomania_bolas[31], lotomania_bolas[32],  lotomania_bolas[33], lotomania_bolas[34], lotomania_bolas[35],
          lotomania_bolas[36], lotomania_bolas[37], lotomania_bolas[38],  lotomania_bolas[39],
          
          lotomania_bolas[40], lotomania_bolas[41], lotomania_bolas[42],  lotomania_bolas[43], lotomania_bolas[44], lotomania_bolas[45],
          lotomania_bolas[46], lotomania_bolas[47], lotomania_bolas[48],  lotomania_bolas[49]
          );
    END;
  $$;

/*
Insert into lotomania.lotomania_aleatorio_num( data_hora, id_sequencial_aleatorio, num_0, num_1, num_2, num_3, num_4, num_5, num_6, num_7, num_8, num_9, num_10, num_11, num_12, num_13, num_14, num_15, num_16, num_17, num_18, num_19, num_20, num_21, num_22, num_23, num_24, num_25, num_26, num_27, num_28, num_29, num_30, num_31, num_32, num_33, num_34, num_35, num_36, num_37, num_38, num_39, num_40, num_41, num_42, num_43, num_44, num_45, num_46, num_47, num_48, num_49)
  values('2017-02-01 12:58:58.000', 1, 1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1)
*/