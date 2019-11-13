initialization
start
	teapot start.
	teapot serveStatic: 'www/mystyle.css' from: 'www/mystyle.css'.
	^ self.