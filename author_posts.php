<?php include "includes/header.php"; ?>
<?php include "includes/navigation.php"; ?>
<!-- Page Content -->
<div class="container">
	<div class="row">
		<!-- Blog Entries Column -->
		<div class="col-md-8">
			<?php
			// Author Posts functionality
			if (isset($_POST['submit'])) {
				$search = $_POST['search'];
			} else {
				$search = '';
			}
			if (isset($_GET['post_id'])) {
				$the_post_id = $_GET['post_id'];
				$the_author_post = $_GET['author'];
			}
			$query = "SELECT * FROM posts WHERE post_user = '{$the_author_post}' AND post_status = 'published' ";
			$select_all_author_posts = mysqli_query($connection, $query);
			while ($row = mysqli_fetch_assoc($select_all_author_posts)) {
				$post_id      = $row['post_id'];
				$post_title   = $row['post_title'];
				$post_author  = $row['post_user'];
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

			<?php 	}   ?>
		</div>
		<!-- Blog Sidebar Widgets Column -->
		<?php include "includes/sidebar.php"; ?>
	</div>
	<!-- /.row -->
	<hr>
	<?php include "includes/footer.php"; ?>