package com.anyaudit.models;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

import javax.persistence.*;
import javax.validation.constraints.Size;
import java.util.Date;


@Entity
@Table(name = "question_detail")
@AllArgsConstructor
@NoArgsConstructor
@Getter
@Setter
public class QuestionDetail extends BaseModel {

        @Id
        @GeneratedValue(strategy = GenerationType.IDENTITY)
        @Column(name = "qdid")
        private Long qdid;

        @Size(max = 11)
        @Column(name = "qid")
        private String qid;

        @Size(max = 225)
        @Column(name = "rating")
        private String rating;

        @Column(name = "`desc`")
        private String description;

        @Size(max = 225)
        @Column(name = "status")
        private String status;

        @Size(max = 11)
        @Column(name = "sync_id")
        private String syncId;

        @Column(name = "sync_on")
        private Date syncOn;

        @Size(max = 11)
        @Column(name = "master_id")
        private String masterId;

        @Size(max = 11)
        @Column(name = "master_parent_id")
        private String masterParent_id;

    }




