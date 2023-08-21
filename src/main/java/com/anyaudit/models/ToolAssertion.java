package com.anyaudit.models;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

import javax.persistence.*;
import javax.validation.constraints.Size;

@Entity
@Table(name = "tool_assertion")
@AllArgsConstructor
@NoArgsConstructor
@Getter
@Setter
public class ToolAssertion extends BaseModel{
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "taid")
    private Long taId;


    @Size(max = 11)
    @Column(name = "tool_id")
    private Integer toolId;

    @Size(max = 11)
    @Column(name = "tool_type_id")
    private Integer toolTypeId;

    @Size(max = 11)
    @Column(name = "assertion_id")
    private Integer assertionId;









}
