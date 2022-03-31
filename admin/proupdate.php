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

					</div>
					<form role="form" action="proupdatehandler.php" method="POST" enctype="multipart/form-data">
					<?php
					$newid=$_GET['up_id'];
					include("../partials/connect.php");
					$sql="select * from products where id='$newid'";
					$results=$connect->query($sql);
					$final=$results->fetch_assoc();
					?>
					<h1>Products</h1>
						<div class="box-body">
							<div class="<div class=" form-group">
								<label for="name">Name</label>
								<input type="text" name="name" id="name" class="form-control" value="<?php echo $final['namep'] ?>" placeholder="Enter Product Name">
							</div>

							<div class="<div class=" form-group">
								<label for="price">Price</label>
								<input type="text" name="price" id="price" class="form-control" value="<?php echo $final['price'] ?>"placeholder="Enter Product Price">
							</div>

							<div class="<div class=" form-group">
								<label for="file">File Input</label>
								<input type="file" name="file" value="<?php echo $final['picture'] ?>" id="file">
							</div>

							<div class="<div class=" form-group">
								<label for="price">Description</label>
								<textarea name="description" id="description" rows="10" class="form-control" value="<?php echo $final['descriptionp'] ?>" placeholder="Enter Pruduct Description"></textarea>
							</div>

							<div class="<div class=" form-group">
								<label for="category">Category</label>
								<select name="category" id="category" value="<?php echo $final['category_id'] ?>">
									<?php
                                    
									$cat="select * from categories";
									$result=mysqli_query($connect,$cat);
									
                                    while($row=mysqli_fetch_assoc($result)){
									echo "<option value=".$row['id'].">".$row['namec']."</option>";

									}

									?>
									
									
								</select>
							</div>

							<div class="box-footer">
								<input type="hidden" value="<?php echo $final['id'] ?>" name="form_id">
								<button type="submit" class="btn btn-primary" name="update">Update</button>
							</div>

							<div class="col-sm-3">

							</div>

						</div>

				</div>

				</form>

		</div>

		</section>
		<!-- /.content -->
	</div>

	<?php
	include("adminpartials/footer.php");
	?>
</body>

</html>