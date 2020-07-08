require 'sinatra'
require 'sinatra/reloader' if development?
require 'pry'
require_relative './models/student'
require_relative './models/house'

# INDEX
get '/students' do
  @students = Student.all
  erb(:index)
end

# NEW
get '/students/new' do
    @houses = House.all
    erb(:new)   
end

# CREATE
post '/students' do
    @student = Student.new(params)
    @student.save()
    redirect '/students'
end