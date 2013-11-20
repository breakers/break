<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page session="true"%>

<!DOCTYPE html>
<html lang="en">
  
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<%
    			HttpSession sesion=request.getSession();
				String nombre= (String)sesion.getAttribute("NombreCompleto");
				if(nombre==null){
					response.sendRedirect("login.jsp");
				}
    %>
    <title>Icons - SEDAPAR <%=nombre %> </title>
    
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no">
    <meta name="apple-mobile-web-app-capable" content="yes">    
    
    <link href="css/bootstrap.min.css" rel="stylesheet">
    <link href="css/bootstrap-responsive.min.css" rel="stylesheet">
    
    <link href="http://fonts.googleapis.com/css?family=Open+Sans:400italic,600italic,400,600" rel="stylesheet">
    <link href="css/font-awesome.css" rel="stylesheet">
    
    <link href="css/style.css" rel="stylesheet">
   
    
    <link href="css/pages/faq.css" rel="stylesheet"> 

    <!-- Le HTML5 shim, for IE6-8 support of HTML5 elements -->
    <!--[if lt IE 9]>
      <script src="http://html5shim.googlecode.com/svn/trunk/html5.js"></script>
    <![endif]-->
        
  </head>

<body>

<div class="navbar navbar-fixed-top">
	<div class="navbar-inner">
		<div class="container">
			
			<a class="btn btn-navbar" data-toggle="collapse" data-target=".nav-collapse">
				<span class="fa fa-bar"></span>
				<span class="fa fa-bar"></span>
				<span class="fa fa-bar"></span>
			</a>
			
			<a class="brand" href="index.jsp">
				SEDAPAR <%=nombre %> 				
			</a>		
			
			<div class="nav-collapse">
				<ul class="nav pull-right">
					<li class="dropdown">						
						<a href="#" class="dropdown-toggle" data-toggle="dropdown">
							<i class="fa fa-cog"></i>
							Account
							<b class="caret"></b>
						</a>
						
						<ul class="dropdown-menu">
							<li><a href="javascript:;">Settings</a></li>
							<li><a href="javascript:;">Help</a></li>
						</ul>						
					</li>
			
					<li class="dropdown">						
						<a href="#" class="dropdown-toggle" data-toggle="dropdown">
							<i class="fa fa-user"></i> 
							EGrappler.com
							<b class="caret"></b>
						</a>
						
						<ul class="dropdown-menu">
							<li><a href="javascript:;">Profile</a></li>
							<li><a href="cerrarsesion">Logout</a></li>
						</ul>						
					</li>
				</ul>
			
				<form class="navbar-search pull-right">
					<input type="text" class="search-query" placeholder="Search">
				</form>
				
			</div><!--/.nav-collapse -->	
	
		</div> <!-- /container -->
		
	</div> <!-- /navbar-inner -->
	
</div> <!-- /navbar -->
    



    
<div class="subnavbar">

	<div class="subnavbar-inner">
	
		<div class="container">

			<ul class="mainnav">
			
				<li>
					<a href="index.jsp">
						<i class="fa fa-tachometer"></i>
						<span>Dashboard</span>
					</a>	    				
				</li>
				
				
				
				<li>
					<a href="reports.jsp">
						<i class="fa fa-list-alt"></i>
						<span>Reports</span>
					</a>    				
				</li>
				
				<li>					
					<a href="guidely.jsp">
						<i class="fa fa-video-camera"></i>
						<span>App Tour</span>
					</a>  									
				</li>
                
                
                <li>					
					<a href="charts.jsp">
						<i class="fa fa-bar-chart-o"></i>
						<span>Charts</span>
					</a>  									
				</li>
                
                
                <li>					
					<a href="shortcodes.jsp">
						<i class="fa fa-code"></i>
						<span>Shortcodes</span>
					</a>  									
				</li>
				
				<li class="active dropdown">					
					<a href="javascript:;" class="dropdown-toggle" data-toggle="dropdown">
						<i class="fa fa-long-arrow-down"></i>
						<span>Drops</span>
						<b class="caret"></b>
					</a>	
				
					<ul class="dropdown-menu">
                        <li><a href="icons.jsp">Icons</a></li>
						<li><a href="faq.jsp">FAQ</a></li>
                        <li><a href="pricing.jsp">Pricing Plans</a></li>
                        <li><a href="login.jsp">Login</a></li>
						<li><a href="signup.jsp">Signup</a></li>
						<li><a href="error.jsp">404</a></li>
                    </ul>    				
				</li>
			
			</ul>

		</div> <!-- /container -->
	
	</div> <!-- /subnavbar-inner -->

</div> <!-- /subnavbar -->
    
    
<div class="main">
	
	<div class="main-inner">

	    <div class="container">
	<div class="row all-icons">
    
    <div class="widget">
                            <div class="widget-header">
                                <i class="fa fa-bar-chart-o"></i>
                                <h3>
                                    Icons</h3>
                            </div>
                            <!-- /widget-header -->
                            <div class="widget-content">
                            
                              <div class="span3 ML0">
          <ul>
            
                <li style="line-height: 32px;"><i class="fa-lg fa fa-glass
"></i> fa fa-glass
</li>
            
                <li style="line-height: 32px;"><i class="fa-lg fa fa-music
"></i> fa fa-music
</li>
            
                <li style="line-height: 32px;"><i class="fa-lg fa fa-search
"></i> fa fa-search
</li>
            
                <li style="line-height: 32px;"><i class="fa-lg fa fa-envelope
"></i> fa fa-envelope
</li>
            
                <li style="line-height: 32px;"><i class="fa-lg fa fa-heart
"></i> fa fa-heart
</li>
            
                <li style="line-height: 32px;"><i class="fa-lg fa fa-star
"></i> fa fa-star
</li>
            
                <li style="line-height: 32px;"><i class="fa-lg fa fa-star-empty
"></i> fa fa-star-empty
</li>
            
                <li style="line-height: 32px;"><i class="fa-lg fa fa-user
"></i> fa fa-user
</li>
            
                <li style="line-height: 32px;"><i class="fa-lg fa fa-film
"></i> fa fa-film
</li>
            
                <li style="line-height: 32px;"><i class="fa-lg fa fa-th-large
"></i> fa fa-th-large
</li>
            
                <li style="line-height: 32px;"><i class="fa-lg fa fa-th
"></i> fa fa-th
</li>
            
                <li style="line-height: 32px;"><i class="fa-lg fa fa-th-list
"></i> fa fa-th-list
</li>
            
                <li style="line-height: 32px;"><i class="fa-lg fa fa-ok
"></i> fa fa-ok
</li>
            
                <li style="line-height: 32px;"><i class="fa-lg fa fa-remove
"></i> fa fa-remove
</li>
            
                <li style="line-height: 32px;"><i class="fa-lg fa fa-zoom-in
"></i> fa fa-zoom-in
</li>
            
                <li style="line-height: 32px;"><i class="fa-lg fa fa-zoom-out
"></i> fa fa-zoom-out
</li>
            
                <li style="line-height: 32px;"><i class="fa-lg fa fa-off
"></i> fa fa-off
</li>
            
                <li style="line-height: 32px;"><i class="fa-lg fa fa-signal
"></i> fa fa-signal
</li>
            
                <li style="line-height: 32px;"><i class="fa-lg fa fa-cog
"></i> fa fa-cog
</li>
            
                <li style="line-height: 32px;"><i class="fa-lg fa fa-trash
"></i> fa fa-trash
</li>
            
                <li style="line-height: 32px;"><i class="fa-lg fa fa-home
"></i> fa fa-home
</li>
            
                <li style="line-height: 32px;"><i class="fa-lg fa fa-file
"></i> fa fa-file
</li>
            
                <li style="line-height: 32px;"><i class="fa-lg fa fa-time
"></i> fa fa-time
</li>
            
                <li style="line-height: 32px;"><i class="fa-lg fa fa-road
"></i> fa fa-road
</li>
            
                <li style="line-height: 32px;"><i class="fa-lg fa fa-download-alt
"></i> fa fa-download-alt
</li>
            
                <li style="line-height: 32px;"><i class="fa-lg fa fa-download
"></i> fa fa-download
</li>
            
                <li style="line-height: 32px;"><i class="fa-lg fa fa-upload
"></i> fa fa-upload
</li>
            
                <li style="line-height: 32px;"><i class="fa-lg fa fa-inbox
"></i> fa fa-inbox
</li>
            
                <li style="line-height: 32px;"><i class="fa-lg fa fa-play-circle
"></i> fa fa-play-circle
</li>
            
                <li style="line-height: 32px;"><i class="fa-lg fa fa-repeat
"></i> fa fa-repeat
</li>
            
                <li style="line-height: 32px;"><i class="fa-lg fa fa-refresh
"></i> fa fa-refresh
</li>
            
                <li style="line-height: 32px;"><i class="fa-lg fa fa-list-alt
"></i> fa fa-list-alt
</li>
            
                <li style="line-height: 32px;"><i class="fa-lg fa fa-lock
"></i> fa fa-lock
</li>
            
                <li style="line-height: 32px;"><i class="fa-lg fa fa-flag
"></i> fa fa-flag
</li>
            
                <li style="line-height: 32px;"><i class="fa-lg fa fa-headphones
"></i> fa fa-headphones
</li>
            
                <li style="line-height: 32px;"><i class="fa-lg fa fa-volume-off
"></i> fa fa-volume-off
</li>
            
                <li style="line-height: 32px;"><i class="fa-lg fa fa-volume-down
"></i> fa fa-volume-down
</li>
            
                <li style="line-height: 32px;"><i class="fa-lg fa fa-volume-up
"></i> fa fa-volume-up
</li>
            
                <li style="line-height: 32px;"><i class="fa-lg fa fa-qrcode
"></i> fa fa-qrcode
</li>
            
                <li style="line-height: 32px;"><i class="fa-lg fa fa-barcode
"></i> fa fa-barcode
</li>
            
                <li style="line-height: 32px;"><i class="fa-lg fa fa-tag
"></i> fa fa-tag
</li>
            
                <li style="line-height: 32px;"><i class="fa-lg fa fa-tags
"></i> fa fa-tags
</li>
            
                <li style="line-height: 32px;"><i class="fa-lg fa fa-book
"></i> fa fa-book
</li>
            
                <li style="line-height: 32px;"><i class="fa-lg fa fa-bookmark
"></i> fa fa-bookmark
</li>
            
                <li style="line-height: 32px;"><i class="fa-lg fa fa-print
"></i> fa fa-print
</li>
            
                <li style="line-height: 32px;"><i class="fa-lg fa fa-camera
"></i> fa fa-camera
</li>
            
                <li style="line-height: 32px;"><i class="fa-lg fa fa-font
"></i> fa fa-font
</li>
            
                <li style="line-height: 32px;"><i class="fa-lg fa fa-bold
"></i> fa fa-bold
</li>
            
                <li style="line-height: 32px;"><i class="fa-lg fa fa-italic
"></i> fa fa-italic
</li>
            
                <li style="line-height: 32px;"><i class="fa-lg fa fa-text-height
"></i> fa fa-text-height
</li>
            
                <li style="line-height: 32px;"><i class="fa-lg fa fa-text-width
"></i> fa fa-text-width
</li>
            
                <li style="line-height: 32px;"><i class="fa-lg fa fa-align-left
"></i> fa fa-align-left
</li>
            
                <li style="line-height: 32px;"><i class="fa-lg fa fa-align-center
"></i> fa fa-align-center
</li>
            
                <li style="line-height: 32px;"><i class="fa-lg fa fa-align-right
"></i> fa fa-align-right
</li>
            
                <li style="line-height: 32px;"><i class="fa-lg fa fa-align-justify
"></i> fa fa-align-justify
</li>
            
          </ul>
        </div>
    
        <div class="span3 ML0">
          <ul>
            
                <li style="line-height: 32px;"><i class="fa-lg fa fa-list
"></i> fa fa-list
</li>
            
                <li style="line-height: 32px;"><i class="fa-lg fa fa-outdent
"></i> fa fa-outdent
</li>
            
                <li style="line-height: 32px;"><i class="fa-lg fa fa-indent
"></i> fa fa-indent
</li>
            
                <li style="line-height: 32px;"><i class="fa-lg fa fa-video-camera
"></i> fa fa-video-camera
</li>
            
                <li style="line-height: 32px;"><i class="fa-lg fa fa-picture
"></i> fa fa-picture
</li>
            
                <li style="line-height: 32px;"><i class="fa-lg fa fa-pencil
"></i> fa fa-pencil
</li>
            
                <li style="line-height: 32px;"><i class="fa-lg fa fa-map-marker
"></i> fa fa-map-marker
</li>
            
                <li style="line-height: 32px;"><i class="fa-lg fa fa-adjust
"></i> fa fa-adjust
</li>
            
                <li style="line-height: 32px;"><i class="fa-lg fa fa-tint
"></i> fa fa-tint
</li>
            
                <li style="line-height: 32px;"><i class="fa-lg fa fa-pencil-square-o
"></i> fa fa-pencil-square-o
</li>
            
                <li style="line-height: 32px;"><i class="fa-lg fa fa-share
"></i> fa fa-share
</li>
            
                <li style="line-height: 32px;"><i class="fa-lg fa fa-check-square-o
"></i> fa fa-check-square-o
</li>
            
                <li style="line-height: 32px;"><i class="fa-lg fa fa-move
"></i> fa fa-move
</li>
            
                <li style="line-height: 32px;"><i class="fa-lg fa fa-step-backward
"></i> fa fa-step-backward
</li>
            
                <li style="line-height: 32px;"><i class="fa-lg fa fa-fast-backward
"></i> fa fa-fast-backward
</li>
            
                <li style="line-height: 32px;"><i class="fa-lg fa fa-backward
"></i> fa fa-backward
</li>
            
                <li style="line-height: 32px;"><i class="fa-lg fa fa-play
"></i> fa fa-play
</li>
            
                <li style="line-height: 32px;"><i class="fa-lg fa fa-pause
"></i> fa fa-pause
</li>
            
                <li style="line-height: 32px;"><i class="fa-lg fa fa-stop
"></i> fa fa-stop
</li>
            
                <li style="line-height: 32px;"><i class="fa-lg fa fa-forward
"></i> fa fa-forward
</li>
            
                <li style="line-height: 32px;"><i class="fa-lg fa fa-fast-forward
"></i> fa fa-fast-forward
</li>
            
                <li style="line-height: 32px;"><i class="fa-lg fa fa-step-forward
"></i> fa fa-step-forward
</li>
            
                <li style="line-height: 32px;"><i class="fa-lg fa fa-eject
"></i> fa fa-eject
</li>
            
                <li style="line-height: 32px;"><i class="fa-lg fa fa-chevron-left
"></i> fa fa-chevron-left
</li>
            
                <li style="line-height: 32px;"><i class="fa-lg fa fa-chevron-right
"></i> fa fa-chevron-right
</li>
            
                <li style="line-height: 32px;"><i class="fa-lg fa fa-plus-sign
"></i> fa fa-plus-sign
</li>
            
                <li style="line-height: 32px;"><i class="fa-lg fa fa-minus-sign
"></i> fa fa-minus-sign
</li>
            
                <li style="line-height: 32px;"><i class="fa-lg fa fa-remove-sign
"></i> fa fa-remove-sign
</li>
            
                <li style="line-height: 32px;"><i class="fa-lg fa fa-ok-sign
"></i> fa fa-ok-sign
</li>
            
                <li style="line-height: 32px;"><i class="fa-lg fa fa-question-sign
"></i> fa fa-question-sign
</li>
            
                <li style="line-height: 32px;"><i class="fa-lg fa fa-info-circle
"></i> fa fa-info-circle
</li>
            
                <li style="line-height: 32px;"><i class="fa-lg fa fa-screenshot
"></i> fa fa-screenshot
</li>
            
                <li style="line-height: 32px;"><i class="fa-lg fa fa-remove-circle
"></i> fa fa-remove-circle
</li>
            
                <li style="line-height: 32px;"><i class="fa-lg fa fa-ok-circle
"></i> fa fa-ok-circle
</li>
            
                <li style="line-height: 32px;"><i class="fa-lg fa fa-ban
"></i> fa fa-ban
</li>
            
                <li style="line-height: 32px;"><i class="fa-lg fa fa-arrow-left
"></i> fa fa-arrow-left
</li>
            
                <li style="line-height: 32px;"><i class="fa-lg fa fa-arrow-right
"></i> fa fa-arrow-right
</li>
            
                <li style="line-height: 32px;"><i class="fa-lg fa fa-arrow-up
"></i> fa fa-arrow-up
</li>
            
                <li style="line-height: 32px;"><i class="fa-lg fa fa-arrow-down
"></i> fa fa-arrow-down
</li>
            
                <li style="line-height: 32px;"><i class="fa-lg fa fa-share-alt
"></i> fa fa-share-alt
</li>
            
                <li style="line-height: 32px;"><i class="fa-lg fa fa-resize-full
"></i> fa fa-resize-full
</li>
            
                <li style="line-height: 32px;"><i class="fa-lg fa fa-resize-small
"></i> fa fa-resize-small
</li>
            
                <li style="line-height: 32px;"><i class="fa-lg fa fa-plus
"></i> fa fa-plus
</li>
            
                <li style="line-height: 32px;"><i class="fa-lg fa fa-minus
"></i> fa fa-minus
</li>
            
                <li style="line-height: 32px;"><i class="fa-lg fa fa-asterisk
"></i> fa fa-asterisk
</li>
            
                <li style="line-height: 32px;"><i class="fa-lg fa fa-exclamation-circle
"></i> fa fa-exclamation-circle
</li>
            
                <li style="line-height: 32px;"><i class="fa-lg fa fa-gift
"></i> fa fa-gift
</li>
            
                <li style="line-height: 32px;"><i class="fa-lg fa fa-leaf
"></i> fa fa-leaf
</li>
            
                <li style="line-height: 32px;"><i class="fa-lg fa fa-fire
"></i> fa fa-fire
</li>
            
                <li style="line-height: 32px;"><i class="fa-lg fa fa-eye
"></i> fa fa-eye
</li>
            
                <li style="line-height: 32px;"><i class="fa-lg fa fa-eye-slash
"></i> fa fa-eye-slash
</li>
            
                <li style="line-height: 32px;"><i class="fa-lg fa fa-warning-sign
"></i> fa fa-warning-sign
</li>
            
                <li style="line-height: 32px;"><i class="fa-lg fa fa-plane
"></i> fa fa-plane
</li>
            
                <li style="line-height: 32px;"><i class="fa-lg fa fa-calendar
"></i> fa fa-calendar
</li>
            
                <li style="line-height: 32px;"><i class="fa-lg fa fa-random
"></i> fa fa-random
</li>
            
          </ul>
        </div>
    
        <div class="span3">
          <ul>
            
                <li style="line-height: 32px;"><i class="fa-lg fa fa-comment
"></i> fa fa-comment
</li>
            
                <li style="line-height: 32px;"><i class="fa-lg fa fa-magnet
"></i> fa fa-magnet
</li>
            
                <li style="line-height: 32px;"><i class="fa-lg fa fa-chevron-up
"></i> fa fa-chevron-up
</li>
            
                <li style="line-height: 32px;"><i class="fa-lg fa fa-chevron-down
"></i> fa fa-chevron-down
</li>
            
                <li style="line-height: 32px;"><i class="fa-lg fa fa-retweet
"></i> fa fa-retweet
</li>
            
                <li style="line-height: 32px;"><i class="fa-lg fa fa-shopping-cart
"></i> fa fa-shopping-cart
</li>
            
                <li style="line-height: 32px;"><i class="fa-lg fa fa-folder
"></i> fa fa-folder
</li>
            
                <li style="line-height: 32px;"><i class="fa-lg fa fa-folder-open
"></i> fa fa-folder-open
</li>
            
                <li style="line-height: 32px;"><i class="fa-lg fa fa-resize-vertical
"></i> fa fa-resize-vertical
</li>
            
                <li style="line-height: 32px;"><i class="fa-lg fa fa-resize-horizontal
"></i> fa fa-resize-horizontal
</li>
            
                <li style="line-height: 32px;"><i class="fa-lg fa fa-bar-chart-o
"></i> fa fa-bar-chart-o
</li>
            
                <li style="line-height: 32px;"><i class="fa-lg fa fa-twitter-sign
"></i> fa fa-twitter-sign
</li>
            
                <li style="line-height: 32px;"><i class="fa-lg fa fa-facebook-square
"></i> fa fa-facebook-square
</li>
            
                <li style="line-height: 32px;"><i class="fa-lg fa fa-camera-retro
"></i> fa fa-camera-retro
</li>
            
                <li style="line-height: 32px;"><i class="fa-lg fa fa-key
"></i> fa fa-key
</li>
            
                <li style="line-height: 32px;"><i class="fa-lg fa fa-cogs
"></i> fa fa-cogs
</li>
            
                <li style="line-height: 32px;"><i class="fa-lg fa fa-comments
"></i> fa fa-comments
</li>
            
                <li style="line-height: 32px;"><i class="fa-lg fa fa-thumbs-up
"></i> fa fa-thumbs-up
</li>
            
                <li style="line-height: 32px;"><i class="fa-lg fa fa-thumbs-down
"></i> fa fa-thumbs-down
</li>
            
                <li style="line-height: 32px;"><i class="fa-lg fa fa-star-half
"></i> fa fa-star-half
</li>
            
                <li style="line-height: 32px;"><i class="fa-lg fa fa-heart-o
"></i> fa fa-heart-o
</li>
            
                <li style="line-height: 32px;"><i class="fa-lg fa fa-signout
"></i> fa fa-signout
</li>
            
                <li style="line-height: 32px;"><i class="fa-lg fa fa-linkedin-sign
"></i> fa fa-linkedin-sign
</li>
            
                <li style="line-height: 32px;"><i class="fa-lg fa fa-pushpin
"></i> fa fa-pushpin
</li>
            
                <li style="line-height: 32px;"><i class="fa-lg fa fa-external-link
"></i> fa fa-external-link
</li>
            
                <li style="line-height: 32px;"><i class="fa-lg fa fa-signin
"></i> fa fa-signin
</li>
            
                <li style="line-height: 32px;"><i class="fa-lg fa fa-trophy
"></i> fa fa-trophy
</li>
            
                <li style="line-height: 32px;"><i class="fa-lg fa fa-github-square
"></i> fa fa-github-square
</li>
            
                <li style="line-height: 32px;"><i class="fa-lg fa fa-upload-alt
"></i> fa fa-upload-alt
</li>
            
                <li style="line-height: 32px;"><i class="fa-lg fa fa-lemon-o
"></i> fa fa-lemon-o
</li>
            
                <li style="line-height: 32px;"><i class="fa-lg fa fa-phone
"></i> fa fa-phone
</li>
            
                <li style="line-height: 32px;"><i class="fa-lg fa fa-square-o
"></i> fa fa-square-o
</li>
            
                <li style="line-height: 32px;"><i class="fa-lg fa fa-bookmark-empty
"></i> fa fa-bookmark-empty
</li>
            
                <li style="line-height: 32px;"><i class="fa-lg fa fa-phone-sign
"></i> fa fa-phone-sign
</li>
            
                <li style="line-height: 32px;"><i class="fa-lg fa fa-twitter
"></i> fa fa-twitter
</li>
            
                <li style="line-height: 32px;"><i class="fa-lg fa fa-facebook
"></i> fa fa-facebook
</li>
            
                <li style="line-height: 32px;"><i class="fa-lg fa fa-github
"></i> fa fa-github
</li>
            
                <li style="line-height: 32px;"><i class="fa-lg fa fa-unlock
"></i> fa fa-unlock
</li>
            
                <li style="line-height: 32px;"><i class="fa-lg fa fa-credit-card
"></i> fa fa-credit-card
</li>
            
                <li style="line-height: 32px;"><i class="fa-lg fa fa-rss
"></i> fa fa-rss
</li>
            
                <li style="line-height: 32px;"><i class="fa-lg fa fa-hdd-o
"></i> fa fa-hdd-o
</li>
            
                <li style="line-height: 32px;"><i class="fa-lg fa fa-bullhorn
"></i> fa fa-bullhorn
</li>
            
                <li style="line-height: 32px;"><i class="fa-lg fa fa-bell
"></i> fa fa-bell
</li>
            
                <li style="line-height: 32px;"><i class="fa-lg fa fa-certificate
"></i> fa fa-certificate
</li>
            
                <li style="line-height: 32px;"><i class="fa-lg fa fa-hand-o-right
"></i> fa fa-hand-o-right
</li>
            
                <li style="line-height: 32px;"><i class="fa-lg fa fa-hand-o-left
"></i> fa fa-hand-o-left
</li>
            
                <li style="line-height: 32px;"><i class="fa-lg fa fa-hand-o-up
"></i> fa fa-hand-o-up
</li>
            
                <li style="line-height: 32px;"><i class="fa-lg fa fa-hand-o-down
"></i> fa fa-hand-o-down
</li>
            
                <li style="line-height: 32px;"><i class="fa-lg fa fa-arrow-circle-left
"></i> fa fa-arrow-circle-left
</li>
            
                <li style="line-height: 32px;"><i class="fa-lg fa fa-arrow-circle-right
"></i> fa fa-arrow-circle-right
</li>
            
                <li style="line-height: 32px;"><i class="fa-lg fa fa-arrow-circle-up
"></i> fa fa-arrow-circle-up
</li>
            
                <li style="line-height: 32px;"><i class="fa-lg fa fa-arrow-circle-down
"></i> fa fa-arrow-circle-down
</li>
            
                <li style="line-height: 32px;"><i class="fa-lg fa fa-globe
"></i> fa fa-globe
</li>
            
                <li style="line-height: 32px;"><i class="fa-lg fa fa-wrench
"></i> fa fa-wrench
</li>
            
                <li style="line-height: 32px;"><i class="fa-lg fa fa-tasks
"></i> fa fa-tasks
</li>
            
          </ul>
        </div>
    
        <div class="span3 MR0">
          <ul>
            
                <li style="line-height: 32px;"><i class="fa-lg fa fa-filter
"></i> fa fa-filter
</li>
            
                <li style="line-height: 32px;"><i class="fa-lg fa fa-briefcase
"></i> fa fa-briefcase
</li>
            
                <li style="line-height: 32px;"><i class="fa-lg fa fa-arrows-alt
"></i> fa fa-arrows-alt
</li>
            
                <li style="line-height: 32px;"><i class="fa-lg fa fa-users
"></i> fa fa-users
</li>
            
                <li style="line-height: 32px;"><i class="fa-lg fa fa-link
"></i> fa fa-link
</li>
            
                <li style="line-height: 32px;"><i class="fa-lg fa fa-cloud
"></i> fa fa-cloud
</li>
            
                <li style="line-height: 32px;"><i class="fa-lg fa fa-flask
"></i> fa fa-flask
</li>
            
                <li style="line-height: 32px;"><i class="fa-lg fa fa-scissors
"></i> fa fa-scissors
</li>
            
                <li style="line-height: 32px;"><i class="fa-lg fa fa-files-o
"></i> fa fa-files-o
</li>
            
                <li style="line-height: 32px;"><i class="fa-lg fa fa-paper-clip
"></i> fa fa-paper-clip
</li>
            
                <li style="line-height: 32px;"><i class="fa-lg fa fa-save
"></i> fa fa-save
</li>
            
                <li style="line-height: 32px;"><i class="fa-lg fa fa-sign-blank
"></i> fa fa-sign-blank
</li>
            
                <li style="line-height: 32px;"><i class="fa-lg fa fa-reorder
"></i> fa fa-reorder
</li>
            
                <li style="line-height: 32px;"><i class="fa-lg fa fa-list-ul
"></i> fa fa-list-ul
</li>
            
                <li style="line-height: 32px;"><i class="fa-lg fa fa-list-ol
"></i> fa fa-list-ol
</li>
            
                <li style="line-height: 32px;"><i class="fa-lg fa fa-strikethrough
"></i> fa fa-strikethrough
</li>
            
                <li style="line-height: 32px;"><i class="fa-lg fa fa-underline
"></i> fa fa-underline
</li>
            
                <li style="line-height: 32px;"><i class="fa-lg fa fa-table
"></i> fa fa-table
</li>
            
                <li style="line-height: 32px;"><i class="fa-lg fa fa-magic
"></i> fa fa-magic
</li>
            
                <li style="line-height: 32px;"><i class="fa-lg fa fa-truck
"></i> fa fa-truck
</li>
            
                <li style="line-height: 32px;"><i class="fa-lg fa fa-pinterest
"></i> fa fa-pinterest
</li>
            
                <li style="line-height: 32px;"><i class="fa-lg fa fa-pinterest-sign
"></i> fa fa-pinterest-sign
</li>
            
                <li style="line-height: 32px;"><i class="fa-lg fa fa-google-plus-square
"></i> fa fa-google-plus-square
</li>
            
                <li style="line-height: 32px;"><i class="fa-lg fa fa-google-plus
"></i> fa fa-google-plus
</li>
            
                <li style="line-height: 32px;"><i class="fa-lg fa fa-money
"></i> fa fa-money
</li>
            
                <li style="line-height: 32px;"><i class="fa-lg fa fa-caret-down
"></i> fa fa-caret-down
</li>
            
                <li style="line-height: 32px;"><i class="fa-lg fa fa-caret-up
"></i> fa fa-caret-up
</li>
            
                <li style="line-height: 32px;"><i class="fa-lg fa fa-caret-left
"></i> fa fa-caret-left
</li>
            
                <li style="line-height: 32px;"><i class="fa-lg fa fa-caret-right
"></i> fa fa-caret-right
</li>
            
                <li style="line-height: 32px;"><i class="fa-lg fa fa-columns
"></i> fa fa-columns
</li>
            
                <li style="line-height: 32px;"><i class="fa-lg fa fa-sort
"></i> fa fa-sort
</li>
            
                <li style="line-height: 32px;"><i class="fa-lg fa fa-sort-down
"></i> fa fa-sort-down
</li>
            
                <li style="line-height: 32px;"><i class="fa-lg fa fa-sort-up
"></i> fa fa-sort-up
</li>
            
                <li style="line-height: 32px;"><i class="fa-lg fa fa-envelope-o
"></i> fa fa-envelope-o
</li>
            
                <li style="line-height: 32px;"><i class="fa-lg fa fa-linkedin
"></i> fa fa-linkedin
</li>
            
                <li style="line-height: 32px;"><i class="fa-lg fa fa-undo
"></i> fa fa-undo
</li>
            
                <li style="line-height: 32px;"><i class="fa-lg fa fa-gavel
"></i> fa fa-gavel
</li>
            
                <li style="line-height: 32px;"><i class="fa-lg fa fa-tachometer
"></i> fa fa-tachometer
</li>
            
                <li style="line-height: 32px;"><i class="fa-lg fa fa-comment-o
"></i> fa fa-comment-o
</li>
            
                <li style="line-height: 32px;"><i class="fa-lg fa fa-comments-o
"></i> fa fa-comments-o
</li>
            
                <li style="line-height: 32px;"><i class="fa-lg fa fa-bolt
"></i> fa fa-bolt
</li>
            
                <li style="line-height: 32px;"><i class="fa-lg fa fa-sitemap
"></i> fa fa-sitemap
</li>
            
                <li style="line-height: 32px;"><i class="fa-lg fa fa-umbrella
"></i> fa fa-umbrella
</li>
            
                <li style="line-height: 32px;"><i class="fa-lg fa fa-paste
"></i> fa fa-paste
</li>
            
                <li style="line-height: 32px;"><i class="fa-lg fa fa-user-md
"></i> fa fa-user-md
</li>
            
          </ul>
        </div>
        
                            </div>
    </div>
      
    
  </div> <!-- /row -->
	
	    </div> <!-- /container -->
    
	</div> <!-- /main-inner -->
	    
</div> <!-- /main -->
    


<div class="extra">

	<div class="extra-inner">

		<div class="container">

			<div class="row">
                    <div class="span3">
                        <h4>
                            About Free Admin Template</h4>
                        <ul>
                            <li><a href="javascript:;">EGrappler.com</a></li>
                            <li><a href="javascript:;">Web Development Resources</a></li>
                            <li><a href="javascript:;">Responsive HTML5 Portfolio Templates</a></li>
                            <li><a href="javascript:;">Free Resources and Scripts</a></li>
                        </ul>
                    </div>
                    <!-- /span3 -->
                    <div class="span3">
                        <h4>
                            Support</h4>
                        <ul>
                            <li><a href="javascript:;">Frequently Asked Questions</a></li>
                            <li><a href="javascript:;">Ask a Question</a></li>
                            <li><a href="javascript:;">Video Tutorial</a></li>
                            <li><a href="javascript:;">Feedback</a></li>
                        </ul>
                    </div>
                    <!-- /span3 -->
                    <div class="span3">
                        <h4>
                            Something Legal</h4>
                        <ul>
                            <li><a href="javascript:;">Read License</a></li>
                            <li><a href="javascript:;">Terms of Use</a></li>
                            <li><a href="javascript:;">Privacy Policy</a></li>
                        </ul>
                    </div>
                    <!-- /span3 -->
                    <div class="span3">
                        <h4>
                            Open Source jQuery Plugins</h4>
                        <ul>
                            <li><a href="http://www.egrappler.com">Open Source jQuery Plugins</a></li>
                            <li><a href="http://www.egrappler.com;">HTML5 Responsive Tempaltes</a></li>
                            <li><a href="http://www.egrappler.com;">Free Contact Form Plugin</a></li>
                            <li><a href="http://www.egrappler.com;">Flat UI PSD</a></li>
                        </ul>
                    </div>
                    <!-- /span3 -->
                </div> <!-- /row -->

		</div> <!-- /container -->

	</div> <!-- /extra-inner -->

</div> <!-- /extra -->


    
    
<div class="footer">
	
	<div class="footer-inner">
		
		<div class="container">
			
			<div class="row">
				
    			<div class="span12">
    				&copy; 2013 <a href="http://www.egrappler.com/">Bootstrap Responsive Admin Template</a>.
    			</div> <!-- /span12 -->
    			
    		</div> <!-- /row -->
    		
		</div> <!-- /container -->
		
	</div> <!-- /footer-inner -->
	
</div> <!-- /footer -->
    

<!-- Le javascript
================================================== -->
<!-- Placed at the end of the document so the pages load faster -->
<script src="js/jquery-1.7.2.min.js"></script>

<script src="js/bootstrap.js"></script>
<script src="js/base.js"></script>
<script src="js/faq.js"></script>

<script>

$(function () {
	
	$('.faq-list').goFaq ();

});

</script>
  </body>

</html>
