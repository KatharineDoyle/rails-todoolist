class TasksController < ApplicationController

  def index
    @task = Task.all
  end

  def new
    @task = Task.new
  end
end