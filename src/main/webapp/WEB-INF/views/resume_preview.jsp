<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="com.resumeBuilder.resumeBuilder.model.Resume" %>
<%
    Resume resume = (Resume) request.getAttribute("resume");
%>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title><%= resume.getFullName() %> - Resume</title>

    <style>
        *{
            margin:0;
            padding:0;
            box-sizing:border-box;
        }

        body{
            font-family: Arial, sans-serif;
            max-width:900px;
            margin:auto;
            padding:40px;
            line-height:1.6;
            color:#333;
            background:#fff;
        }

        .header{
            text-align:center;
            margin-bottom:20px;
        }

        .header h1{
            font-size:32px;
            margin-bottom:8px;
        }

        .contact{
            font-size:14px;
            color:#555;
        }

        .contact a{
            text-decoration:none;
            color:#007bff;
            margin:0 5px;
        }

        hr{
            margin:20px 0;
        }

        .section{
            margin-bottom:20px;
        }

        .section h2{
            font-size:18px;
            border-bottom:2px solid #333;
            padding-bottom:5px;
            margin-bottom:10px;
            text-transform:uppercase;
        }

        .content{
            white-space:pre-wrap;
        }

        .btn-download{
            display:block;
            width:220px;
            text-align:center;
            margin:30px auto;
            padding:12px;
            background:#000;
            color:#fff;
            text-decoration:none;
            border-radius:6px;
            font-weight:bold;
        }

        .btn-download:hover{
            background:#222;
        }

        @media print{
            .btn-download{
                display:none;
            }

            body{
                padding:0;
            }
        }
    </style>
</head>

<body>

<div class="header">
    <h1><%= resume.getFullName() %></h1>

    <div class="contact">
        <%= resume.getLocation() != null ? resume.getLocation() : "" %> |
        <%= resume.getPhone() != null ? resume.getPhone() : "" %> |
        <%= resume.getEmail() != null ? resume.getEmail() : "" %>
        <br><br>

        <% if(resume.getLinkedin()!=null && !resume.getLinkedin().isEmpty()){ %>
            <a href="<%= resume.getLinkedin() %>" target="_blank">LinkedIn</a>
        <% } %>

        <% if(resume.getGithub()!=null && !resume.getGithub().isEmpty()){ %>
            |
            <a href="<%= resume.getGithub() %>" target="_blank">GitHub</a>
        <% } %>

        <% if(resume.getLeetcode()!=null && !resume.getLeetcode().isEmpty()){ %>
            |
            <a href="<%= resume.getLeetcode() %>" target="_blank">LeetCode</a>
        <% } %>

        <% if(resume.getCodechef()!=null && !resume.getCodechef().isEmpty()){ %>
            |
            <a href="<%= resume.getCodechef() %>" target="_blank">CodeChef</a>
        <% } %>
    </div>
</div>

<hr>

<div class="section">
    <h2>Professional Summary</h2>
    <div class="content">
        <%= resume.getSummary() != null ? resume.getSummary() : "" %>
    </div>
</div>

<div class="section">
    <h2>Education</h2>
    <div class="content">
        <%= resume.getEducation() != null ? resume.getEducation() : "" %>
    </div>
</div>

<div class="section">
    <h2>Experience</h2>
    <div class="content">
        <%= resume.getExperience() != null ? resume.getExperience() : "" %>
    </div>
</div>

<div class="section">
    <h2>Projects</h2>
    <div class="content">
        <%= resume.getProjects() != null ? resume.getProjects() : "" %>
    </div>
</div>

<div class="section">
    <h2>Technical Skills</h2>
    <div class="content">
        <%= resume.getSkills() != null ? resume.getSkills() : "" %>
    </div>
</div>

<div class="section">
    <h2>Achievements</h2>
    <div class="content">
        <%= resume.getAchievements() != null ? resume.getAchievements() : "" %>
    </div>
</div>

<a href="/resume/pdf/<%= resume.getId() %>" class="btn-download">
    Download PDF
</a>

</body>
</html>