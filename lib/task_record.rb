require 'sqlite3'

module TaskList
  class TaskRecord < Database
    def your_custom_query_here(*args)
      # args = [{"name"=>"B", "description"=>"D", "date"=>"C"}]
      # args[0] = {"name"=>"B", "description"=>"D", "date"=>"C"}
      @name = args[0]["name"]
      @description = args[1]["description"]
      @date = args[2]["date"]



      # santitize/validate your arguments

      # prepare your statement

      # call `query!` to interact with the database

      # determine what should be returned
    end
  end
end
