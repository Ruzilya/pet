package ru.kpfu.itis.pet.g2048.model;

import javax.persistence.*;
import java.util.Set;

/**
 * Created by RuzilyaS on 13-Mar-16.
 */
@Entity
@Table(name="CellValue")
public class CellValue {
    @Id
    @Column(name="cv_id")
    @GeneratedValue(strategy=GenerationType.IDENTITY)
    private int id;

    private String value;


    @OneToMany(mappedBy="cellValue")
    private Set<Image> images;

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getValue() {
        return value;
    }

    public void setValue(String value) {
        this.value = value;
    }

    public Set<Image> getImages() {
        return images;
    }

    public void setImages(Set<Image> images) {
        this.images = images;
    }

    @Override
    public String toString() {
        return "CellValue{" +
                "id=" + id +
                ", value='" + value + '\'' +
                ", images=" + images +
                '}';
    }
}

