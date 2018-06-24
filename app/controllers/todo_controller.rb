class TodoController < ApplicationController
  def new
  end 
  
  def create
    t = Todo.new
    t.description = params[:description]
    t.pomodoros = params[:pomodoros]
    t.status = false
    t.save 
    redirect_to '/todo/index'
  end 
  
  def index
      @todos = Todo.all
  end
    
  def show
    @todo = Todo.find(params[:id].to_i)
  end
  
  def edit
    @todo = Todo.find(params[:id].to_i)
  end 
  
  def update
    todo = Todo.find(params[:id].to_i)
    todo.description = params[:description]
    todo.pomodoros = params[:pomodoros]
    todo.save
    
    redirect_to "/todo/show/#{todo.id}"
  end 
  
  def delete
    todo = Todo.find(params[:id].to_i)
    todo.destroy 
      
    redirect_to '/todo/index'
  end 
end 
