<?php 
require_once("GLOBAL/head.php"); 
?>

        <!-- DISPLAY -->

        <div id='display' class='guideContainer courier red'>
        </div>


        <!-- SOURCE -->

        <div id='source' class='guideContainer courier hide'>


		<?php
	
			// SQL object only
				
			$sql    = "SELECT * FROM objects WHERE objects.id = $id;";
			$result =  MYSQL_QUERY($sql);
			$myrow  =  MYSQL_FETCH_ARRAY($result);
			$deck = $myrow["deck"];
			$body = $myrow["body"];

			// replace [ and ] with footnote style

			$bodyParsed = str_replace("]", "</span>", str_replace("[", "<span class='footnote'>", $body));

			$html = $bodyParsed;
                        echo nl2br($html);
		?>

Our mission is to re-imagine the social function of art <a href=''>through
questions</a> of local relevance and international significance. Here is how
we try to do it: 1. Our front door sign; 2. Seat Cushions; 3. Neon Signs; 4.
Silk-screened Calendars; 5. Funeral for a Home. <a href=''>Test</a>

        </div>




























        <!-- MENU -->

<!--
        <div id='menu' class='<?php echo ($language == "en") ? "englishMenuContainer blue " : "arabicMenuContainer red " ?> tahoma'>

                <p dir="rtl" lang="AR" class="tahoma green">

                <ul>
                        <?php
                                if ( $language == "en" ) $path = "14";
                                if ( $language == "ar" ) $path = "15";
                                $limit = 1;
                                $selection = $idFull;
                                // $linkPageName = $pageName;
                                $linkPageName = "detail";                       // probably want to fix this and set using O-R$
                                $breadcrumbsMode = FALSE;
                                $multiColumn = 0;
                                $stub = FALSE;
                                $breadcrumbsMode = FALSE;
                                $thisLanguage = $language;
                                if (!$breadcrumbsMode) ($id) ? $breadcrumbsMode = TRUE : $breadcrumbsMode = FALSE;

                                // displayNavigation($path, $limit, $selection, $linkPageName, $stub, $breadcrumbsMode, $multiColumn, $thisLanguage);
                        ?>
                </ul>
        </p>
        </div>

-->







<!--
		<?php

			// SQL object plus media	

			$sql = "SELECT objects.id AS objectsId, objects.name1, objects.deck, objects.body, objects.active, objects.rank as objectsRank, 
wires.fromid, wires.toid, wires.active, media.id AS mediaId, media.object AS mediaObject, media.type, media.caption, media.active, media.rank FROM objects, 
wires, media WHERE objects.id = $id AND wires.toid = objects.id AND media.object = objects.id AND objects.active = '1' AND wires.active = '1' AND media.active = 
'1' ORDER BY media.rank;";
			$result =  MYSQL_QUERY($sql);
			$html = "";
			$i = 0;

			while ( $myrow  =  MYSQL_FETCH_ARRAY($result) ) {
							
				$mediaFile = "MEDIA/". str_pad($myrow["mediaId"], 5, "0", STR_PAD_LEFT) .".". $myrow["type"];
				$mediaCaption = strip_tags($myrow["caption"]);
				$mediaStyle = "width: 100%;";
				$html .= "<div id='image".$i."' class = 'imageContainer' onclick='expandImage(\"image".$i."\", \"100px\", \"0px\");' style='padding:100px;'>";
				$html .= "\n	". displayMedia($mediaFile, $mediaCaption, $mediaStyle);
				$html .= "<div class = 'captionContainer caption'>";
				$html .= $mediaCaption . "<br /><br />";
				$html .= "</div>";
				$html .= "</div>";
				$i++;
			}
	
			// echo nl2br($html);
		?>
-->


<?php
	require_once("GLOBAL/foot.php"); 
?>
