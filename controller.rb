require 'sinatra'
require 'sinatra/reloader' if development?
require 'pry'
require_relative './models/student'

get '/students' do
  @students = Student.all
  erb (:index)
end

# NEW
get '/students/new' do
    erb(:new)   
end

get '/students/:id' do
  @student = Student.find(params[:id].to_i)
  erb(:show)
end


# CREATE
post '/students' do
    @order = Student.new(params)
    @order.save()
    erb(:create)
end