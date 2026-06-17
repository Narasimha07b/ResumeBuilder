<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Build Resume | Resume Builder</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@400;600;700&display=swap" rel="stylesheet">

    <style>
        :root {
            --primary: #ffb703;
            --primary-dark: #ffaa00;
            --bg: linear-gradient(135deg, rgba(13,27,42,0.95), rgba(33,47,70,0.9));
        }
        body {
            font-family: 'Poppins', sans-serif;
            background: var(--bg),
                        url('https://images.unsplash.com/photo-1498050108023-c5249f4df085?auto=format&fit=crop&w=1650&q=80')
                        center/cover no-repeat;
            color: #fff;
            min-height: 100vh;
        }
        .navbar { background: rgba(10,10,10,0.8); backdrop-filter: blur(12px); }
        .navbar-brand { color: var(--primary) !important; font-weight: 700; }
        .form-container {
            background: rgba(255,255,255,0.1);
            backdrop-filter: blur(15px);
            border-radius: 20px;
            padding: 40px 50px;
            box-shadow: 0 10px 35px rgba(0,0,0,0.4);
            margin-top: 110px;
        }
        .form-control {
            background: rgba(255,255,255,0.15);
            border: none;
            color: #fff;
            border-radius: 10px;
            padding: 12px;
        }
        .form-control:focus {
            background: rgba(255,255,255,0.25);
            box-shadow: 0 0 0 3px rgba(255,183,3,0.3);
            outline: none;
        }
        .btn-primary {
            background-color: var(--primary);
            color: #000;
            font-weight: 600;
            border: none;
            border-radius: 10px;
            padding: 14px;
            width: 100%;
        }
        .btn-primary:hover {
            background-color: var(--primary-dark);
            transform: scale(1.03);
        }
        h3 {
            text-align: center;
            font-weight: 700;
            color: var(--primary);
            margin-bottom: 30px;
        }
    </style>
</head>
<body>
<nav class="navbar navbar-expand-lg navbar-dark fixed-top">
    <div class="container">
        <a class="navbar-brand" href="/home">Resume Builder</a>
    </div>
</nav>

<div class="container mt-5">
    <div class="form-container">
        <h3>Build Your AI-Powered Resume</h3>
        <form action="/generateResume" method="post">
            <h5 class="text-warning mt-4">Personal Details</h5>
            <div class="row">
                <div class="col-md-6 mb-3">
                    <input type="text" name="fullName" class="form-control" placeholder="Full Name" required>
                </div>
                <div class="col-md-6 mb-3">
                    <input type="text" name="location" class="form-control" placeholder="Location (e.g., Hyderabad, India)" required>
                </div>
                <div class="col-md-6 mb-3">
                    <input type="text" name="phone" class="form-control" placeholder="Phone Number" required>
                </div>
                <div class="col-md-6 mb-3">
                    <input type="email" name="email" class="form-control" placeholder="Email" required>
                </div>
            </div>

            <h5 class="text-warning mt-4">Online Profiles</h5>
            <div class="row">
                <div class="col-md-6 mb-3">
                    <input type="text" name="linkedin" class="form-control" placeholder="LinkedIn URL">
                </div>
                <div class="col-md-6 mb-3">
                    <input type="text" name="github" class="form-control" placeholder="GitHub URL">
                </div>
                <div class="col-md-6 mb-3">
                    <input type="text" name="leetcode" class="form-control" placeholder="LeetCode URL">
                </div>
                <div class="col-md-6 mb-3">
                    <input type="text" name="codechef" class="form-control" placeholder="CodeChef URL">
                </div>
            </div>

            <h5 class="text-warning mt-4">Education</h5>
            <textarea name="education" class="form-control mb-3" rows="3" placeholder="Example: B.Tech in Computer Science – CGPA: 8.8, 2020–2024, ABC University"></textarea>

            <h5 class="text-warning mt-4">Experience</h5>
            <textarea name="experience" class="form-control mb-3" rows="3" placeholder="Company, Role, Duration, Responsibilities"></textarea>

            <h5 class="text-warning mt-4">Projects</h5>
            <textarea name="projects" class="form-control mb-3" rows="3" placeholder="Project Title, Tech Stack, Description, Links"></textarea>

            <h5 class="text-warning mt-4">Technical Skills</h5>
            <textarea name="skills" class="form-control mb-3" rows="3" placeholder="Programming Languages, Frameworks, Databases, Tools"></textarea>

            <h5 class="text-warning mt-4">Achievements</h5>
            <textarea name="achievements" class="form-control mb-4" rows="3" placeholder="Awards, Certifications, Hackathons, etc."></textarea>

            <button type="submit"  class="btn btn-primary mt-3">Generate Resume</button>
        </form>
    </div>
</div>
</body>
</html>
