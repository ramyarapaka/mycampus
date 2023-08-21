package com.anyaudit.models;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

import javax.persistence.*;
import javax.validation.constraints.Size;

@Entity
@Table(name = "fss_client_level", indexes = {
        @Index(name = "client_id_index", columnList = "client_id"),
        @Index(name = "is_face_index", columnList = "is_face"),
        @Index(name = "is_terminal_node_index", columnList = "is_terminal_node"),
        @Index(name = "minor_id_index", columnList = "minor_id")
})
@AllArgsConstructor
@NoArgsConstructor
@Getter
@Setter

public class FssClientLevel extends BaseModel{

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "id")
    private Long id;

    @Size(max = 11)
    @Column(name = "fss_head_id",columnDefinition = "COMMENT 'FK:fss_heads'")
    private Integer fssHeadId;

    @Size(max = 11)
    @Column(name = "client_id",columnDefinition = "COMMENT 'FK:sms_clients'")
    private Integer clientId;

    @Size(max = 100)
    @Column(name = "short_name")
    private String shortName;

    @Column(name = "full_name")
    private String fullName;

    @Size(max = 11)
    @Column(name = "parent_node_id")
    private Integer parentNodeId;

    @Size(max = 11)
    @Column(name = "base_node_id")
    private Integer baseNodeId;

    @Size(max = 3)
    @Column(name = "major_id",columnDefinition = " DEFAULT '0' COMMENT  '1:Liabilities,2:Assets,3:Incomes,4:Expenses'")
    private Integer majorId;

    @Size(max = 3)
    @Column(name = "minor_id")
    private Integer minorId;

    @Size(max = 1)
    @Column(name = "polarity")
    private  Integer polarity;

    @Size(max = 3)
    @Column(name = "permanent_id",columnDefinition = "  DEFAULT '0' COMMENT 'FK:fss_permanents'")
    private  Integer permanentId;

    @Size(max = 11)
    @Column(name = "node_level")
    private Integer nodeLevel;

    @Size(max = 11)
    @Column(name = "node_sequence")
    private  Integer nodeSequence;

    @Size(max = 250)
    @Column(name = "node_code")
    private String nodeCode;

    @Size(max = 11)
    @Column(name = "fss_master_node_id")
    private  Integer fssMasterNodeId;

    @Size(max = 100)
    @Column(name = "fss_master_node_name")
    private  String fssMasterNodeName;

    @Size(max = 11)
    @Column(name = "fss_master_node_parent_id")
    private Integer fssMasterNodeParentId;

    @Size(max = 11)
    @Column(name = "fss_master_node_sequence")
    private Integer fssMasterNodeSequence;

    @Size(max = 1)
    @Column(name = "is_active",columnDefinition = "COMMENT '1=active,0=inactive")
    private Integer isActive;

    @Size(max = 11)
    @Column(name = "prev_link_id")
    private Integer prevLinkId;

    @Size(max = 11)
    @Column(name = "master_link_id")
    private Integer masterLinkId;

    @Size(max = 11)
    @Column(name = "master_base_node_id")
    private Integer masterBaseNodeId;

    @Size(max = 1)
    @Column(name = "is_face", columnDefinition = "DEFAULT '0' COMMENT '0 : show 1: hide'")
    private Integer isFace;

    @Size(max = 1)
    @Column(name = "is_terminal_node",columnDefinition = "DEFAULT '0' COMMENT '0 : show 1: hide'")
    private Integer isTerminalNode;

    @Size(max = 11)
    @Column(name = "child_count")
    private Integer childCount;



}
