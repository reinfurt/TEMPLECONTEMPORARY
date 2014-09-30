
	// 	animateMessage.js
	//
	// 	adapted from animatePunctuation.js
	//
	//   	id : {class}
	//	delay : ## [50]
	//	animate : {true, false}	

	// 	globals
	
	var timeout;
	var message;
	var pointer;


        function initMessage(id, delay, display, animate) {

		var div = document.getElementById(id); 
		var target = document.getElementById(display);
		var source = buildSource(div);

		message = source.childNodes;
		pointer = 0;                      

		if (animate) {

			clearTimeout(timeout);
			timeout=null;
			if (!delay) delay = 50;
			animateMessage(div,delay,target,source);
		}	
	}


        function buildSource(root) {

                var next;
		var node = root.firstChild;
                var source = document.createDocumentFragment();

		do {      
                     	next = node.nextSibling;

	                if (node.nodeType === 1) {
	
				source.appendChild(node.cloneNode(true));

	                } else if (node.nodeType === 3) {

        	                var text = node.textContent;
	
				for (i = 0; i < text.length; i++) {       
	
					var temp = document.createElement("span");
					temp.textContent = text[i];
					source.appendChild(temp);
				}
        	        }
 
		} while(node = next);

                return source;
        }


        function animateMessage(div,delay,target,source) {
		
		if (pointer < source.childNodes.length) {

			target.appendChild(source.childNodes[pointer].cloneNode(true));
			pointer++;
			timeout = setTimeout(function(){animateMessage(div,delay,target,source);}, delay);

		} else {

	                console.log("stop");
			startStopAnimateMessage();
		}
	}


        function startStopAnimateMessage() {

 		if (timeout == null) {
							
			initMessage("animateMessage", delay, "target", true);			
			return true;

		} else {

			clearTimeout(timeout);
			timeout=null;
			return false;
		}
	}
