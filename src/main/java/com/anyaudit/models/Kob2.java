package com.anyaudit.models;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

import javax.persistence.*;
import javax.validation.constraints.Size;
import java.util.Date;

@Entity
@Table(name = "kob2")
@AllArgsConstructor
@NoArgsConstructor
@Getter
@Setter
public class Kob2 {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "id")
    private Long id;


    @Size(max = 11)
    @Column(name = "ass_seq_id")
    private Integer assSeqId;

    @Size(max = 15)
    @Column(name = "ass_seq_txt")
    private String assSeqTxt;

    @Column(name = "date_kob2")
    private Date dateKob2;

    @Size(max = 250)
    @Column(name = "nature_event")
    private String natureEvent;

    @Column(name = "observation")
    private String observation;

    @Size(max = 200)
    @Column(name = "area_effected")
    private String areaEffected;

    @Size(max = 11)
    @Column(name = "attachment_id")
    private Integer attachmentId;

    @Size(max = 11)
    @Column(name = "client_id")
    private Integer clientId;

    @Size(max = 11)
    @Column(name = "assignment_id")
    private Integer assignmentId;

    @Size(max = 11)
    @Column(name = "type" , columnDefinition = "COMMENT '1=correspondance_management,2=significant_management,3=significant_reporting,4=audit review note'")
    private Integer type;


    @Size(max = 4)
    @Column(name = "approved")
    private Integer approved;

    @Size(max = 11)
    @Column(name = "approved_by")
    private Integer approvedBy;


    @Size(max = 11)
    @Column(name = "doer_user")
    private Integer doerUser;


    @Size(max = 11)
    @Column(name = "approver_user")
    private Integer approverUser;



}
