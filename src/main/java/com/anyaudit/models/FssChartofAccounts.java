package com.anyaudit.models;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

import javax.persistence.*;
import javax.validation.constraints.Size;

@Entity
@Table(name = "fss_chartofaccounts" , indexes = {
        @Index(name = "client_id_index", columnList = "client_id"),

}, uniqueConstraints = {
        @UniqueConstraint(columnNames = {"gl_name", "client_id", "falling_under_gl_id"})

})
@AllArgsConstructor
@NoArgsConstructor
@Getter
@Setter
public class FssChartofAccounts extends BaseModel{

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "id")
    private Long id;

    @Size(max = 100)
    @Column(name = "gl_name")
    private String glName;

    @Size(max = 100)
    @Column(name = "gl_code")
    private String glCode;

    @Size(max = 11)
    @Column(name = "fss_client_level_id", columnDefinition = " NOT NULL COMMENT ")
    private Integer fss_client_level_id;

    @Column(name = "remarks")
    private String remarks;

    @Size(max = 10)
    @Column(name = "client_id")
    private Integer clientId;


    @Size(max = 10)
    @Column(name = "domain_id")
    private Integer domainId;

    @Size(max = 10)
    @Column(name ="batch_id")
    private Integer batchId;

    @Size(max=11)
    @Column(name="approved_by")
    private Integer approvedBy;

    @Size(max=10)
    @Column(name="is_active", columnDefinition = " INT DEFAULT '1' COMMENT '0:inactive,1:active'")
    private Integer isActive;

    @Size(max=4)
    @Column(name="is_party")
    private Integer isParty;

    @Size(max=11)
    @Column(name="fss_group_id")
    private Integer fssGroupId;


    @Size(max = 225)
    @Column(name = "fss_group_name")
    private String fssGroupName;


    @Size(max=11)
    @Column(name ="assignment_id")
    private Integer assignmentId;

    @Size(max=225)
    @Column(name ="master_it_tds")
    private  String masterItTds;

    @Size(max=225)
    @Column(name ="master_gst")
    private  String masterGst;

    @Size(max=225)
    @Column(name ="consd_as_party")
    private  String consdAsParty;

    @Size(max=225)
    @Column(name ="spl_cat")
    private  String splCat;


    @Size(max=11)
    @Column(name ="falling_under_gl_id")
    private  Integer fallingUnderGlId;

    @Size(max=225)
    @Column(name ="falling_under_gl_name")
    private  String fallingUnderGlName;





}
