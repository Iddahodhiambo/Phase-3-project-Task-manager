class TasksController < ApplicationController
    get '/tasks' do
        tasks = Task.all
        tasks.to_json
      end
    
    
      get '/tasks/:id' do
        task =Task.find(params[:id])
        task.to_json
      end
    
      post '/tasks' do
      task = Task.create(
          title: params[:title],
          description: params[:description],
          due_date: params[:due_date],
          completion_status: params[:completion_status]
        )
        task.to_json
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

      delete '/tasks/:id' do
        # find the task using the ID
        task = Task.find(params[:id])
        # delete the review
        task.destroy
        # send a response with the deleted task as JSON
        task.to_json
      end
    
    
end