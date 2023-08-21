package com.anyaudit.models;


import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

import javax.persistence.*;
import javax.validation.constraints.Size;

@Entity
@Table(name = "process_capture_group_nodes")
@AllArgsConstructor
@NoArgsConstructor
@Getter
@Setter
public class processCaptureGroupNodes extends BaseModel {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "id")
    private Long id;

    @Size(max = 11)
    @Column(name = "group_id")
    private Integer groupId;


    @Size(max = 225)
    @Column(name = "type")
    private String type;

    @Size(max = 11)
    @Column(name = "node")
    private Integer node;

    @Size(max = 11)
    @Column(name = "node_head")
    private Integer nodeHead;






}
