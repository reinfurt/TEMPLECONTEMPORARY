
	// 	animateMessage.js
	//
	// 	adapted from animatePunctuation.js
	//
	//   	id : {class}
	//	delay : ## [50]
	//	animate : {true, false}	

	// 	globals
	
	var timeout;
	var source;
	var message;
	var pointer;


        function initMessage(id, delay, animate) {

		var div = document.getElementById(id); 
		source = document.createDocumentFragment();

		buildSource(div);

		message = source.childNodes;
		pointer = 0;                      

		if (animate) {

			clearTimeout(timeout);
			timeout=null;
			if (!delay) delay = 50;
			animateMessage(div,delay);
		}	
	}


        function buildSource(node) {

                var next;

                if (node.nodeType === 1) {

                        if (node = node.firstChild) {
	
                                do {                   
                     			next = node.nextSibling;
					if (node.firstChild) {
						
						// no more recursion, add to source
						source.appendChild(node.cloneNode(true));

					} else {

	                                        buildSource(node);
					}	

                                } while(node = next);
                        }

                } else if (node.nodeType === 3) {

			var fragment = document.createDocumentFragment();
                        var text = node.textContent;

			for (i = 0; i < text.length; i++) {       
	
				var temp = document.createElement("span");
				temp.textContent = text[i];
				fragment.appendChild(temp);
			}

			source.appendChild(fragment);
                }

                return true;
        }


        function animateMessage(div,delay) {

		if (pointer < message.length) {

	                var target = document.getElementById("target");

			target.appendChild(message[pointer].cloneNode(true));
			pointer++;
			timeout = setTimeout(function(){animateMessage(div,delay);}, delay);
		} else {

	                console.log("end of message");
			startStopAnimateMessage();
		}
	}


        function startStopAnimateMessage() {

 		if (timeout == null) {
							
			initMessage("animateMessage", delay, true);			
			return true;

		} else {

			clearTimeout(timeout);
			timeout=null;
			return false;
		}
	}
