package com.anyaudit.models;


import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

import javax.persistence.*;
import javax.validation.constraints.Size;

@Entity
@Table(name = "recurring_milestones")
@AllArgsConstructor
@NoArgsConstructor
@Getter
@Setter
public class RecurringMilestones extends BaseModel {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "rm_id")
    private Long rmId;

    @Size(max = 11)
    @Column(name = "milestonepack_id")
    private Integer milestonepackId;

    @Size(max = 11)
    @Column(name = "frequency")
    private Integer frequency;


    @Column(name = "total_value", precision = 10, scale = 2)
    private Double totalValue;

    @Size(max = 11)
    @Column(name = "assignment_id")
    private Integer assignmentId;










}

