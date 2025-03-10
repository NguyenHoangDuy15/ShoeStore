<%@page contentType="text/html" pageEncoding="UTF-8"%>
<html>
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Login</title>
        <!-- Liên kết đến Bootstrap CSS -->
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta name="format-detection" content="telephone=no">
        <meta name="apple-mobile-web-app-capable" content="yes">
        <meta name="author" content="TemplatesJungle">
        <meta name="keywords" content="Online Store">
        <meta name="description" content="Stylish - Shoes Online Store HTML Template">

        <link rel="stylesheet" href="css/vendor.css">
        <link rel="stylesheet" type="text/css" href="style.css">

        <link rel="preconnect" href="https://fonts.googleapis.com/">
        <link rel="preconnect" href="https://fonts.gstatic.com/" crossorigin>
        <link
            href="https://fonts.googleapis.com/css2?family=Inter:wght@400;500;600;700;800;900&amp;family=Playfair+Display:ital,wght@0,900;1,900&amp;family=Source+Sans+Pro:wght@400;600;700;900&amp;display=swap"
            rel="stylesheet">

        <style>
            body {
                font-family: 'Arial', sans-serif;
                background-image: url('images/background.jpg');
                background-size: cover;
                background-repeat: no-repeat;
                background-position: center;
                background-attachment: fixed; /* Giữ background cố định khi zoom */
                display: flex;
                align-items: center;
                justify-content: center;
                height: 100vh;
                margin: 0;
            }

            .container {
                background-color: rgba(255, 255, 255, 0.9); /* Tạo hiệu ứng trong suốt để nhìn thấy hình nền phía sau */
                border-radius: 10px;
                box-shadow: 0 4px 20px rgba(0, 0, 0, 0.1);
                padding: 30px;
                text-align: center;
            }

            .submit-btn {
                margin-top: 20px;
                padding: 10px 20px;
                background-color: #4CAF50;
                color: white;
                border: none;
                cursor: pointer;
                border-radius: 5px;
                font-size: 16px;
                transition: background-color 0.3s;
                width: 100%;
            }

            .submit-btn:hover {
                background-color: #45a049;
            }

            .submit-btn:disabled {
                background-color: grey;
                cursor: not-allowed;
            }

            h2 {
                margin-bottom: 20px;
                color: #333;
            }

            input[type="submit"].hvr-sweep-to-right {
                background-color: #d9534f;
                color: white;
                transition: background-color 0.3s;
            }

            input[type="submit"].hvr-sweep-to-right:hover {
                background-color: #c9302c;
            }
            
        </style>
    </head>
    <body>
        <div class="modal fade" id="modallogin" tabindex="-1" aria-modal="true" role="dialog">
            <div class="modal-dialog modal-fullscreen-md-down modal-md modal-dialog-centered" role="document">
                <div class="modal-content p-4">
                    <div class="modal-header border-0 position-relative">
                        <h2 class="modal-title fs-3 fw-normal text-center w-100">Login</h2>
<a href="home2.jsp" class="btn-close position-absolute end-0" aria-label="Close" style="padding: 10px; margin: 0; border: 2px solid black; border-radius: 50%;"></a>
                    </div>
                    <div class="modal-body">
                        <div class="login-detail">
                            <div class="login-form p-0">
                                <div class="col-lg-12 mx-auto">
                                    <form action="login" method="post" id="login-form">
                                        <input type="text" name="username" placeholder="Username or Email Address *"
                                               class="mb-3 ps-3 text-input" required>
                                        <input type="password" name="password" placeholder="Password" class="ps-3 text-input" required>
                                        <div class="checkbox d-flex justify-content-between mt-4">
                                            <p class="checkbox-form">
                                                <label class="">
                                                    <input name="rememberme" type="checkbox" id="remember-me" value="forever"> Remember me </label>
                                            </p>
                                            <p class="lost-password">
                                                <a href="resetpassword.jsp">Forgot your password?</a>
                                            </p>
                                        </div>
                                        ${err}
                                        <div class="modal-footer mt-5 d-flex justify-content-center">
                                            <input type="submit" value="Login" class="btn btn-red hvr-sweep-to-right dark-sweep">
                                            <a href="register.jsp" class="btn btn-outline-gray hvr-sweep-to-right dark-sweep">Register</a> 
                                        </div>
                                    </form>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>

        <script>
            $(document).ready(function () {
                $('#modallogin').modal({
                    backdrop: 'static', // Ngăn không cho đóng khi nhấn ra ngoài
                    keyboard: false      // Ngăn không cho đóng khi nhấn phím Esc
                });
                $('#modallogin').modal('show');
            });
        </script>
    </body>
</html>
