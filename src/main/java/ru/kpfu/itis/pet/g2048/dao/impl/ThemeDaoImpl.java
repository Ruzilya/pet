package ru.kpfu.itis.pet.g2048.dao.impl;

import ru.kpfu.itis.pet.g2048.dao.ThemeDao;
import ru.kpfu.itis.pet.g2048.model.Theme;

/**
 * Created by RuzilyaS on 15-Mar-16.
 */
public class ThemeDaoImpl extends GenericDaoImpl<Theme,Long> implements ThemeDao {
    public ThemeDaoImpl() {
        setaClass(Theme.class);
    }
}
