require 'sqlite3'

module TaskList
  class TaskRecord < Database
    def all_tasks
      statement = "SELECT * FROM data;"
      query!(statement)
    end

    def your_custom_query_here(*args)
      @name = args[0]
      @description = args[1]
      @date = args[2]
      statement = "INSERT INTO data(name, description, date) VALUES
                  (\"#{@name}\", \"#{@description}\", \"#{@date}\");"
      check_input
      query!(statement)
    end

    def check_input
      raise ArgumentError, "Must input name" if @name.length == 0
    end

  end
end
