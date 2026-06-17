<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Build Resume | Resume Builder</title>

    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@400;500;600;700&display=swap" rel="stylesheet">

    <style>
        :root{
            --primary:#ffb703;
            --primary-dark:#ffaa00;
            --glass:rgba(255,255,255,0.12);
        }

        body{
            font-family:'Poppins',sans-serif;
            background:
                linear-gradient(rgba(13,27,42,0.95),rgba(33,47,70,0.90)),
                url('https://images.unsplash.com/photo-1498050108023-c5249f4df085?auto=format&fit=crop&w=1650&q=80');
            background-size:cover;
            background-position:center;
            background-attachment:fixed;
            min-height:100vh;
            color:white;
        }

        .navbar{
            background:rgba(0,0,0,0.8);
            backdrop-filter:blur(10px);
        }

        .navbar-brand{
            color:var(--primary)!important;
            font-weight:700;
        }

        .form-container{
            max-width:1000px;
            margin:110px auto 40px;
            background:var(--glass);
            backdrop-filter:blur(15px);
            border-radius:20px;
            padding:40px;
            box-shadow:0 10px 30px rgba(0,0,0,0.4);
        }

        h3{
            text-align:center;
            color:var(--primary);
            font-weight:700;
            margin-bottom:30px;
        }

        h5{
            margin-top:25px;
            margin-bottom:15px;
            font-weight:600;
        }

        .form-control{
            background:rgba(255,255,255,0.15);
            border:none;
            color:white;
            border-radius:10px;
            padding:12px;
        }

        .form-control:focus{
            background:rgba(255,255,255,0.20);
            color:white;
            box-shadow:0 0 0 3px rgba(255,183,3,0.3);
        }

        .form-control::placeholder{
            color:rgba(255,255,255,0.70);
        }

        textarea{
            resize:vertical;
        }

        .btn-primary{
            width:100%;
            padding:14px;
            font-size:16px;
            font-weight:600;
            border:none;
            border-radius:10px;
            background:var(--primary);
            color:black;
        }

        .btn-primary:hover{
            background:var(--primary-dark);
        }
    </style>
</head>

<body>

<nav class="navbar navbar-expand-lg navbar-dark fixed-top">
    <div class="container">
        <a class="navbar-brand" href="/home">Resume Builder</a>
    </div>
</nav>

<div class="container">
    <div class="form-container">

        <h3>Build Your Professional Resume</h3>

        <form action="/generateResume" method="post">

            <h5 class="text-warning">Personal Details</h5>

            <div class="row">

                <div class="col-md-6 mb-3">
                    <input type="text"
                           name="fullName"
                           class="form-control"
                           placeholder="Full Name"
                           required>
                </div>

                <div class="col-md-6 mb-3">
                    <input type="text"
                           name="location"
                           class="form-control"
                           placeholder="Location"
                           required>
                </div>

                <div class="col-md-6 mb-3">
                    <input type="text"
                           name="phone"
                           class="form-control"
                           placeholder="Phone Number"
                           required>
                </div>

                <div class="col-md-6 mb-3">
                    <input type="email"
                           name="email"
                           class="form-control"
                           placeholder="Email Address"
                           required>
                </div>

            </div>

            <h5 class="text-warning">Online Profiles</h5>

            <div class="row">

                <div class="col-md-6 mb-3">
                    <input type="text"
                           name="linkedin"
                           class="form-control"
                           placeholder="LinkedIn Profile URL">
                </div>

                <div class="col-md-6 mb-3">
                    <input type="text"
                           name="github"
                           class="form-control"
                           placeholder="GitHub Profile URL">
                </div>

                <div class="col-md-6 mb-3">
                    <input type="text"
                           name="leetcode"
                           class="form-control"
                           placeholder="LeetCode Profile URL">
                </div>

                <div class="col-md-6 mb-3">
                    <input type="text"
                           name="codechef"
                           class="form-control"
                           placeholder="CodeChef Profile URL">
                </div>

            </div>

            <h5 class="text-warning">Professional Summary</h5>

            <textarea
                    name="summary"
                    class="form-control mb-3"
                    rows="4"
                    placeholder="Write a short professional summary about yourself..."
                    required></textarea>

            <h5 class="text-warning">Education</h5>

            <textarea
                    name="education"
                    class="form-control mb-3"
                    rows="3"
                    placeholder="B.Tech CSE - XYZ College | CGPA: 8.5 | 2022-2026"></textarea>

            <h5 class="text-warning">Experience</h5>

            <textarea
                    name="experience"
                    class="form-control mb-3"
                    rows="3"
                    placeholder="Internships, freelance work, responsibilities..."></textarea>

            <h5 class="text-warning">Projects</h5>

            <textarea
                    name="projects"
                    class="form-control mb-3"
                    rows="4"
                    placeholder="Project Name | Tech Stack | Description"></textarea>

            <h5 class="text-warning">Technical Skills</h5>

            <textarea
                    name="skills"
                    class="form-control mb-3"
                    rows="3"
                    placeholder="Java, Spring Boot, REST APIs, MySQL, Git, Maven"></textarea>

            <h5 class="text-warning">Achievements & Certifications</h5>

            <textarea
                    name="achievements"
                    class="form-control mb-4"
                    rows="3"
                    placeholder="Certifications, awards, hackathons, coding achievements"></textarea>

            <button type="submit" class="btn btn-primary">
                Generate Resume
            </button>

        </form>

    </div>
</div>

</body>
</html>