package com.anyaudit.models;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

import javax.persistence.*;
import javax.validation.constraints.Size;
import java.math.BigDecimal;

@Entity
@Table(name = "fss_assignment_level")
@AllArgsConstructor
@NoArgsConstructor
@Getter
@Setter
public class FssAssignmentLevel extends BaseModel{

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "fyid")
    private Long fyId;

    @Size(max = 11)
    @Column(name = "fss_client_level_id", columnDefinition = "int")
    private Integer fssClientLevelId;

    @Size(max = 11)
    @Column(name = "client_id", nullable = false)
    private Integer clientId;

    @Size(max = 11)
    @Column(name = "assignment_id", columnDefinition = "int")
    private Integer assignmentId;

    @Size(max = 11)
    @Column(name = "domain_id")
    private Integer domainId;

    @Column(name = "tb_net_self", nullable = false, columnDefinition = "decimal(20,2) default '0.00'")
    private BigDecimal tbNetSelf;

    @Column(name = "tb_net_self_children", nullable = false, columnDefinition = "decimal(20,2) default '0.00'")
    private BigDecimal tbNetSelfChildren;

    @Column(name = "tb_opening_self", nullable = false, columnDefinition = "decimal(22,2)")
    private BigDecimal tbOpeningSelf;

    @Column(name = "tb_opening_self_children", nullable = false, columnDefinition = "decimal(22,2)")
    private BigDecimal tbOpeningSelfChildren;

    @Column(name = "db_net_self", nullable = false, columnDefinition = "decimal(20,2)")
    private BigDecimal dbNetSelf;

    @Column(name = "db_net_self_children", nullable = false, columnDefinition = "decimal(20,2) default '0.00'")
    private BigDecimal dbNetSelfChildren;

    @Column(name = "rectify_self", nullable = false, columnDefinition = "decimal(12,2) default '0.00'")
    private BigDecimal rectifySelf;

    @Column(name = "rectify_self_children", nullable = false, columnDefinition = "decimal(12,2) default '0.00'")
    private BigDecimal rectifySelfChildren;

    @Column(name = "reclassify_self", nullable = false, columnDefinition = "decimal(12,2) default '0.00'")
    private BigDecimal reclassifySelf;

    @Column(name = "reclassify_self_children", nullable = false, columnDefinition = "decimal(12,2) default '0.00'")
    private BigDecimal reclassifySelfChildren;

    @Column(name = "input_self", nullable = false, columnDefinition = "decimal(12,2) default '0.00'")
    private BigDecimal inputSelf;

    @Column(name = "input_self_children", nullable = false, columnDefinition = "decimal(12,2) default '0.00'")
    private BigDecimal inputSelfChildren;

    @Column(name = "total_self", nullable = false, columnDefinition = "decimal(12,2) default '0.00'")
    private BigDecimal totalSelf;

    @Column(name = "total_self_children", nullable = false, columnDefinition = "decimal(12,2) default '0.00'")
    private BigDecimal totalSelfChildren;

    @Column(name = "risk_score", precision = 15, scale = 2)
    private Double riskScore;

    @Column(name = "open_risk_score", precision = 15, scale = 2)
    private Double openRiskScore;

    @Column(name = "control_score", precision = 15, scale = 2)
    private Double controlScore;

    @Column(name = "adjusted_self", nullable = false, columnDefinition = "decimal(22,2)")
    private BigDecimal adjustedSelf;

    @Column(name = "adjusted_self_children", nullable = false, columnDefinition = "decimal(22,2)")
    private BigDecimal adjustedSelfChildren;

    @Column(name = "unadjusted_self", nullable = false, columnDefinition = "decimal(22,2)")
    private BigDecimal unadjustedSelf;

    @Column(name = "unadjusted_self_children", nullable = false, columnDefinition = "decimal(22,2)")
    private BigDecimal unadjustedSelfChildren;

    @Column(name = "specific_materiality", precision = 15, scale = 2)
    private Double specificMateriality;

    @Column(name = "effective_materiality", precision = 15, scale = 2)
    private Double effectiveMateriality;

    @Size(max = 11)
    @Column(name = "mark_as_addressed")
    private Integer markAsAddressed;

    @Column(name = "print_notes")
    private String printNotes;

    // ... possible additional fields ...

    // Getters and setters for each field

    // Other methods, constructors, etc.
}
