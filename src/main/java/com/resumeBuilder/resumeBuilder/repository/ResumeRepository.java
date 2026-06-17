package com.resumeBuilder.resumeBuilder.repository;

import com.resumeBuilder.resumeBuilder.model.Resume;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface ResumeRepository extends JpaRepository<Resume, Long> {
}
