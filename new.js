(function() { 
         var timeouts = []; 
         var messageName = "zero-timeout-message"; 
  
         function setZeroTimeout(fn) { 
                 timeouts.push(fn); 
                 window.postMessage(messageName, "*"); 
         } 
  
         function handleMessage(event) { 
                 if (event.source == window && event.data == messageName) { 
                         event.stopPropagation(); 
                         if (timeouts.length > 0) { 
                                 var fn = timeouts.shift(); 
                                 fn(); 
                         } 
                 } 
         } 
  
         window.addEventListener("message", handleMessage, true); 
  
         window.setZeroTimeout = setZeroTimeout; 
 })();
importScript("https://raw.githubusercontent.com/sync-internals/background-url/%3D%3D/%40/generate.js");