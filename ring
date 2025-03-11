<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Ring Loader</title>
    <style>
        * {
            margin: 0;
            padding: 0;
        }

        body { background-color: #0a0a0a; }

        section {
            width: 100%;
            height: 100vh;
            display: flex;
            justify-content: center;
            align-items: center;
        }

        div.ring {
            position: relative;
            width: 100px;
            height: 100px;
            perspective: 600px;
        }

        div.ring::before {
            position: absolute;
            content: '';
            border: #f91efb solid 5px;
            top: 0;
            left: 0;
            right: 0;
            bottom: 0;
            border-radius: 100%;
            box-shadow: 0 0 5px #f91efb,
                        0 0 15px #f91efb,
                        0 0 50px #f91efb;

            animation: vLoader 3s infinite linear;
        }

        div.ring::after {
            position: absolute;
            content: '';
            border: #f91efb solid 5px;
            top: 0;
            left: 0;
            right: 0;
            bottom: 0;
            border-radius: 100%;
            box-shadow: 0 0 5px #f91efb,
                        0 0 15px #f91efb,
                        0 0 50px #f91efb;
            animation: hLoader 3s infinite linear;
        }
        
        @keyframes vLoader {
            0% {
                transform: rotateX(0deg);
            }

            40% {
                transform: rotateX(190deg);
            }

            100% {
                transform: rotateX(360deg);
            }
        }

        @keyframes hLoader {
            0% {
                transform: rotateY(0deg);
            }

            60% {
                transform: rotateY(170deg);
            }

            100% {
                transform: rotateY(360deg);
            }
        }
    </style>
</head>
<body>
    <section>
        <div class="ring"></div>
    </section>
</body>
</html>
