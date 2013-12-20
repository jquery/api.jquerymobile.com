<!DOCTYPE html>
<html>
<head>
	<title>Page Title</title>

	<meta name="viewport" content="width=device-width, initial-scale=1">

	<link rel="stylesheet" href="//code.jquery.com/mobile/1.4.0/jquery.mobile-1.4.0.min.css" />
	<script src="//code.jquery.com/jquery-1.10.2.min.js"></script>
	<script src="//code.jquery.com/mobile/1.4.0/jquery.mobile-1.4.0.min.js"></script>
</head>

<body>
<div data-role="page" id="formResults" style="max-height:90px; min-height:90px;">
	<div data-role="header">
		<h1>Confirm</h1>
	</div>
    <div role="main" class="ui-content">
		<h1>This is the Results page!</h1>

        <h2>You Chose:</h2>
		<?php
		echo "<p> " . $_REQUEST['choice'] . "</p>";
		?>

	</div>
</div>
</body>
</html>
