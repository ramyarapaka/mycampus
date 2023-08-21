package com.anyaudit.models;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

import javax.persistence.*;
import javax.validation.constraints.Size;
import java.util.Date;

@Entity
@Table(name = "recurring_milestones_config")
@AllArgsConstructor
@NoArgsConstructor
@Getter
@Setter
public class RecurringMilestonesConfig extends BaseModel {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "rmc_id")
    private Long rmcId;


    @Size(max = 11)
    @Column(name = "rm_id")
    private Integer rmId;

    @Size(max = 11)
    @Column(name = "timeline_id")
    private Integer timelineId;

    @Size(max = 11)
    @Column(name = "assignment_id")
    private Integer assignmentId;

    @Size(max = 11)
    @Column(name = "status_of_config")
    private Integer statusOfConfig;

    @Size(max = 11)
    @Column(name = "configured_by")
    private Integer configuredBy;

    @Column(name = "configured_on")
    private Date configuredOn;



}
