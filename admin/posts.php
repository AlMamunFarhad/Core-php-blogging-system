<?php include "includes/admin_header.php"; ?>
<div id="wrapper">
    <?php include "includes/admin_navigation.php"; ?>
    <div id="page-wrapper">
        <div class="container-fluid">
            <!-- Page Heading -->
            <div class="row">
                <div class="col-lg-12">
                    <h1 class="page-header">
                        Welcome to posts
                        <small>Subheading</small>
                    </h1>
                    <?php
                    // Posts functionality
                    if (isset($_GET['source'])) {
                        $source = $_GET['source'];
                    } else {
                        $source = "";
                    }
                    switch ($source) {
                        case "add_post":
                            include "includes/add_post.php";
                            break;
                        case "edit_post":
                            include "includes/edit_post.php";
                            break;
                        default:
                            include "includes/view_all_posts.php";
                            break;
                    }
                    ?>
                </div>
            </div>
            <!-- /.row -->
        </div>
        <!-- /.container-fluid -->
        <?php include "includes/admin_footer.php"; ?>