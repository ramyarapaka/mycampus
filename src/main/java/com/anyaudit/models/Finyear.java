package com.anyaudit.models;
import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

import javax.persistence.*;
import javax.validation.constraints.Size;
import java.util.Date;

@Entity
@Table(name = "finyear")
@AllArgsConstructor
@NoArgsConstructor
@Getter
@Setter
public class Finyear extends BaseModel{

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "fyid")
    private Long fyId;

    @Size(max=50)
    @Column(name = "fyperiod")
    private String fyperIod;

    @Size(max = 50)
    @Column(name = "fystatus")
    private  String fyStatus;

    @Size(max = 11)
    @Column(name = "sync_id")
    private Integer sync_Id;

    @Column(name = "sync_on")
    private Date syncOn;


    @Size(max = 11)
    @Column(name = "master_id")
    private Integer masterId;

    @Size(max = 1)
    @Column(name = "status")
    private Integer status;







}
