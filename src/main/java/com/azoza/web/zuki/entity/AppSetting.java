package com.azoza.web.zuki.entity;

import com.azoza.web.zuki.util.AppUtil;
import jakarta.persistence.*;



@Entity
@Table(name = "app_settings")
public class AppSetting extends BaseEntity {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long Id;

    @Column(unique = true)
    private String name;

    @Column(columnDefinition = "LONGTEXT")
    private String value;

    public Long getId() {
        return Id;
    }

    public void setId(Long id) {
        Id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getValue() {
        return value;
    }

    public void setValue(String value) {
        this.value = value;
    }

    @PostPersist
    @PostUpdate
    public void updateAppUtil(){
        AppUtil.reload();
    }
}
