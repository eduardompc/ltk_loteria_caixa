Insert into lotomania.lotomania_resultado_num(concurso, data, num_0, num_1, num_2, num_3, num_4, num_5, 
                                              num_6, num_7, num_8, num_9, num_10, 
                                              num_11, num_12, num_13, num_14, num_15,
                                              num_16, num_17, num_18, num_19, num_20, 
                                              num_21, num_22, num_23, num_24, num_25, 
                                              num_26, num_27, num_28, num_29, num_30, 
                                              num_31, num_32, num_33, num_34, num_35, 
                                              num_36, num_37, num_38, num_39, num_40, 
                                              num_41, num_42, num_43, num_44, num_45, 
                                              num_46, num_47, num_48, num_49, num_50, num_51, num_52, num_53, num_54, num_55, num_56, num_57, num_58, num_59, num_60, num_61, num_62, num_63, num_64, num_65, num_66, num_67, num_68, num_69, num_70, num_71, num_72, num_73, num_74, num_75, num_76, num_77, num_78, num_79, num_80, num_81, num_82, num_83, num_84, num_85, num_86, num_87, num_88, num_89, num_90, num_91, num_92, num_93, num_94, num_95, num_96, num_97, num_98, num_99) 
VALUES (0, '2017-02-01', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1);

copy lotomania.lotomania_resultado_num(concurso, data, num_0, num_1, num_2, num_3, num_4, num_5,
                                              num_6, num_7, num_8, num_9, num_10,
                                              num_11, num_12, num_13, num_14, num_15,
                                              num_16, num_17, num_18, num_19, num_20,
                                              num_21, num_22, num_23, num_24, num_25,
                                              num_26, num_27, num_28, num_29, num_30,
                                              num_31, num_32, num_33, num_34, num_35,
                                              num_36, num_37, num_38, num_39, num_40,
                                              num_41, num_42, num_43, num_44, num_45,
                                              num_46, num_47, num_48, num_49, num_50, num_51, num_52, num_53, num_54, num_55, num_56, num_57, num_58, num_59, num_60, num_61, num_62, num_63, num_64, num_65, num_66, num_67, num_68, num_69, num_70, num_71, num_72, num_73, num_74, num_75, num_76, num_77, num_78, num_79, num_80, num_81, num_82, num_83, num_84, num_85, num_86, num_87, num_88, num_89, num_90, num_91, num_92, num_93, num_94, num_95, num_96, num_97, num_98, num_99)
    from 'lotomania_resultado_num.csv' with (delimiter ';', header true, format csv);


Select hrz_1, hrz_2, hrz_3, hrz_4, hrz_5, count(*) as qt_vz FROM
  lotomania.lotomania_resultado_horizontal
group by hrz_1, hrz_2, hrz_3, hrz_4, hrz_5
order by qt_vz desc;