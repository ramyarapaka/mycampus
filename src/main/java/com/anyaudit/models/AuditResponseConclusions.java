package com.anyaudit.models;


import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

import javax.persistence.*;
import javax.validation.constraints.Size;

@Entity
@Table(name = "audit_response_conclusions")
@AllArgsConstructor
@NoArgsConstructor
@Getter
@Setter
public class AuditResponseConclusions {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "id")
    private Long id;

    @Size(max = 11)
    @Column(name = "arid")
    private Integer arId;


    @Size(max = 11)
    @Column(name = "conclusion_id")
    private Integer conclusionId;








}
