 <!DOCTYPE>
 <html>
 <head>
<script>var __adobewebfontsappname__ = "code"</script>
<script src="http://use.edgefonts.net/actor:n4:all;league-gothic:n4:all.js"></script>
	<!-- MetaShit -->
	<meta charset="UTF-8">
	<meta name="description" content="Postal Code Information">
	<meta name="keywords" content="Restaurants, Schools, Geography, Events, Geocaching">
	<meta name="author" content="Marley Robinson">
	<meta name="language" content="english">
	<meta name="robots" content="index, follow">
	
	<!-- Links -->
	<script></script>
	<link rel="stylesheet" type="text/css" href=<g:resource dir="stylesheets" file="outputstylesheet.css"/>>
	
	<!-- Else -->
	<title>Output Page</title>
 
     <script type="text/javascript" src="http://code.jquery.com/jquery-1.7.2.js"></script>
	<script>
	$(document).ready(function() {
		$('.nav-tabs > li > a').click(function(event){
		event.preventDefault();//stop browser to take action for clicked anchor
 
		//get displaying tab content jQuery selector
		var active_tab_selector = $('.nav-tabs > li.active > a').attr('href');					
 
		//find actived navigation and remove 'active' css
		var actived_nav = $('.nav-tabs > li.active');
		actived_nav.removeClass('active');
 
		//add 'active' css into clicked navigation
		$(this).parents('li').addClass('active');
 
		//hide displaying tab content
		$(active_tab_selector).removeClass('active');
		$(active_tab_selector).addClass('hide');
 
		//show target tab content
		var target_tab_selector = $(this).attr('href');
		$(target_tab_selector).removeClass('hide');
		$(target_tab_selector).addClass('active');
	     });
	  });
	</script>
		<style>
			/** Start: to style navigation tab **/
			.nav {
			  margin-bottom: 18px;
			  margin-left: 0;
			  list-style: none;
			}
 
			.nav > li > a {
			  display: block;
			}
 
			.nav-tabs{
			  *zoom: 1;
			}
 
			.nav-tabs:before,
			.nav-tabs:after {
			  display: table;
			  content: "";
			}
 
			.nav-tabs:after {
			  clear: both;
			}
 
			.nav-tabs > li {
			  float: left;
			}
 
			.nav-tabs > li > a {
			  padding-right: 12px;
			  padding-left: 12px;
			  margin-right: 2px;
			  line-height: 14px;
			}
 
			.nav-tabs {
			  border-bottom: 1px solid #ddd;
			}
 
			.nav-tabs > li {
			  margin-bottom: -1px;
			}
 
			.nav-tabs > li > a {
			  padding-top: 8px;
			  padding-bottom: 8px;
			  line-height: 18px;
			  border: 1px solid transparent;
			  -webkit-border-radius: 4px 4px 0 0;
				 -moz-border-radius: 4px 4px 0 0;
					  border-radius: 4px 4px 0 0;
			}
 
			.nav-tabs > li > a:hover {
			  border-color: #eeeeee #eeeeee #dddddd;
			}
 
			.nav-tabs > .active > a,
			.nav-tabs > .active > a:hover {
			  color: #555555;
			  cursor: default;
			  background-color: #ffffff;
			  border: 1px solid #ddd;
			  border-bottom-color: transparent;
			}
 
			li {
			  line-height: 18px;
			}
 
			.tab-content.active{
				display: block;
			}
 
			.tab-content.hide{
				display: none;
			}
 
 
			/** End: to style navigation tab **/
		</style>
     
 </head>
 <body>
    <div id="content">
    
        <div class="knl">
            <a href="http://livesnotknives.org/"><img src=<g:resource dir="images" file="lives-not-knives.png"/> alt="knl" class="knl"></a>
        </div>

    <div class="ico">
        <a href="http://festivalofco.de/"><img src=<g:resource dir="images" file="small_yrs2.gif"/> alt="yrs" class="yrs"></a>
    </div>
        
    <div id="head">
        <div class="log">
            <br>
            <img src=<g:resource dir="images" file="Know_Your_Place_Logov6.png"/> alt="logo" class="logo">
            <br>
        </div>
    
    </div>
        
    <div id="stuff">
 
 
        <div id="blocki">
            <form name="input" action="show" method="get">
                <div id="pos">
                     Enter your postcode

                </div>
                <div id="search">
                    <input type="text" style="color: black;" name="postcode" placeholder="Postcode" class="posti">
                    <br>
                    <input type="submit" value="Submit" class="sub">
                </div>
            </form>
        </div>
        
        <div>
			<ul class="nav nav-tabs">
				<li class="active">
					<a href="#tab1">Postcode Info</a>
				</li>
				<li>
					<a href="#tab2">Geocaching</a>
				</li>
				<li>
					<a href="#tab3">Schools</a>
				</li>
                <li>
					<a href="#tab4">Food</a>
				</li>
                <li>
					<a href="#tab5">Events/Points of interest</a>
				</li>
                <li>
					<a href="#tab6">Crime</a>
				</li>
			</ul>	
		</div>
		<section id="tab1" class="tab-content active">
			<div>
				<div id="inf">
            <!-- PostCode Info -->
            <iframe src="${urls.codes}" id="infi"></iframe>
        </div>
			</div>
		</section>
		<section id="tab2" class="tab-content hide">
			<div>
				<div id="geo">
            <!-- GeoCaching -->
            <iframe src="${urls.geocaches}"></iframe>
        </div>
			</div>
		</section>
		<section id="tab3" class="tab-content hide">
			<div>
				<div id="Sch">
            <!-- Schools -->
            <iframe src="${urls.schools}"></iframe>
        </div>
			</div>
		</section>
        <section id="tab4" class="tab-content hide">
			<div>
            <div id="res">
            <!-- Restaurants -->
            <iframe src="${urls.restaurants}"></iframe>
        </div>
			</div>
		</section>
         <section id="tab5" class="tab-content hide">
			<div>
			   <div id="ev">
            <!-- Events -->
            <iframe src="https://www.eventbrite.co.uk/directory?q=${urls.postcode}&loc=United+Kingdom"></iframe>
        </div>
			</div>
		</section>
        <section id="tab6" class="tab-content hide">
			<div>
            <div id="cri">
            <!-- Crime -->
            <iframe src="${urls.crimes}"></iframe>
        </div>
			</div>
		</section>
        
       

    </div>
        </div>
    </body>
</html>
