package com.anyaudit.models;


import lombok.*;

import javax.persistence.*;
import javax.validation.constraints.NotBlank;
import javax.validation.constraints.Size;
import java.util.Date;

@Entity
@Table(name = "question")
@AllArgsConstructor
@NoArgsConstructor
@Getter
@Setter
public class Question extends BaseModel {


    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "qid")
    private Long id;

    @Size(max = 222)
    @Column(name = "q_short")
    private String qShort;

    @Column(name = "q_long")
    private String qLong;

    @Size(max = 225)
    @Column(name = "status")
    private String status;



    @Size(max = 11)
    @Column(name = "sync_id")
    private String syncId;



    @Column(name = "sync_on")
    private Date syncOn;

    @Size(max = 11)
    @Column(name = "master_id")
    private String masterId;

    @Size(max = 11)
    @Column(name = "master_parent_id")
    private String masterParentId;



}
