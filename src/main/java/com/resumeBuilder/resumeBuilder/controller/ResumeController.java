package com.resumeBuilder.resumeBuilder.controller;

import com.lowagie.text.pdf.PdfWriter;
import com.resumeBuilder.resumeBuilder.model.Resume;
import com.resumeBuilder.resumeBuilder.model.User;
import com.resumeBuilder.resumeBuilder.repository.ResumeRepository;
import com.resumeBuilder.resumeBuilder.repository.UserRepository;
import com.resumeBuilder.resumeBuilder.service.ResumeService;
import jakarta.servlet.http.HttpServletResponse;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import com.lowagie.text.Document;
import com.lowagie.text.Paragraph;

@Controller
public class ResumeController {

    @Autowired
    private ResumeService resumeService;

    @Autowired
    private UserRepository userRepository;

    @Autowired
    private ResumeRepository resumeRepository;

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
    @GetMapping("/resume/pdf/{id}")
    public void downloadPdf(@PathVariable Long id,
                            HttpServletResponse response) throws Exception {

        Resume resume = resumeRepository.findById(id).orElseThrow();

        response.setContentType("application/pdf");
        response.setHeader("Content-Disposition",
                "attachment; filename=resume.pdf");

        Document document = new Document();
        PdfWriter.getInstance(document, response.getOutputStream());

        document.open();

        document.add(new Paragraph("RESUME"));
        document.add(new Paragraph(" "));
        document.add(new Paragraph("Name: " + resume.getFullName()));
        document.add(new Paragraph("Email: " + resume.getEmail()));
        document.add(new Paragraph("Phone: " + resume.getPhone()));
        document.add(new Paragraph("Location: " + resume.getLocation()));
        document.add(new Paragraph(" "));
        document.add(new Paragraph("Summary: " + resume.getSummary()));
        document.add(new Paragraph("Education: " + resume.getEducation()));
        document.add(new Paragraph("Experience: " + resume.getExperience()));
        document.add(new Paragraph("Projects: " + resume.getProjects()));
        document.add(new Paragraph("Skills: " + resume.getSkills()));
        document.add(new Paragraph("Achievements: " + resume.getAchievements()));

        document.close();
    }
}
