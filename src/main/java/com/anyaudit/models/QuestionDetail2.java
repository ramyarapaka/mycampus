package com.anyaudit.models;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

import javax.persistence.*;
import javax.validation.constraints.Size;
import java.util.Date;

@Entity
@Table(name = "question_detail2")
@AllArgsConstructor
@NoArgsConstructor
@Getter
@Setter
public class QuestionDetail2 extends BaseModel {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "qdid")
    private Long qdid;

    @Column(name = "qid")
    private Integer qid; // Changed the type to Integer

    @Size(max = 250)
    @Column(name = "short") // Changed the column name to avoid conflict
    private String shortDescription; // Changed the variable name to follow Java naming conventions

    @Column(name = "description")
    private String description;

    @Size(max = 250)
    @Column(name = "company_name")
    private String companyName; // Changed the variable name to follow Java naming conventions

    @Size(max = 250)
    @Column(name = "period")
    private String period;


    @Size(max = 11)
    @Column(name = "type", columnDefinition = "int(11) NOT NULL COMMENT '7=Report'")
    private Integer type;


    @Size(max = 200)
    @Column(name = "typetool")
    private String typeTool;

    @Size(max = 11)
    @Column(name = "tool_id")
    private Integer toolId;

    @Size(max = 11)
    @Column(name = "sync_id")
    private Integer syncId;

    @Size(max = 11)
    @Column(name = "sync_on")
    private Date sync_on;


    @Size(max = 11)
    @Column(name = "master_id")
    private Integer masterId;

    @Size(max = 11)
    @Column(name = "master_parent_id")
    private Integer masterParentId;




}