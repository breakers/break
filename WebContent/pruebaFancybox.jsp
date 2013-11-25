<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

<!-- Add jQuery library -->
	<script type="text/javascript" src="js/fancybox/lib/jquery-1.10.1.min.js"></script>

	<!-- Add mousewheel plugin (this is optional) -->
	<script type="text/javascript" src="js/fancybox/lib/jquery.mousewheel-3.0.6.pack.js"></script>

	<!-- Add fancyBox main JS and CSS files -->
	<script type="text/javascript" src="js/fancybox/source/jquery.fancybox.js?v=2.1.5"></script>
	<link rel="stylesheet" type="text/css" href="js/fancybox/source/jquery.fancybox.css?v=2.1.5" media="screen" />

	
<title>Probando Fancybox</title>
<script type="text/javascript">
	$(document).ready(function() {
		$(".fancybox").fancybox();
		 $(".fancybox").trigger("click");

	});
</script>




</head>
<body>
<a class="fancybox" href="img/popup/80anios.jpg" data-fancybox-group="gallery" title="Prueba para Home Pop-Up Proyecto SEDAPAR"></a>
Es una idea para poner una presentación del grupo del proyecto como un pop-up en el home de SEDAPAR
</body>
</html>