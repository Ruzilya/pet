package ru.kpfu.itis.pet.g2048.model;

import javax.persistence.*;

/**
 * Created by RuzilyaS on 13-Mar-16.
 */
@Entity
@Table(name="Image")
public class Image {

    @Id
    @Column(name="image_id")
    @GeneratedValue(strategy=GenerationType.IDENTITY)
    private int id;

    private String path;

    @ManyToOne
    @JoinColumn(name="theme_id")
    private Theme theme;

    @ManyToOne
    @JoinColumn(name="cv_id")
    private Theme cellValue;

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getPath() {
        return path;
    }

    public void setPath(String path) {
        this.path = path;
    }

    public Theme getTheme() {
        return theme;
    }

    public void setTheme(Theme theme) {
        this.theme = theme;
    }

    public Theme getCellValue() {
        return cellValue;
    }

    public void setCellValue(Theme cellValue) {
        this.cellValue = cellValue;
    }

    @Override
    public String toString() {
        return "Image{" +
                "id=" + id +
                ", path='" + path + '\'' +
                ", theme=" + theme +
                ", cellValue=" + cellValue +
                '}';
    }
}
