initialization
registerRoutes
	teapot
		GET: '/' -> '<h1>It works!</h1>';output: #html;
		GET: '/displayForm' -> (Send message: #displayForm: to: self); output: #html;
		GET: '/displayFieldUserForm' -> (Send message: #displayFieldUserForm: to: self); output: #html.