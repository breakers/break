
<%@page language="java" contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html  lang="es">
<head>
<title>Prueba Coordenas</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta http-equiv="Pragma" content="no-cache" />
<style type="text/css">
	label{
		width: 70px;float:left;
		padding-top: 3px;
	}
</style>
     </head>
     <body onLoad="load();"  onunload="GUnload();">
   
	 
	 	<form id="google" name="google" action="#">
 
		<p><label>Direcci&oacute;n: </label>
		<input style="width:400px" type="text" id="direccion" name="direccion" value=""/>
		<button id="pasar">Obtener coordenadas</button> 
		</p>
		
		 
		<!-- div donde se dibuja el mapa-->
		<div id="map_canvas" style="width:400px;height:300px;"></div>
		 <br>
		<!--campos ocultos donde guardamos los datos-->
		<p><label>Latitud: </label><input type="text" readonly name="lat" id="lat"/></p>
		<p><label> Longitud:</label> <input type="text" readonly name="lng" id="long"/></p>
		</form>
	 
	 	
	 

		<script type="text/javascript" src="http://maps.google.com/maps/api/js?sensor=false"></script> 
		<script type="text/javascript" src="js/jquery.min.js"></script>
<script type="text/javascript">
	var lat = null;
	var lng = null;
	var map = null;
	var geocoder = null;
	var marker = null;
	         
	jQuery(document).ready(function(){
	     lat = jQuery('#lat').val();
	     lng = jQuery('#long').val();
	     jQuery('#pasar').click(function(){
	        codeAddress();
	        return false;
	     });
	    initialize();
	});
	     
	    function initialize() {
	     
	      geocoder = new google.maps.Geocoder();
	        
	       if(lat !='' && lng != '')
	      {
	         var latLng = new google.maps.LatLng(lat,lng);
	      }
	      else
	      {
	         var latLng = new google.maps.LatLng(-16.398763888889, -71.536883333333);
	      }
	       var myOptions = {
	          center: latLng,
	          zoom: 15,
	          mapTypeId: google.maps.MapTypeId.ROADMAP 
	        };
	      
	        map = new google.maps.Map(document.getElementById("map_canvas"), myOptions);
	         
	        
	        marker = new google.maps.Marker({
	            map: map,
	            position: latLng,
	            draggable: true 
	        });
	        
	       
	        updatePosition(latLng);
	         
	         
	    }
	     
	    
	    function codeAddress() {
	         
	        
	        var address = document.getElementById("direccion").value;
	        
	        geocoder.geocode( { 'address': address}, function(results, status) {
	         
	        
	        if (status == google.maps.GeocoderStatus.OK) {
	            
	            map.setCenter(results[0].geometry.location);
	            
	            marker.setPosition(results[0].geometry.location);
	               
	            updatePosition(results[0].geometry.location);
	             
	            
	            google.maps.event.addListener(marker, 'dragend', function(){
	                updatePosition(marker.getPosition());
	            });
	      } else {
	          
	          alert("No podemos encontrar la direcci&oacute;n, error: " + status);
	      }
	    });
	  }
	   
	  
	  function updatePosition(latLng)
	  {
	       
	       jQuery('#lat').val(latLng.lat());
	       jQuery('#long').val(latLng.lng());
	   
	  }
</script>
<script type="text/javascript">

  var _gaq = _gaq || [];
  _gaq.push(['_setAccount', 'UA-1749329-1']);
  _gaq.push(['_trackPageview']);

  (function() {
    var ga = document.createElement('script'); ga.type = 'text/javascript'; ga.async = true;
    ga.src = ('https:' == document.location.protocol ? 'https://ssl' : 'http://www') + '.google-analytics.com/ga.js';
    var s = document.getElementsByTagName('script')[0]; s.parentNode.insertBefore(ga, s);
  })();

</script>
     </body>
     </html>
