package com.anyaudit.models;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import org.springframework.security.config.annotation.method.configuration.EnableMethodSecurity;

import javax.persistence.*;
import javax.validation.constraints.Size;

@Entity
@Table(name = "tickets")
@AllArgsConstructor
@NoArgsConstructor
@Getter
@Setter
public class Tickets {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "perfid")
    private Long perfId;


    @Size(max = 225)
    @Column(name = "input_url")
    private String inputUrl;

    @Size(max = 225)
    @Column(name = "page_url")
    private String pageUrl;

    @Size(max = 4)
    @Column(name = "resolved")
    private Integer resolved;

    @Column(name = "description")
    private String description;

    @Size(max = 225)
    @Column(name = "domain")
    private String domain;


    @Size(max = 225)
    @Column(name = "ip_address")
    private String ipAddress;

    @Size(max = 225)
    @Column(name = "person_name")
    private String personName;


    @Size(max = 225)
    @Column(name = "person_email")
    private String personEmail;

    @Size(max = 225)
    @Column(name = "ticket_id")
    private Integer ticketId;

    @Size(max = 100)
    @Column(name = "ticket_no")
    private String ticketNo;

    @Size(max = 3)
    @Column(name = "ticket_status")
    private Integer ticketStatus;












}
