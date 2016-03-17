package ru.kpfu.itis.pet.g2048.dao.impl;

import ru.kpfu.itis.pet.g2048.dao.CellValueDao;
import ru.kpfu.itis.pet.g2048.model.CellValue;

/**
 * Created by RuzilyaS on 15-Mar-16.
 */
public class CellValueDaoImpl extends GenericDaoImpl<CellValue,Long> implements CellValueDao  {
    public CellValueDaoImpl() {
        setaClass(CellValue.class);
    }
}
