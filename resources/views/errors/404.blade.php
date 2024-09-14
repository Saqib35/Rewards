<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>404 Page Not Found</title>
    <style>
        body {
            display: flex;
            align-items: center;
            justify-content: center;
            height: 100vh;
            margin: 0;
            background-color: #f5f5f5;
            font-family: 'Arial', sans-serif;
        }

        .container {
            text-align: center;
        }

        .error-code {
            font-size: 120px;
            font-weight: bold;
            color: #e74c3c;
        }

        .error-message {
            font-size: 24px;
            margin-top: 20px;
            color: #333;
        }

        .animation-container {
            margin-top: 20px;
            position: relative;
            height: 50px;
        }

        .animation-bar {
            position: absolute;
            top: 0;
            left: 0;
            width: 100%;
            height: 100%;
            background-color: #e74c3c;
            animation: moveBar 2s linear infinite;
        }

        @keyframes moveBar {
            0% {
                transform: translateX(-100%);
            }
            100% {
                transform: translateX(100%);
            }
        }
    </style>
</head>
<body>

<div class="container">
    <div class="error-code">404</div>
    <div class="error-message">Page Not Found</div>
    <div class="animation-container">
        <div class="animation-bar"></div>
    </div>
</div>

</body>
</html>
