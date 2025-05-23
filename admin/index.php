<?php include "includes/admin_header.php"; ?>

<div id="wrapper">
    <?php include "includes/admin_navigation.php"; ?>
    <div id="page-wrapper">
        <div class="container-fluid">
            <!-- Page Heading -->
            <div class="row">
                <div class="col-lg-12">
                    <h1 class="page-header">
                        Welcome To Admin
                        <small> <?php echo  $_SESSION['username']; ?> </small>
                    </h1>
                    <!-- /.row -->
                    <div class="row">
                        <div class="col-lg-3 col-md-6">
                            <div class="panel panel-primary">
                                <div class="panel-heading">
                                    <div class="row">
                                        <div class="col-xs-3">
                                            <i class="fa fa-file-text fa-5x"></i>
                                        </div>
                                        <div class="col-xs-9 text-right">
                                            <?php
                                            // Query to count all posts and display the count in the dashboard                                       
                                            $query = "SELECT * FROM posts";
                                            $select_all_post = mysqli_query($connection, $query);
                                            $post_count = mysqli_num_rows($select_all_post);
                                            echo "<div class='huge'>{$post_count}</div>";
                                            ?>
                                            <div>Posts</div>
                                        </div>
                                    </div>
                                </div>
                                <a href="posts.php">
                                    <div class="panel-footer">
                                        <span class="pull-left">View Details</span>
                                        <span class="pull-right"><i class="fa fa-arrow-circle-right"></i></span>
                                        <div class="clearfix"></div>
                                    </div>
                                </a>
                            </div>
                        </div>
                        <div class="col-lg-3 col-md-6">
                            <div class="panel panel-green">
                                <div class="panel-heading">
                                    <div class="row">
                                        <div class="col-xs-3">
                                            <i class="fa fa-comments fa-5x"></i>
                                        </div>
                                        <div class="col-xs-9 text-right">
                                            <?php
                                            // Query to count all comments and display the count in the dashboard 
                                            $query = "SELECT * FROM comments";
                                            $select_all_comment = mysqli_query($connection, $query);
                                            $comment_count = mysqli_num_rows($select_all_comment);

                                            echo "<div class='huge'>{$comment_count}</div>";
                                            ?>
                                            <div>Comments</div>
                                        </div>
                                    </div>
                                </div>
                                <a href="comments.php">
                                    <div class="panel-footer">
                                        <span class="pull-left">View Details</span>
                                        <span class="pull-right"><i class="fa fa-arrow-circle-right"></i></span>
                                        <div class="clearfix"></div>
                                    </div>
                                </a>
                            </div>
                        </div>
                        <div class="col-lg-3 col-md-6">
                            <div class="panel panel-yellow">
                                <div class="panel-heading">
                                    <div class="row">
                                        <div class="col-xs-3">
                                            <i class="fa fa-user fa-5x"></i>
                                        </div>
                                        <div class="col-xs-9 text-right">
                                            <?php
                                            // Query to count all users and display the count in the dashboard
                                            $query = "SELECT * FROM users";
                                            $select_all_users = mysqli_query($connection, $query);
                                            $user_count = mysqli_num_rows($select_all_users);
                                            echo "<div class='huge'>{$user_count}</div>";
                                            ?>
                                            <div> Users</div>
                                        </div>
                                    </div>
                                </div>
                                <a href="users.php">
                                    <div class="panel-footer">
                                        <span class="pull-left">View Details</span>
                                        <span class="pull-right"><i class="fa fa-arrow-circle-right"></i></span>
                                        <div class="clearfix"></div>
                                    </div>
                                </a>
                            </div>
                        </div>
                        <div class="col-lg-3 col-md-6">
                            <div class="panel panel-red">
                                <div class="panel-heading">
                                    <div class="row">
                                        <div class="col-xs-3">
                                            <i class="fa fa-list fa-5x"></i>
                                        </div>
                                        <div class="col-xs-9 text-right">
                                            <?php
                                            // Query to count all categories and display the count in the dashboard
                                            $query = "SELECT * FROM categories";
                                            $select_all_category = mysqli_query($connection, $query);
                                            $category_count = mysqli_num_rows($select_all_category);
                                            echo "<div class='huge'>{$category_count}</div>";
                                            ?>
                                            <div>Categories</div>
                                        </div>
                                    </div>
                                </div>
                                <a href="categories.php">
                                    <div class="panel-footer">
                                        <span class="pull-left">View Details</span>
                                        <span class="pull-right"><i class="fa fa-arrow-circle-right"></i></span>
                                        <div class="clearfix"></div>
                                    </div>
                                </a>
                            </div>
                        </div>
                    </div>
                    <!-- /.row -->
                    <?php
                    // Query to count all published posts, draft posts, unapproved comments, and subscribers
                    $query = "SELECT * FROM posts WHERE post_status = 'published' ";
                    $select_all_published_post = mysqli_query($connection, $query);
                    $publish_count = mysqli_num_rows($select_all_published_post);

                    $query = "SELECT * FROM posts WHERE post_status = 'draft' ";
                    $select_all_draft_post = mysqli_query($connection, $query);
                    $draft_count = mysqli_num_rows($select_all_draft_post);

                    $query = "SELECT * FROM comments WHERE comment_status = 'unapproved' ";
                    $select_all_unapproved = mysqli_query($connection, $query);
                    $unapproved_count = mysqli_num_rows($select_all_unapproved);

                    $query = "SELECT * FROM users WHERE user_role = 'subscriber' ";
                    $select_all_subscriber = mysqli_query($connection, $query);
                    $subscriber_count = mysqli_num_rows($select_all_subscriber);
                    ?>
                    <div class="row">
                        <script type="text/javascript">
                            google.charts.load('current', {
                                'packages': ['bar']
                            });
                            google.charts.setOnLoadCallback(drawChart);
                            // Draw the chart and set the chart values
                            function drawChart() {
                                var data = google.visualization.arrayToDataTable([
                                    ['Data', 'Count'],
                                    <?php
                                    $dashbord_array = ['Active Posts', 'All Posts', 'Draft Post', 'Comments', 'Pending Comments', 'Users', 'Subscribers', 'Categories'];
                                    $dashbord_count = [$publish_count, $post_count, $draft_count, $comment_count, $unapproved_count, $user_count, $subscriber_count, $category_count];
                                    for ($i = 0; $i < 8; $i++) {
                                        echo "['{$dashbord_array[$i]}'" . "," . "{$dashbord_count[$i]}],";
                                    }
                                    ?>
                                ]);
                                var options = {
                                    chart: {
                                        title: '',
                                        subtitle: '',
                                    }
                                };
                                var chart = new google.charts.Bar(document.getElementById('columnchart_material'));
                                chart.draw(data, google.charts.Bar.convertOptions(options));
                            }
                        </script>
                        <div id="columnchart_material" style="width: auto; height: 500px;"></div>
                    </div>
                </div>
            </div>
            <!-- /.row -->
        </div>
        <!-- /.container-fluid -->
        <?php include "includes/admin_footer.php"; ?>