class TasksController < ApplicationController

  respond_to :json

  # GET /tasks/1
  # GET /tasks/1.json
  def show
    # @task = Task.find_or_create_by(name: 'First')
    @task = Task.new
    @task.save
    # render json: @task, serializer: TaskSerializer
    respond_with @task #, serializer: TaskSerializer
  end

end
