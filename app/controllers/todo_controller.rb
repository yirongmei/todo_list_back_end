class TodoController < ApplicationController
    def index
      @todos = Todo.all
  end
    
  def show
    @todo = Todo.find(params[:id].to_i)
  end
end 
