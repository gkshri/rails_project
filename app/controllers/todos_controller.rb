class TodosController < ApplicationController  
    def index    
        render plain: Todo.all.map{|todo| todo.toreadable}.join("\n")
    end
    def show
        id= params[:id]
        #render plain:"the id was.#{id}"
        todo=Todo.find(id)
        render plain: todo.toreadable
    end
end