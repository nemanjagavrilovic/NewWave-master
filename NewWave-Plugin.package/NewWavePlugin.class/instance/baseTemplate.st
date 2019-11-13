initialization
baseTemplate
	^'
	<form action="http://localhost:8081/addNewEntity" method="post">
			{{ name  }}
			{{# formProperties }}
				<div class="form-group">
					<label for="{{ label }}">{{ label }}</label>
					<input type={{type}} class="form-control" id="{{ label }}" name="{{ name }}" placeholder="Enter {{ label }}">
				</div>
			{{/ formProperties }}
			<button type="submit" class="btn btn-primary">Submit</button>
	</form>'