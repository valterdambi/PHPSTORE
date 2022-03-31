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
						<form role="form" action="cathandler.php" method="POST"">
						<h1>Categories</h1>
						<div class=" box-body">
							<div class="<div class=" form-group">
								<label for="category">Category</label>
								<input type="text" name="category" id="category" class="form-control" placeholder="Enter category Name">
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