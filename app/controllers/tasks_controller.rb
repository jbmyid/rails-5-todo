class TasksController < ApplicationController

  respond_to :json

  def create
    @task = Task.new
    @task.save
    respond_with @task
  end

  # GET /tasks/1
  # GET /tasks/1.json
  def show
    @task = Task.find_or_create_by(name: 'First')
    respond_with @task , serializer: TaskSerializer
  end

end
