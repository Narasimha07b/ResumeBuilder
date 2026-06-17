package com.resumeBuilder.resumeBuilder.service;

import com.resumeBuilder.resumeBuilder.model.Resume;
import com.resumeBuilder.resumeBuilder.repository.ResumeRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class ResumeService {
    @Autowired
    private ResumeRepository repo;

    public Resume save(Resume resume) {
        return repo.save(resume);
    }
}
