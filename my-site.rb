require "sinatra"
require "sinatra/reloader"
# require "./lib/task_record"
# require "./lib/database"

class MySite < Sinatra::Base
  register Sinatra::Reloader

  get "/" do
    erb :home
  end

  post "/" do
    @database_object = TaskList::TaskRecord.new("taskList.db")

    @database_object.your_custom_query_here(params)

    # task_object = TaskList::TaskRecord.new("taskList.db")
    # task_object.your_custom_query_here(ARGUMENTS)
    erb :home
  end

end
