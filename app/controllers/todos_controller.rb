class TodosController < ApplicationController
    def new 
        @todos = Todo.new
    end
    def create
        @todos = Todo.new(todos_params)
        if @todos.save
            flash[:notice] = "todo was created successfully"
        redirect_to todos_path(@todos)
        else 
            render 'new'
        end
    end
    def show
         @todos = Todo.find(params[:id])
    end
    def index
        @todos = Todo.all
    end
    private
    def todos_params
        params.require(:todo).permit(:name, :description)
    end
    
end