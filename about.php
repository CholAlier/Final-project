<?php 
error_reporting(0);
include('includes/config.php');
?>

<!DOCTYPE html>
<html lang="zxx">

<head>
    <title>Vital Drop Management System | About Us </title>
    
    <script>
        addEventListener("load", function () {
            setTimeout(hideURLbar, 0);
        }, false);

        function hideURLbar() {
            window.scrollTo(0, 1);
        }
    </script>

    <link rel="stylesheet" href="css/bootstrap.css">
    <link rel="stylesheet" href="css/style.css" type="text/css" media="all" />
    <link rel="stylesheet" href="css/fontawesome-all.css">
</head>

<body>
    <?php include('includes/header.php');?>

    <div class="inner-banner-w3ls">
        <div class="container"></div>
    </div>

    <section class="about">
        <div class="container py-xl-2 py-lg-2">
            <div class="w3ls-titles text-center mb-md-5 mb-4">
                <h3 class="title">VitalDrop</h3>
                <span><i class="fas fa-user-md"></i></span>
                <p class="py-3">
                    Its mission is to create a centralized platform that connects blood donors with those in need, making the process of blood donation more efficient and accessible.
                </p>
            </div>		
        </div>
    </section>

    <?php include('includes/footer.php');?>

    <script src="js/jquery-2.2.3.min.js"></script>
    <script src="js/responsiveslides.min.js"></script>
    <script src="js/fixed-nav.js"></script>
    <script src="js/SmoothScroll.min.js"></script>
    <script src="js/move-top.js"></script>
    <script src="js/easing.js"></script>
    <script src="js/medic.js"></script>
    <script src="js/bootstrap.js"></script>

</body>

</html>
