package com.resumeBuilder.resumeBuilder.controller;

import com.resumeBuilder.resumeBuilder.model.Resume;
import com.resumeBuilder.resumeBuilder.service.ResumeService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

@Controller
public class ResumeController {

    @Autowired
    private ResumeService resumeService;

    @GetMapping("/resume_form")
    public String showForm() {
        return "resume_form";
    }

    @PostMapping("/generateResume")
    public String generateResume(@ModelAttribute Resume resume, Model model) {
        resumeService.save(resume);
        model.addAttribute("resume", resume);
        return "resume_preview";
    }
}
