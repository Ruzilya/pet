package ru.kpfu.itis.pet.g2048.model;

import javax.persistence.*;
import java.util.Set;

/**
 * Created by RuzilyaS on 11-May-16.
 */
@Entity
@Table(name = "role")
public class Role {

    @Id
    @Column(name="role_id")
    @GeneratedValue(strategy=GenerationType.IDENTITY)
    private Long id;

    private String name;

    @OneToMany(cascade=CascadeType.ALL)
    @JoinTable(name="user_roles",
            joinColumns = {@JoinColumn(name="role_id", referencedColumnName="role_id")},
            inverseJoinColumns = {@JoinColumn(name="user_id", referencedColumnName="user_id")}
    )
    private Set<User> userRoles;

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public Set<User> getUserRoles() {
        return userRoles;
    }

    public void setUserRoles(Set<User> userRoles) {
            this.userRoles = userRoles;
        }
}
