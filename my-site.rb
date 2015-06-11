require "sinatra"
require "sinatra/reloader"
require "./lib/database"
require "./lib/task_record"

class MySite < Sinatra::Base
  register Sinatra::Reloader

  get "/" do
    data = TaskList::TaskRecord.new("testing.db")
    @tasks = data.all_tasks
    erb :home
  end

  # post "/add" do
    # @database_object = TaskList::TaskRecord.new("testing.db")

    # @database_object.your_custom_query_here(params)

    # #task_object = TaskList::TaskRecord.new("taskList.db")
    # #task_object.your_custom_query_here(ARGUMENTS)
    # erb :home
  # end

end
