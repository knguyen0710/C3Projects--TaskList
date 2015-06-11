require 'sqlite3'

module TaskList
  class TaskRecord < Database
    def all_tasks
      statement = "SELECT * FROM data;"
      query!(statement)
    end

    def your_custom_query_here(*args)
      # args = [{"name"=>"B", "description"=>"D", "date"=>"C"}]
      # args[0] = {"name"=>"B", "description"=>"D", "date"=>"C"}
      @name = args[0]["name"]
      @description = args[0]["description"]
      @date = args[0]["date"]
      # statement = "INSERT INTO data (name, description, date) VALUE (#{@name}, #{@description}, #{@date});"
      statement = "SELECT * FROM data;"
      query!(statement)

      # santitize/validate your arguments

      # prepare your statement

      # call `query!` to interact with the database

      # determine what should be returned
    end
  end
end
