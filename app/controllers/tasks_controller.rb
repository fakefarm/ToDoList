class TasksController < ApplicationController

  def index
    @tasks = Task.all
    @task = Task.new   
  end
  
  def new
  end

  def create
    @tasks = Task.all
    @task = Task.new(params[:task])
    if @task.save
      redirect_to tasks_url, notice: "Task saved!"
    else
      render "index"
      flash[:alert] = "not saved"
    end
  end

  def edit
    @task = Task.find(params[:id])
  end
  
  def show
    
  end

  def update
    @task = Task.find(params[:id])
    if @task.update_attributes(params[:task])
      redirect_to tasks_url
    else
      render "index"
    end 
  end

  def delete
    @task = Task.find(params[:id])
    @task.delete
    redirect_to tasks_url
    
  end
  
end
