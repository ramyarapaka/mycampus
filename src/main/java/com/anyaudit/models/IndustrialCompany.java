package com.anyaudit.models;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

import javax.persistence.*;
import javax.validation.constraints.Size;
import java.util.Date;

@Entity
@Table(name = "industrial_company")
@AllArgsConstructor
@NoArgsConstructor
@Getter
@Setter
public class  IndustrialCompany extends BaseModel{
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "ic_id")
    private Long icId;

    @Size(max = 250)
    @Column(name = "industrial_company_name")
    private String industrialCompanyName;

    @Size(max = 11)
    @Column(name = "sync_id")
    private Integer syncId;

    @Column(name = "sync_on")
    private Date syncOn;

    @Size(max = 11)
    @Column(name = "master_id")
    private Integer masterId;
}