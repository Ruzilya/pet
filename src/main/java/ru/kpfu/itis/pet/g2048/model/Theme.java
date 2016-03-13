package ru.kpfu.itis.pet.g2048.model;

import javax.persistence.*;
import java.util.Set;

/**
 * Created by RuzilyaS on 13-Mar-16.
 */
@Entity
@Table(name="Theme")
public class Theme {

    @Id
    @Column(name="theme_id")
    @GeneratedValue(strategy=GenerationType.IDENTITY)
    private int id;

    private String name;

    @OneToMany(mappedBy="theme")
    private Set<Image> images;

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public Set<Image> getImages() {
        return images;
    }

    public void setImages(Set<Image> images) {
        this.images = images;
    }

    @Override
    public String toString() {
        return "Theme{" +
                "id=" + id +
                ", name='" + name + '\'' +
                ", images=" + images +
                '}';
    }
}
