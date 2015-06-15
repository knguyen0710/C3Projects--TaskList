require "sinatra"
require "sinatra/reloader"
require "./lib/database"
require "./lib/task_record"

class MySite < Sinatra::Base
  register Sinatra::Reloader

  get "/" do
    data = TaskList::TaskRecord.new("taskList.db")
    @tasks = data.all_tasks
    erb :home
  end

  post "/" do
    erb :home
  end

  get "/add" do
    erb :add
  end

  post "/add" do
    @database_object = TaskList::TaskRecord.new("taskList.db")

    @name = params[:name]
    @description = params[:description]
    @date = params[:date]      

    @database_object.your_custom_query_here(@name, @description, @date)
    redirect "/"
  end

end
