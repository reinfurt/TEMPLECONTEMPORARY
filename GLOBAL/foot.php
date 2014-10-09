
        <div id="logo" class="bottomrightcornerContainer">
		<div>
			<a href="index.php?id=2">
				<img src="MEDIA/logo-red.gif" style="width:300px;">
			</a>
		</div>
        </div>

        <div id='bottomleftcorner' class="bottomleftcornerContainer green">
        	<div id='time' class='timeContainer helvetica'>
	        </div>
        </div>

        <script type="text/javascript">

		<?php
		if ($id == 2) {
		?>

                	var animate = !(checkCookie("animateCookie"));
			setCookie("animateCookie");

		<?php
		} else {
		?>

        	        var animate = true;

		<?php
		}
		?>
		
		delay = 40;
		document.onload = initMessage("source","display",animate,delay); 

	</script>
	
	</body>
</html>
