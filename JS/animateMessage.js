
	// 	animateMessage.js
	//
	// 	adapted from animatePunctuation.js
	//
	//   	source : {id}
	//   	display : {id}
	//	animate : {true, false}	
	//	delay : ## [50]

	// 	globals
	
	var timeout;
	var pointer;


        function initMessage(sourceId, displayId, animate, delay) {

		var source = document.getElementById(sourceId); 
		var display = document.getElementById(displayId);
		var message = buildMessage(source);

		pointer = 0;                      

		if (animate) {

			clearTimeout(timeout);
			timeout=null;
			if (!delay) delay = 50;
			animateMessage(source,display,message,delay);
		}	
	}


        function buildMessage(root) {

                var next;
		var node = root.firstChild;
                var message = document.createDocumentFragment();

		do {      
                     	next = node.nextSibling;

	                if (node.nodeType === 1) {
	
				message.appendChild(node.cloneNode(true));

	                } else if (node.nodeType === 3) {

        	                var text = node.textContent;
	
				for (i = 0; i < text.length; i++) {       
	
					var temp = document.createElement("span");
					temp.textContent = text[i];
					message.appendChild(temp);
				}
        	        }
 
		} while(node = next);

                return message;
        }


        function animateMessage(source,display,message,delay) {
		
		if (pointer < message.childNodes.length) {

			display.appendChild(message.childNodes[pointer].cloneNode(true));
			pointer++;
			timeout = setTimeout(function(){animateMessage(source,display,message,delay);}, delay);

		} else {

	                console.log("stop");
			startStopAnimateMessage();
		}
	}


        function startStopAnimateMessage() {

 		if (timeout == null) {
							
			initMessage("animateMessage","target",true,delay);			
			return true;

		} else {

			clearTimeout(timeout);
			timeout=null;
			return false;
		}
	}
