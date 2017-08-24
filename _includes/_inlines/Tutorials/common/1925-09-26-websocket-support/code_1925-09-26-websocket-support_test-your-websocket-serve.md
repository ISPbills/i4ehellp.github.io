
```
<html>
  <head>
    <script src="http://ajax.googleapis.com/ajax/libs/jquery/1.3.2/jquery.min.js"></script>
      <script>
      $(document).ready(function(){
        function debug( str ) {
          $("#debug").append( str );
        };

        ws = new WebSocket("ws://your address");
        ws.onmessage = function(evt) {
          $("#msg").append("evt.data");
        };
        ws.onclose = function() {
          debug("socket closed");
        };
        ws.onopen = function() {
          debug("connected...");
          ws.send("hello server");
        };
      });
    </script>
  </head>
  <body>
    <div id="debug"></div>
    <div id="msg"></div>
  </body>
</html>
```
