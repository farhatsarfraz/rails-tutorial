class TodosController < ApplicationController
    before_action :set_todo, only: [:edit, :update, :show, :destroy]
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
         
    end
    def edit
       
    end 
    def update
        if @todos.update(todos_params)
            flash[:notice] = "todo was updated successfully"
            redirect_to todos_path(@todos)
        else 
            render 'edit'
        end
    end
        def destroy
             @todos.destroy
             flash[:notice] = "todo was deleted successfully"
             redirect_to todos_path

        end
    def index
        @todos = Todo.all
    end
    private
    def set_todo
         @todos = Todo.find(params[:id])
    end

    def todos_params
        params.require(:todo).permit(:name, :description)
    end
    
end