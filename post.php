<?php include "includes/header.php"; ?>
<?php include "includes/navigation.php"; ?>
<!-- Page Content -->
<div class="container">
    <div class="row">
        <!-- Blog Entries Column -->
        <div class="col-md-8">
            <?php
            if (isset($_GET['p_id'])) {
                // Get the post ID from the URL
                $the_post_id = $_GET['p_id'];
                $view_count_query = "UPDATE posts  SET post_views_count = post_views_count + 1 WHERE post_id = {$the_post_id} ";
                $select_all_posts = mysqli_query($connection, $view_count_query);
                 // Check if the post ID is set
                $query = "SELECT * FROM posts WHERE post_id = {$the_post_id} ";
                $select_all_posts = mysqli_query($connection, $query);
                while ($row = mysqli_fetch_assoc($select_all_posts)) {
                    $post_id      = $row['post_id'];
                    $post_title   = $row['post_title'];
                    $post_author  = $row['post_author'];
                    $post_date    = $row['post_date'];
                    $post_image   = $row['post_image'];
                    $post_content = $row['post_content'];
                    $post_status  = $row['post_status'];
            ?>
                    <h1 class="page-header">
                        Page Heading
                        <small>Secondary Text</small>
                    </h1>
                    <!-- First Blog Post -->
                    <h2>
                        <a href="#"><?php echo $post_title;  ?></a>
                    </h2>
                    <p class="lead">
                        by <a href="index.php"><?php echo $post_author;  ?></a>
                    </p>
                    <p><span class="glyphicon glyphicon-time"></span> <?php echo $post_date;  ?></p>
                    <hr>
                    <img class="img-responsive" src="images/<?php echo $post_image;  ?>" alt="">
                    <hr>
                    <p><?php echo $post_content;  ?></p>
                    <hr>
            <?php     }
            } else {
                header("Location: index.php");
            }
            ?>
            <?php
            // Comment functionality
            if (isset($_POST['submit'])) {
                $the_post_id = $_GET['p_id'];
                $comment_author  = $_POST['comment_author'];
                $comment_email   = $_POST['comment_email'];
                $comment_content = $_POST['comment_content'];
                // Validate the comment fields
                if (!empty($comment_author) && !empty($comment_email) && !empty($comment_content)) {
                    $query = "INSERT INTO comments(comment_post_id,comment_author,comment_email,comment_content,comment_status,comment_date) ";
                    $query .= "VALUES({$the_post_id},'{$comment_author}','{$comment_email}','{$comment_content}','unapproved',now()) ";
                    $create_comment = mysqli_query($connection, $query);
                    if (!$create_comment) {
                        die("QUERY FAILED" . mysqli_error($connection));
                    }
                    $comment_query = "UPDATE posts SET post_comment_count = post_comment_count + 1 WHERE post_id = $the_post_id ";
                    $select_comment_count = mysqli_query($connection, $comment_query);
                } else {
                    echo "<script>alert('This Fields Should Not Be Empty')</script>";
                }
                $comment = "Your Comment Is Successful!";
            } else {
                $comment = "";
            }
            ?>
            <!-- Comments Form -->
            <div class="well">
                <h4>Leave a Comment:</h4>
                <form role="form" method="post">
                    <h6 class="text-center text-bolder"><?php echo $comment; ?></h6>
                    <div class="form-group">
                        <label for="">Author</label>
                        <input type="text" class="form-control" name="comment_author">
                    </div>
                    <div class="form-group">
                        <label for="">Email</label>
                        <input type="email" class="form-control" name="comment_email">
                    </div>
                    <div class="form-group">
                        <label for="">Enter Your Subject</label>
                        <textarea class="form-control" name="comment_content" rows="3"></textarea>
                    </div>
                    <button type="submit" name="submit" class="btn btn-primary">Submit</button>
                </form>
            </div>
            <hr>
            <!-- Posted Comments -->
            <?php
            // Display comments
            $query = "SELECT * FROM comments WHERE comment_post_id = {$the_post_id} ";
            $query .= "AND comment_status = 'approved' ";
            $query .= "ORDER BY comment_id DESC ";
            $display_comment = mysqli_query($connection, $query);
            while ($row = mysqli_fetch_assoc($display_comment)) {
                $comment_author  = $row['comment_author'];
                $comment_date    = $row['comment_date'];
                $comment_content = $row['comment_content'];
            ?>
                <!-- Comment -->
                <div class="media">
                    <a class="pull-left" href="#">
                        <img class="media-object" src="http://placehold.it/64x64" alt="">
                    </a>
                    <div class="media-body">
                        <h4 class="media-heading"><?php echo $comment_author; ?>
                            <small><?php echo $comment_date; ?></small>
                        </h4>
                        <?php echo $comment_content; ?>
                    </div>
                </div>
            <?php    } ?>
        </div>
        <!-- Blog Sidebar Widgets Column -->
        <?php include "includes/sidebar.php"; ?>
    </div>
    <!-- /.row -->
    <hr>
    <?php include "includes/footer.php"; ?>