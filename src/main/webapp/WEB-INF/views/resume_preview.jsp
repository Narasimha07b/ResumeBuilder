<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="com.resumeBuilder.resumeBuilder.model.Resume" %>
<%
    Resume resume = (Resume) request.getAttribute("resume");
%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title><%= resume.getFullName() %> | Resume</title>
    <link href="https://fonts.googleapis.com/css2?family=Times+New+Roman:wght@400;700&display=swap" rel="stylesheet">
    <style>
        body {
            font-family: 'Times New Roman', serif;
            color: #000;
            background: #fff;
            margin: 0;
            padding: 40px 80px;
            max-width: 900px;
            margin: auto;
        }

        h1 {
            font-weight: 700;
            text-align: center;
            font-size: 26px;
            letter-spacing: 1px;
            margin-bottom: 5px;
        }

        .contact {
            text-align: center;
            font-size: 13px;
            margin-bottom: 25px;
        }

        .contact a {
            color: #000;
            text-decoration: none;
            margin: 0 5px;
        }

        h2 {
            font-size: 15px;
            margin-top: 25px;
            margin-bottom: 8px;
            border-bottom: 1px solid #000;
            padding-bottom: 3px;
            text-transform: uppercase;
            font-weight: bold;
        }

        p, li {
            font-size: 13px;
            line-height: 1.5;
            text-align: justify;
        }

        ul {
            margin: 0;
            padding-left: 20px;
        }

        .section {
            margin-bottom: 15px;
        }

        .edu, .exp, .proj {
            display: flex;
            justify-content: space-between;
        }

        .left {
            font-weight: bold;
        }

        .right {
            font-style: italic;
        }

        .btn-download {
            display: block;
            width: 200px;
            margin: 30px auto;
            text-align: center;
            background-color: #000;
            color: #fff;
            text-decoration: none;
            padding: 10px;
            border-radius: 5px;
        }

        @media print {
            .btn-download {
                display: none;
            }
        }
    </style>
</head>

<body>
    <h1><%= resume.getFullName() %></h1>
    <div class="contact">
        <%= resume.getLocation() %> |
        <%= resume.getPhone() %> |
        <%= resume.getEmail() %> <br>
        <% if(resume.getLinkedin()!=null){ %><a href="<%= resume.getLinkedin() %>">LinkedIn</a><% } %>
        <% if(resume.getGithub()!=null){ %> | <a href="<%= resume.getGithub() %>">GitHub</a><% } %>
        <% if(resume.getLeetcode()!=null){ %> | <a href="<%= resume.getLeetcode() %>">LeetCode</a><% } %>
        <% if(resume.getCodechef()!=null){ %> | <a href="<%= resume.getCodechef() %>">CodeChef</a><% } %>
    </div>

    <!-- Summary -->
    <div class="section">
        <h2>Professional Summary</h2>
        <p><%= resume.getSummary() != null ? resume.getSummary() : "Full Stack Developer specializing in scalable web applications and data-driven systems." %></p>
    </div>

    <!-- Education -->
    <div class="section">
        <h2>Education</h2>
        <p><%= resume.getEducation() %></p>
    </div>

    <!-- Experience -->
    <div class="section">
        <h2>Experience</h2>
        <p><%= resume.getExperience() %></p>
    </div>

    <!-- Projects -->
    <div class="section">
        <h2>Technical Projects</h2>
        <p><%= resume.getProjects() %></p>
    </div>

    <!-- Skills -->
    <div class="section">
        <h2>Technical Skills</h2>
        <p><%= resume.getSkills() %></p>
    </div>

    <!-- Achievements -->
    <div class="section">
        <h2>Achievements</h2>
        <p><%= resume.getAchievements() %></p>
    </div>

    <a href="javascript:window.print()" class="btn-download">Download as PDF</a>
</body>
</html>
