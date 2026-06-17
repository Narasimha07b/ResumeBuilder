<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Register | Resume Builder</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@400;600;700&display=swap" rel="stylesheet">

    <style>
        :root {
            --primary-color: #ffb703;
            --primary-dark: #ffaa00;
            --bg-gradient: linear-gradient(135deg, rgba(13, 27, 42, 0.95), rgba(33, 47, 70, 0.9));
            --text-light: #fff;
            --text-muted: #b8c1c9;
        }

        body {
            font-family: 'Poppins', sans-serif;
            margin: 0;
            min-height: 100vh;
            display: flex;
            align-items: center;
            justify-content: center;
            background: var(--bg-gradient),
                        url('https://images.unsplash.com/photo-1498050108023-c5249f4df085?auto=format&fit=crop&w=1650&q=80')
                        center/cover no-repeat;
        }

        /* Outer container */
        .register-wrapper {
            display: flex;
            width: 90%;
            max-width: 1100px;
            height: 80vh;
            border-radius: 24px;
            overflow: hidden;
            box-shadow: 0 10px 40px rgba(0,0,0,0.4);
            background: rgba(0,0,0,0.4);
            backdrop-filter: blur(12px);
        }

        /* Left section (form side) */
        .left-side {
            flex: 1;
            background: rgba(255,255,255,0.08);
            backdrop-filter: blur(18px);
            display: flex;
            align-items: center;
            justify-content: center;
        }

        .register-card {
            width: 85%;
            max-width: 400px;
            background: rgba(255,255,255,0.1);
            padding: 40px 35px;
            border-radius: 20px;
            box-shadow: 0 6px 25px rgba(0,0,0,0.2);
            color: var(--text-light);
        }

        .register-card h3 {
            text-align: center;
            font-weight: 700;
            margin-bottom: 30px;
        }

        .form-control {
            background: rgba(255,255,255,0.15);
            border: none;
            color: #fff;
            padding: 12px 15px;
            border-radius: 10px;
            font-size: 0.95rem;
            transition: all 0.3s ease;
        }

        .form-control::placeholder {
            color: #bbb;
        }

        .form-control:focus {
            background: rgba(255,255,255,0.25);
            box-shadow: 0 0 0 3px rgba(255,183,3,0.3);
            outline: none;
        }

        .btn-primary {
            background-color: var(--primary-color);
            border: none;
            color: #000;
            font-weight: 600;
            padding: 12px;
            border-radius: 10px;
            transition: all 0.3s ease;
            width: 100%;
        }

        .btn-primary:hover {
            background-color: var(--primary-dark);
            transform: scale(1.03);
            box-shadow: 0 8px 25px rgba(255,183,3,0.4);
        }

        .register-footer {
            text-align: center;
            margin-top: 20px;
            font-size: 0.95rem;
        }

        .register-footer a {
            color: var(--primary-color);
            text-decoration: none;
            transition: color 0.3s;
        }

        .register-footer a:hover {
            color: var(--primary-dark);
        }

        /* Right section (info side) */
        .right-side {
            flex: 1;
            display: flex;
            flex-direction: column;
            justify-content: center;
            padding: 60px;
            color: var(--text-light);
            background: linear-gradient(135deg, rgba(10,15,30,0.9), rgba(25,40,70,0.7));
        }

        .right-side h1 {
            font-size: 3rem;
            font-weight: 700;
            margin-bottom: 15px;
        }

        .right-side p {
            font-size: 1.1rem;
            opacity: 0.9;
            max-width: 400px;
        }

        @media (max-width: 900px) {
            .register-wrapper {
                flex-direction: column-reverse;
                height: auto;
            }
            .left-side, .right-side {
                width: 100%;
                height: auto;
                padding: 40px;
            }
            .right-side h1 {
                font-size: 2.2rem;
            }
        }
    </style>
</head>

<body>

<div class="register-wrapper">
    <!-- Left Side (Form) -->
    <div class="left-side">
        <div class="register-card">
            <h3>Create Your Account</h3>
            <form action="/register" method="post">
                <div class="mb-3">
                    <input type="text" name="name" class="form-control" placeholder="Full Name" required>
                </div>
                <div class="mb-3">
                    <input type="email" name="email" class="form-control" placeholder="Email" required>
                </div>
                <div class="mb-3">
                    <input type="password" name="password" class="form-control" placeholder="Password" required>
                </div>
                <button type="submit" class="btn btn-primary">Register</button>
            </form>

            <div class="register-footer mt-4">
                <p>Already have an account? <a href="/login">Login</a></p>
            </div>
        </div>
    </div>

    <!-- Right Side (Text) -->
    <div class="right-side">
        <h1>Join Us Today!</h1>
        <p>Sign up now and let our AI Resume Builder help you craft professional resumes that make recruiters say “Wow!”.</p>
    </div>
</div>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
