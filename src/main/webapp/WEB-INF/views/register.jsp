<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Register | Resume Builder</title>

    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@400;600;700&display=swap" rel="stylesheet">

    <style>
        :root {
            --primary-color: #ffb703;
            --primary-dark: #ffaa00;
            --bg-gradient: linear-gradient(135deg, rgba(13,27,42,0.95), rgba(33,47,70,0.9));
            --text-light: #fff;
        }

        body {
            font-family: 'Poppins', sans-serif;
            margin: 0;
            min-height: 100vh;
            display: flex;
            align-items: center;
            justify-content: center;
            background:
                var(--bg-gradient),
                url('https://images.unsplash.com/photo-1498050108023-c5249f4df085?auto=format&fit=crop&w=1650&q=80')
                center/cover no-repeat;
        }

        .register-wrapper {
            display: flex;
            width: 90%;
            max-width: 1100px;
            min-height: 700px;
            border-radius: 24px;
            overflow: hidden;
            box-shadow: 0 10px 40px rgba(0,0,0,0.4);
            background: rgba(0,0,0,0.4);
            backdrop-filter: blur(12px);
        }

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
            max-width: 420px;
            background: rgba(255,255,255,0.1);
            padding: 40px;
            border-radius: 20px;
            color: white;
        }

        .register-card h3 {
            text-align: center;
            font-weight: 700;
            margin-bottom: 25px;
        }

        .form-control {
            background: rgba(255,255,255,0.15);
            border: none;
            color: white;
            border-radius: 10px;
            padding: 12px;
        }

        .form-control::placeholder {
            color: #ccc;
        }

        .form-control:focus {
            background: rgba(255,255,255,0.25);
            color: white;
            box-shadow: 0 0 0 3px rgba(255,183,3,0.3);
        }

        .btn-primary {
            width: 100%;
            border: none;
            border-radius: 10px;
            padding: 12px;
            background: var(--primary-color);
            color: black;
            font-weight: 600;
        }

        .btn-primary:hover {
            background: var(--primary-dark);
        }

        .register-footer {
            text-align: center;
            margin-top: 20px;
        }

        .register-footer a {
            color: var(--primary-color);
            text-decoration: none;
        }

        .right-side {
            flex: 1;
            display: flex;
            flex-direction: column;
            justify-content: center;
            padding: 60px;
            color: white;
            background: linear-gradient(
                135deg,
                rgba(10,15,30,0.9),
                rgba(25,40,70,0.7)
            );
        }

        .right-side h1 {
            font-size: 3rem;
            font-weight: 700;
            margin-bottom: 15px;
        }

        .right-side p {
            font-size: 1.1rem;
            max-width: 400px;
        }

        @media(max-width:900px){
            .register-wrapper{
                flex-direction:column-reverse;
            }

            .right-side,
            .left-side{
                width:100%;
                padding:40px;
            }

            .right-side h1{
                font-size:2rem;
            }
        }
    </style>
</head>

<body>

<div class="register-wrapper">

    <div class="left-side">

        <div class="register-card">

            <h3>Create Your Account</h3>

            <% if(request.getAttribute("msg") != null) { %>
                <div class="alert alert-success">
                    <%= request.getAttribute("msg") %>
                </div>
            <% } %>

            <% if(request.getAttribute("error") != null) { %>
                <div class="alert alert-danger">
                    <%= request.getAttribute("error") %>
                </div>
            <% } %>

            <form action="/register" method="post">

                <div class="mb-3">
                    <input
                        type="text"
                        name="name"
                        class="form-control"
                        placeholder="Full Name"
                        required>
                </div>

                <div class="mb-3">
                    <input
                        type="email"
                        name="email"
                        class="form-control"
                        placeholder="Email Address"
                        required>
                </div>

                <div class="mb-3">
                    <input
                        type="password"
                        name="password"
                        class="form-control"
                        placeholder="Password"
                        required>
                </div>

                <button type="submit" class="btn btn-primary">
                    Register
                </button>

            </form>

            <div class="register-footer">
                <p>
                    Already have an account?
                    <a href="/login">Login</a>
                </p>
            </div>

        </div>

    </div>

    <div class="right-side">
        <h1>Join Us Today!</h1>
        <p>
            Sign up now and let Resume Builder help you create
            professional resumes that stand out.
        </p>
    </div>

</div>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>

</body>
</html>