class exports.MainRouter extends Backbone.Router
  routes :
    "home": "home"

  home: ->
    $('body').html app.views.home.render().el
    $('#todo-app').append app.views.newTodoView.render().el
