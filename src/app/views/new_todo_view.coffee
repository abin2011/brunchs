newTodoTemplate=require 'templates/new_todo'

class exports.NewTodoView extends Backbone.View
	events:
		'click #submit':'submit'
	render:=>
		@$(@el).html newTodoTemplate()
		@
	submit:=>
		_content=@$('#new-todo').val()
		app.collections.todoList.add
			content:_content