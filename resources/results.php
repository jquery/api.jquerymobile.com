<!DOCTYPE html> 
<html> 
<head> 
	<title>Page Title</title> 

	<meta name="viewport" content="width=device-width, initial-scale=1"> 

	<link rel="stylesheet" href="http://code.jquery.com/mobile/1.3.0/jquery.mobile-1.3.0.min.css" />
	<script src="http://code.jquery.com/jquery-1.9.1.min.js"></script>
	<script src="http://code.jquery.com/mobile/1.3.0/jquery.mobile-1.3.0.min.js"></script>
</head> 

<body> 
<div data-role="page" style="max-height:90px; min-height:90px;">
	<div data-role="header">
		<h1>Confirm</h1>
	</div>
    <div data-role="content">
		<h1>This is the Results page!</h1>
        
        <h2>You Chose:</h2>
		<?php
		echo "<p> " . $_REQUEST['choice'] . "</p>";
		?>


	</div>
</div>
</body>
</html>
	


