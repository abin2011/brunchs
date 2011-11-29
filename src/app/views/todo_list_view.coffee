{TodoList}=require 'collections/todo_list'
{TodoView}=require 'views/todo_view'

class exports.TodoListView extends Backbone.View
	initialize:=>
		@collection.bind 'add',@addOne
	render:=>
		$el = @$(@el)
		@collection.each (model) ->
			_todoView=new TodoView
				model:model
			$el.append _todoView.render().el
		@
	addOne:(model) ->
		$el=@$(@el)
		_todoView=new TodoView
			model:model
		$el.append _todoView.render().el