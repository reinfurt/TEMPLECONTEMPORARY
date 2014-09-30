
        <div id='bottomrightcorner' class="bottomrightcornerContainer">
                <script type="text/javascript" src="JS/animateCircle.js"></script>
		<div>
			<a href="<?php echo ($pageName == 'project') ? 'index.php' : 'project.php' ?>">
				<img src="MEDIA/logo.gif" style="width:300px;">
                        	<!-- 
				<canvas id="canvas3" width="200" height="200">
				loading...
        	        	</canvas>
				-->
			</a>
		</div>
        </div>

        <div id='bottomleftcorner' class="bottomleftcornerContainer green">
        	<div id='time' class='timeContainer helvetica'>
	        </div>
        </div>

        <script type="text/javascript">

		document.onload = initMessage('guide', 50, true);
	
	</script>
	
	</body>
</html>
