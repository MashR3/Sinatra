require 'sinatra'
require_relative './ToDoManager.rb'

get '/todos' do 
	ToDoManager.index
end


# get '/todos/new' do
# 	"NEW"
# end


post '/todos' do 
	new_todo = params[:new_todo]
	ToDoManager.create(new_todo)
	# ToDoManager.create(new_todo)
end


get '/todos/:id' do 
	# puts params[:id]
	id = params[:id]
	ToDoManager.show(id.to_i)
end


# get '/todos/:id/edit' do
# 	"EDIT"
# end


put '/todos/:id' do
	id = params[:id]
	todo = params[:new_todo]
	ToDoManager.update(id.to_i, todo)
end


delete '/todos/:id' do
	id = params[:id]
	ToDoManager.delete(id.to_i)
end