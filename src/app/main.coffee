window.app = {}
app.routers = {}
app.models = {}
app.collections = {}
app.views = {}

MainRouter = require('routers/main_router').MainRouter
HomeView = require('views/home_view').HomeView

{TodoList}=require 'collections/todo_list'

{NewTodoView}=require 'views/new_todo_view'


# app bootstrapping on document ready
$(document).ready ->
  app.initialize = ->
    app.routers.main = new MainRouter()
    
    app.collections.todoList=new TodoList()
    
    app.views.home = new HomeView()
    app.views.newTodoView=new NewTodoView()

    app.routers.main.navigate 'home', true if Backbone.history.getFragment() is ''
  app.initialize()
  Backbone.history.start()
