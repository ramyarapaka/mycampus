package com.anyaudit.models;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

import javax.persistence.*;
import javax.validation.constraints.NotBlank;
import javax.validation.constraints.Size;



@Entity
@Table(name = "framework")
@AllArgsConstructor
@NoArgsConstructor
@Getter
@Setter
public class Framework extends BaseModel{
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "id", insertable = false, updatable = false)
    private Long id;


    @NotBlank
    @Size(max = 50)
    @Column(name = "financial_framework")
    private String financialFramework;
}
