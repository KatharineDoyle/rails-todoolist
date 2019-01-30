class TasksController < ApplicationController

  def index
    @incomplete_tasks = Task.incomplete
    @complete_tasks = Task.complete
  end

  def show
    @task = Task.find(params[:id])
  end

  def new
    @task = Task.new
  end

  def create
    @task = Task.new(task_params)
    @task.save
    redirect_to tasks_path
  end

  def edit
    @task = Task.find(params[:id])
  end

  def destroy
    @task = Task.find(params[:id])
    @task.destroy
    redirect_to tasks_path(@task)
  end

  private

  def task_params
    params.require(:task).permit(:name, :details, :completed)
  end
end

