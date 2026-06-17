<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Resume Builder | Build Smarter Resumes</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@400;600;700&display=swap" rel="stylesheet">

    <style>
        :root {
            --primary-color: #ffb703;
            --primary-dark: #ffaa00;
            --bg-dark: #0d1b2a;
            --bg-gradient: linear-gradient(135deg, rgba(13, 27, 42, 0.95), rgba(33, 47, 70, 0.9));
            --text-light: #ffffff;
            --text-muted: #b8c1c9;
            --btn-hover: #ffd166;
        }

        * { box-sizing: border-box; }

        body {
            font-family: 'Poppins', sans-serif;
            margin: 0;
            background: var(--bg-dark);
            color: var(--text-light);
            scroll-behavior: smooth;
        }

        /* NAVBAR */
        .navbar {
            background: rgba(0, 0, 0, 0.6);
            backdrop-filter: blur(12px);
            border-bottom: 1px solid rgba(255, 255, 255, 0.1);
            transition: background 0.4s ease;
        }
        .navbar-brand {
            color: var(--primary-color) !important;
            font-weight: 700;
            font-size: 1.5rem;
        }
        .nav-link {
            color: var(--text-light) !important;
            font-weight: 500;
            margin-right: 20px;
            transition: color 0.3s ease;
        }
        .nav-link:hover,
        .nav-link.active {
            color: var(--primary-color) !important;
        }

        /* HERO SECTION */
        .hero {
            background: var(--bg-gradient), 
                url('https://images.unsplash.com/photo-1498050108023-c5249f4df085?auto=format&fit=crop&w=1650&q=80') 
                center/cover no-repeat;
            min-height: 100vh;
            display: flex;
            align-items: center;
            justify-content: flex-start;
            position: relative;
            overflow: hidden;
        }
        .hero::after {
            content: '';
            position: absolute;
            top: 0; left: 0; right: 0; bottom: 0;
            background: linear-gradient(135deg, rgba(10, 10, 30, 0.8), rgba(15, 30, 60, 0.6));
        }
        .hero-content {
            position: relative;
            z-index: 2;
            max-width: 600px;
            margin-left: 8%;
        }
        .hero h1 {
            font-size: 3.2rem;
            font-weight: 700;
            line-height: 1.3;
            color: var(--text-light);
            margin-bottom: 20px;
        }
        .hero p {
            font-size: 1.1rem;
            color: var(--text-muted);
            margin-bottom: 35px;
        }
        .btn-primary {
            background: var(--primary-color);
            color: #000;
            border: none;
            padding: 14px 35px;
            font-weight: 600;
            border-radius: 50px;
            box-shadow: 0 5px 20px rgba(255, 183, 3, 0.3);
            transition: 0.3s ease;
        }
        .btn-primary:hover {
            background: var(--primary-dark);
            transform: translateY(-3px);
            box-shadow: 0 8px 25px rgba(255, 183, 3, 0.5);
        }

        /* FEATURE SECTION */
        .features {
            background: #f9fafc;
            color: #111;
            padding: 100px 0;
            text-align: center;
        }
        .features h2 {
            font-weight: 700;
            font-size: 2.5rem;
            margin-bottom: 60px;
            background: linear-gradient(90deg, #1b263b, #0d1b2a);
            -webkit-background-clip: text;
            -webkit-text-fill-color: transparent;
        }
        .feature-box {
            background: white;
            border-radius: 16px;
            padding: 30px;
            box-shadow: 0 6px 30px rgba(0, 0, 0, 0.08);
            transition: transform 0.3s ease, box-shadow 0.3s ease;
        }
        .feature-box:hover {
            transform: translateY(-10px);
            box-shadow: 0 12px 40px rgba(0, 0, 0, 0.12);
        }
        .feature-box img {
            width: 70px;
            margin-bottom: 20px;
        }
        .feature-box h4 {
            font-weight: 600;
            margin-bottom: 10px;
        }

        /* ABOUT SECTION */
        .about {
            background: var(--bg-gradient);
            color: var(--text-light);
            text-align: center;
            padding: 100px 0;
        }
        .about h2 {
            font-weight: 700;
            margin-bottom: 20px;
        }
        .about p {
            font-size: 1.1rem;
            max-width: 700px;
            margin: 0 auto 30px auto;
            color: var(--text-muted);
        }

        /* FOOTER */
        footer {
            background: #000;
            color: #bbb;
            padding: 25px 0;
            text-align: center;
            font-size: 0.95rem;
        }
        footer a {
            color: var(--primary-color);
            text-decoration: none;
        }
        footer a:hover {
            color: var(--primary-dark);
        }

        @media (max-width: 768px) {
            .hero h1 {
                font-size: 2.2rem;
            }
            .hero-content {
                margin-left: 5%;
            }
        }
    </style>
</head>

<body>

<!-- Navbar -->
<nav class="navbar navbar-expand-lg navbar-dark fixed-top">
    <div class="container">
        <a class="navbar-brand" href="/home">Resume Builder</a>
        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse justify-content-end" id="navbarNav">
            <ul class="navbar-nav">
                <li class="nav-item"><a class="nav-link" href="/home">Home</a></li>

                <%-- Check if user is logged in --%>
                <%
                    Object loggedUser = session.getAttribute("loggedUser");
                    if (loggedUser != null) {
                %>
                    <li class="nav-item"><a class="nav-link" href="/resume_form">Build Resume</a></li>
                    <li class="nav-item"><a class="nav-link" href="/logout">Logout</a></li>
                <%
                    } else {
                %>
                    <li class="nav-item"><a class="nav-link" href="/register">Register</a></li>
                    <li class="nav-item"><a class="nav-link" href="/login">Login</a></li>
                <%
                    }
                %>
            </ul>
        </div>
    </div>
</nav>


<!-- Hero Section -->
<section class="hero">
    <div class="hero-content">
        <p class="text-uppercase" style="letter-spacing:2px;">We Are Here</p>
        <h1>Build Your Smart Resume with AI</h1>
        <p>Leverage artificial intelligence to create job-winning resumes that stand out in recruiter searches.</p>
        <a href="/register" class="btn btn-primary btn-lg">Start Free Today</a>
    </div>
</section>

<!-- Features Section -->
<section class="features">
    <div class="container">
        <h2>Why Choose Our AI Resume Builder?</h2>
        <div class="row g-4">
            <div class="col-md-4">
                <div class="feature-box">
                    <img src="https://cdn-icons-png.flaticon.com/512/3594/3594554.png" alt="AI Icon">
                    <h4>Smart AI Summary</h4>
                    <p>Generate professional summaries automatically based on your skills and job role using AI intelligence.</p>
                </div>
            </div>
            <div class="col-md-4">
                <div class="feature-box">
                    <img src="https://cdn-icons-png.flaticon.com/512/3135/3135715.png" alt="Design Icon">
                    <h4>Custom Templates</h4>
                    <p>Pick from elegant, ATS-friendly templates and let AI fill the professional content for you.</p>
                </div>
            </div>
            <div class="col-md-4">
                <div class="feature-box">
                    <img src="https://cdn-icons-png.flaticon.com/512/2920/2920324.png" alt="Export Icon">
                    <h4>Instant Download</h4>
                    <p>Export your resume instantly in PDF format, ready for job applications and LinkedIn uploads.</p>
                </div>
            </div>
        </div>
    </div>
</section>

<!-- About Section -->
<section class="about" id="about">
    <div class="container">
        <h2>About Our Platform</h2>
        <p>Our AI Resume Builder helps you build smarter resumes faster. With modern templates and automated summary generation, you can focus on landing your dream job — not formatting documents.</p>
        <a href="/register" class="btn btn-primary mt-4">Build My Resume Now</a>
    </div>
</section>

<!-- Footer -->
<footer>
    <div class="container">
        <p>&copy; 2025 AI Resume Builder |
            <a href="/login">Login</a> | <a href="/register">Register</a></p>
    </div>
</footer>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
