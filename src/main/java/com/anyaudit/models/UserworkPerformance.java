package com.anyaudit.models;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

import javax.persistence.*;
import javax.validation.constraints.Size;
import java.util.Date;

@Entity
@Table(name = "userwork_performance" , indexes = {
        @Index(name = "perfdt_index", columnList = "perfdt"),
        @Index(name = "userid_index", columnList = "userid"),
        @Index(name = "ref_planid_index", columnList = "ref_planid"),
        @Index(name = "taskid_index", columnList = "taskid")

})

@AllArgsConstructor
@NoArgsConstructor
@Getter
@Setter
public class UserworkPerformance {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "perfid")
    private Long perfId;

    @Size(max = 11)
    @Column(name = "ref_planid")
    private Integer refPlanId;

    @Column(name = "time_spent_in_hrs", precision = 5, scale = 2, nullable = false)
    private Float timeSpentInHours;


    @Size(max = 11)
    @Column(name = "clientid")
    private Integer clientId;


    @Size(max = 11)
    @Column(name = "taskid")
    private Integer taskId;

    @Size(max = 11)
    @Column(name = "locid")
    private Integer locId;

    @Size(max = 11)
    @Column(name = "perfdt")
    private Integer perFdt;

    @Size(max = 11)
    @Column(name = "userid")
    private Integer userId;

    @Column(name = "status", columnDefinition = "INT(11) NOT NULL COMMENT '0-notapproved,1-approved'")
    private Integer status;

    @Size(max = 11)
    @Column(name = "approvedby")
    private Integer approvedBy;

    @Column(name = "value", columnDefinition = "DOUBLE(10,2) NOT NULL")
    private Double value;


    @Column(name = "entereddt",  columnDefinition = "DATETIME DEFAULT CURRENT_TIMESTAMP")
    private Date enteredDateTime;

    @Column(name = "record_status",  columnDefinition = "VARCHAR(10) DEFAULT 'active'")
    private String recordStatus;

    @Column(name = "domain")
    private Integer domain;

    @Column(name = "performance_given_by")
    private Integer performanceGivenBy;

    @Column(name = "attachment_id")
    private Integer attachmentId;




}
