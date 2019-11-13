initialization
baseTemplateNew
	^'
	<form action="http://localhost:8081/addNewEntity" method="post">
			{{ name }}
			{{> partial }}
			<button type="submit" class="btn btn-primary">Submit</button>
	</form>'