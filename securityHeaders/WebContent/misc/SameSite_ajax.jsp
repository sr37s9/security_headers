<!DOCTYPE html>
<html>
<head>
<title>Cross-Origin Resource Sharing</title>
<script >
	function fun()
	{
		var xhr=new XMLHttpRequest();
		xhr.open("Get", "http://localhost:8081/securityHeaders/test/SameSite", true);
		
		xhr.onreadystatechange = function()
		{
		    if (this.readyState == 4 && this.status == 200)
		    {
		      
		    	document.getElementById("demo").innerHTML = this.responseText;
		    }
		};

	}
	
</script>
</head>
<body>
	Cross site request to test SameSite cookie attribute.<br><br>
	Click on the button to send AJAX request.
	
	<input type="button" value="submit" onclick="fun()"><br><br>
	<div id="demo"></div>
</body>
</html>