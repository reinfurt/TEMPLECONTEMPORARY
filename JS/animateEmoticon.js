	var totalCanvas = 2;
	var thisCanvas = new Array();
	var thisContext = new Array();
	var thisFrames = new Array();
        var thisDelay = new Array();
        var thisCounter = new Array();
        var messages = new Array();
        // var xPos = 0;	// canvas width varies
        var xPos = 0;	// canvas width varies
        var yPos = 6;	// 36 px canvas height
	var delayAdjust = 1;	// to adjust global speed

        function init() {

		for (var i = 0; i < totalCanvas; i++) {

			thisCanvas[i] = document.getElementById("canvas"+i);
			thisContext[i] = thisCanvas[i].getContext("2d");
			thisContext[i].fillStyle = "#0CF";
			thisContext[i].font = "15px Tahoma";
			thisContext[i].textAlign = "left";
			thisContext[i].textBaseline = "middle";
			thisCounter[i] = 0;
		}        

		// hack
		thisContext[0].textAlign = "right";
		thisContext[0].fillStyle = "#F0F";

		// init array of arrays per canvas animation 

		messages[0] = 	[
				"_",
				"ا_",
				"اق_",								
				"اقت_",
				"اقتن_",
				"اقتنا_",
				"اقتناء _",
				"اقتناء ا_",
				"اقتناء ال_",
				"اقتناء الح_",
				"اقتناء الحد_",
				"اقتناء الحدا_",
				"اقتناء الحداث_",
				"اقتناء الحداثة_",
				"اقتناء الحداثة",
				"اقتناء الحداثة_",
				"اقتناء الحداثة",
				"اقتناء الحداثة_",
				"اقتناء الحداثة",
				"اقتناء الحداثة_",
				"اقتناء الحداثة",
				"اقتناء الحداثة_",
				"اقتناء الحداثة",
				"اقتناء الحداثة_",
				"اقتناء الحداثة",
				"اقتناء الحداثة_",
				"اقتناء الحداثة",
				"اقتناء الحداثة_",
				"اقتناء الحداثة",
				"اقتناء الحداثة_",
				"اقتناء الحداثة",
				"اقتناء الحداثة_"
				];

		thisDelay[0] = 200;

		messages[1] = 	[
				"_",
				"A_",
				"Ac_",
				"Acq_",
				"Acqu_",
				"Acqui_",
				"Acquir_",
				"Acquiri_",
				"Acquirin_",
				"Acquiring_",
				"Acquiring _",
				"Acquiring M_",
				"Acquiring Mo_",
				"Acquiring Mod_",
				"Acquiring Mode_",
				"Acquiring Moder_",
				"Acquiring Modern_",
				"Acquiring Moderni_",
				"Acquiring Modernit_",
				"Acquiring Modernity_",
				"Acquiring Modernity",
				"Acquiring Modernity_",
				"Acquiring Modernity",
				"Acquiring Modernity_",
				"Acquiring Modernity",
				"Acquiring Modernity_",
				"Acquiring Modernity",
				"Acquiring Modernity_",
				"Acquiring Modernity",
				"Acquiring Modernity_",
				"Acquiring Modernity",
				"Acquiring Modernity_",
				"Acquiring Modernity",
				"Acquiring Modernity_",
				"Acquiring Modernity",
				"Acquiring Modernity_",
				"Acquiring Modernity",
				"Acquiring Modernity_"
				];

		thisDelay[1] = 168.421;

		for (var j = 0; j < totalCanvas; j++) {

                	animateCanvas(j, messages);
		}
        }

        function animateCanvas(thisCanvasID, thisMessage) {

                thisCounter[thisCanvasID]++;
                thisContext[thisCanvasID].clearRect(0, 0, thisCanvas[thisCanvasID].width, thisCanvas[thisCanvasID].height);

		// frame number returns modulus to loop through messages array
		frameNumber = thisCounter[thisCanvasID] % messages[thisCanvasID].length;
		// thisContext[thisCanvasID].fillText(thisMessage[thisCanvasID][frameNumber], xPos, yPos);

		// ugly hack replaces previous line

if (thisCanvasID == 0) {
	thisContext[thisCanvasID].fillText(thisMessage[thisCanvasID][frameNumber], 200, yPos);
} else {
	thisContext[thisCanvasID].fillText(thisMessage[thisCanvasID][frameNumber], xPos, yPos);
} 

		// scope issue and could be written more elegantly as a callback, but fast enough for now
		var t = setTimeout("animateCanvas("+thisCanvasID+", messages)", thisDelay[thisCanvasID]*delayAdjust);
 	}
