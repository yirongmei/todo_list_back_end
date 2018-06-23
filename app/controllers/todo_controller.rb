class TodoController < ApplicationController
    def index
    end
    
    def show
      @description = "Buy workshop supplies"
      @pomodoro = "3"
    end
end 
