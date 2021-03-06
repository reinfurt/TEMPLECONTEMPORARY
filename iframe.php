<?php 
	require_once("_Library/systemDatabase.php"); 
	require_once("_Library/systemCookie.php");
	require_once("_Library/displayNavigation.php"); 
	require_once("_Library/displayMedia.php"); 

	// Parse $id

	$id = $_REQUEST['id'];		// no register globals	
	if (!$id) $id = "0";
	$ids = explode(",", $id);
	$idFull = $id;
	$id = $ids[count($ids) - 1];
	$pageName = basename($_SERVER['PHP_SELF'], ".php");
	
	// Live?
	
	// $live is stored in database and turns on site
	// $dev is passed in query and stored in cookie

	// $dev = $_REQUEST['dev'];
	// $dev = systemCookie("devCookie", $dev, 0);
	// if (!$dev) die('Under construction . . .');
	
	// Alt for dev options
	
	$alt = $_REQUEST['alt'];

	$documentTitle = "Temple Contemporary";

	$staging = $_REQUEST['staging'];
	$sql    = "SELECT deck FROM objects WHERE objects.name1 LIKE 'Live';";
	$result =  MYSQL_QUERY($sql);
	$myrow  =  MYSQL_FETCH_ARRAY($result);
	$deck = $myrow["deck"];
	if ( $deck == 'TRUE' ) $live = TRUE;
	
	echo "<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n"; 
?>


<!DOCTYPE html PUBLIC "-//W3C//Dtd XHTML 1.0 Transitional//EN" "http://www.w3.org/tr/xhtml1/Dtd/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en">

<head>
	<title><?php echo $documentTitle; ?></title>
	<meta http-equiv="Content-Type" content="text/xhtml; charset=utf-8" />
	<meta http-equiv="Title" content="<?php echo $documentTitle; ?>" />		
	<link rel="stylesheet" type="text/css" media="all" href="GLOBAL/global.css" />
</head>

<body> 

        <!-- IFRAME SOURCE -->

        <div class="">
                <?php
		
	        $rootid = $ids[0];

        	// SQL object plus media plus rootname

	        $sql = "SELECT objects.id AS objectsId, objects.name1, objects.deck, objects.body, objects.notes, 
objects.active, objects.begin, objects.end, objects.rank as objectsRank, (SELECT objects.name1 FROM objects WHERE objects.id = 
$rootid) AS rootname, media.id AS mediaId, media.object AS mediaObject, media.type, media.caption, media.active AS 
mediaActive, media.rank FROM objects LEFT JOIN media ON objects.id = media.object AND media.active = 1 WHERE objects.id = $id 
AND objects.active ORDER BY media.rank;";

	        $result = MYSQL_QUERY($sql);

                $html = "<div id='image".$i."' class = 'iframeImageContainer'>";

		while ( $myrow = MYSQL_FETCH_ARRAY($result) ) {

                	$mediaFile = "MEDIA/". str_pad($myrow["mediaId"], 5, "0", STR_PAD_LEFT) .".". $myrow["type"];
	                $mediaStyle = "width: 100%;";
        	        $html .= "\n    ". displayMedia($mediaFile, $mediaCaption, $mediaStyle);
		}
	                
		$html .= "</div>";
                echo $html;
                ?>
        </div>

</body>
</html>







