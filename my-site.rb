require "sinatra"
require "sinatra/reloader"
require "./lib/database"
require "./lib/task_record"

class MySite < Sinatra::Base
  register Sinatra::Reloader

  set :raise_errors, false
  set :show_exceptions, false

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

  get "/error" do
    erb :error
  end

  error ArgumentError do
    "INVALID INPUT: " + env['sinatra.error'].message
  end

end
