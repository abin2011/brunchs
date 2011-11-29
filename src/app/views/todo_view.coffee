{Todo}=require 'models/todo'
todoTemplate=require 'templates/todo'

class exports.TodoView extends Backbone.View
	render:=>
		@$(@el).html todoTemplate @model.toJSON()
		@