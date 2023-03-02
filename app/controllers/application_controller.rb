require "pry"
class ApplicationController < Sinatra::Base
    set :default_content_type, 'application/json'
    
    # Add your routes here
    get "/" do
      { message: "Good luck with your project!" }.to_json
    end
  
    get '/tasks' do
      tasks = Task.all
      tasks.to_json
    end
  
  
    get '/tasks/:id' do
      task =Task.find(params[:id])
      task.to_json
    end
  
    post '/tasks' do
    # task = Task.create(
    #     title: params[:title],
    #     description: params[:description],
    #     due_date: params[:due_date],
    #     completion_status: params[:completion_status]
    #   )
    #   task.to_json
    binding.pry
    end
    
    put '/tasks/:id' do
      task = Task.find(params[:id])
      task.update(title: params[:title],
      description: params[:description],
      due_date: params[:due_date],
      completion_status: params[:completion_status]
      )
      task.to_json
    end
  
  end
  