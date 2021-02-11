class Todo < ActiveRecord::Base
    def toreadable
        is_completed= completed ? "[X]":"[0]"
        "#{id}.#{todo_text}.#{is_completed}.#{due_date.to_s(:short)}"
    end
end
