<!DOCTYPE html>
<html>

<?php
include("adminpartials/session.php");
include("adminpartials/head.php");
?>

<body class="hold-transition skin-blue sidebar-mini">
	<div class="wrapper">

		<?php
		include("adminpartials/header.php");
		include("adminpartials/aside.php");
		?>


		<!-- Content Wrapper. Contains page content -->
		<div class="content-wrapper">
			<!-- Content Header (Page header) -->
			<section class="content-header">
				<h1>
					Dashboard
					<small>Control panel</small>
				</h1>
				<ol class="breadcrumb">
					<li><a href="#"><i class="fa fa-dashboard"></i> Home</a></li>
					<li class="active">Dashboard</li>
				</ol>
			</section>

			<!-- Main content -->
			<section class="content">
				<div class="row">
					<div class="col-sm-3">

					</div>
					<div class="col-sm-6">
						<form role="form" action="producthandler.php" method="POST" enctype="multipart/form-data">
							<h1>Products</h1>
							<div class="box-body">
								<div class="<div class=" form-group">
									<label for="name">Name</label>
									<input type="text" name="name" id="name" class="form-control" placeholder="Enter Product Name">
								</div>

								<div class="<div class=" form-group">
									<label for="price">Price</label>
									<input type="text" name="price" id="price" class="form-control" placeholder="Enter Product Price">
								</div>

								<div class="<div class=" form-group">
									<label for="file">File Input</label>
									<input type="file" name="file" id="file">
								</div>

								<div class="<div class=" form-group">
									<label for="price">Description</label>
									<textarea name="description" id="description" rows="10" class="form-control" placeholder="Enter Pruduct Description"></textarea>
								</div>

								<div class="<div class=" form-group">
									<label for="category">Category</label>
									<select name="category" id="category">
										<?php
										include("../partials/connect.php");
										$cat = "select * from categories";
										$result = mysqli_query($connect, $cat);

										while ($row = mysqli_fetch_assoc($result)) {
											echo "<option value=" . $row['id'] . ">" . $row['namec'] . "</option>";
										}

										?>


									</select>
								</div>

								<div class="box-footer">
									<button type="submit" class="btn btn-primary">Submit</button>
								</div>

							</div>

					</div>

					</form>
				</div>

				<div class="col-sm-3">

				</div>

		</div>

		</section>
		<!-- /.content -->
	</div>

	<?php
	include("adminpartials/footer.php");
	?>
</body>

</html>