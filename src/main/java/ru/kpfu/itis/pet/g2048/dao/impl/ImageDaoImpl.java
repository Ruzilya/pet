package ru.kpfu.itis.pet.g2048.dao.impl;

import ru.kpfu.itis.pet.g2048.dao.ImageDao;
import ru.kpfu.itis.pet.g2048.model.Image;

/**
 * Created by RuzilyaS on 15-Mar-16.
 */
public class ImageDaoImpl extends GenericDaoImpl<Image,Long> implements ImageDao {
    public ImageDaoImpl() {
        setaClass(Image.class);
    }
}
