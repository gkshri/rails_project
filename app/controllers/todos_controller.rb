class TodosController < ApplicationController  
    def index    
        render plain: Todo.all.map{|todo| todo.toreadable}.join("\n")
    end
end