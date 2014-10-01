<?php 
	date_default_timezone_set('Asia/Kuwait');

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

	$dev = $_REQUEST['dev'];
	$dev = systemCookie("devCookie", $dev, 0);
	if (!$dev) die('Under construction . . .');
	
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
	<script type="text/javascript" src="GLOBAL/global.js"></script>
	<script type="text/javascript" src="JS/animateMessage.js"></script>
</head>

<body> 

        <!-- DISPLAY -->

        <div id='display' class='guideContainer courier'>
        </div>


        <!-- SOURCE -->

        <div id='source' class='guideContainer courier hide'>

                <?php

			// SQL object plus media
                        						
$sql = "SELECT objects.id AS objectsId, objects.name1, objects.deck, objects.body, objects.active, objects.rank as objectsRank, wires.fromid, wires.toid, wires.active, 
media.id AS mediaId, media.object AS mediaObject, media.type, media.caption, media.active, media.rank FROM objects, wires, media WHERE objects.id = $id AND wires.toid = 
objects.id AND media.object = objects.id AND objects.active = '1' AND wires.active = '1' AND media.active = '1' ORDER BY media.rank LIMIT 1;";
                        			
			$result =  MYSQL_QUERY($sql);
			$myrow  =  MYSQL_FETCH_ARRAY($result);                        
			$body = $myrow["body"];

                        // replace [ and ] with footnote style
                        // $bodyParsed = str_replace("]", "</span>", str_replace("[", "<span class='footnote'>", $body));
                        // $html = $bodyParsed;

                        $html = $body;
                        echo nl2br($html);

                ?>
        </div>


        <!-- IFRAME -->

        <div id='iframe' class='imageContainer'>

	<!-- <iframe src="http://localhost/WATTIS" width="98%" height="1000px"></iframe> -->
               
	<?php

/*
                	$mediaFile = "MEDIA/". str_pad($myrow["mediaId"], 5, "0", STR_PAD_LEFT) .".". $myrow["type"];
                	// $mediaCaption = strip_tags($myrow["caption"]);
                	$mediaStyle = "width: 100%;";
                	$html .= "<div id='image".$i."' class = 'imageContainer'>";
                	$html .= "\n    ". displayMedia($mediaFile, $mediaCaption, $mediaStyle);
                	// $html .= "<div class = 'captionContainer caption'>";
                	// $html .= $mediaCaption . "<br /><br />";
                	// $html .= "</div>";
                	$html .= "</div>";
	
                        // echo nl2br($html);
*/

	?>
        </div>






