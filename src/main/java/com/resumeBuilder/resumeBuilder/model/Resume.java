package com.resumeBuilder.resumeBuilder.model;

import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import lombok.Data;

@Entity
@Data
public class Resume {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    // --- Basic Information ---
    private String fullName;
    private String location;
    private String phone;
    private String email;

    // --- Online Profiles ---
    private String linkedin;
    private String github;
    private String leetcode;
    private String codechef;

    // --- Professional Info ---
    private String summary;
    private String education;
    private String experience;
    private String projects;
    private String skills;
    private String achievements;

}
