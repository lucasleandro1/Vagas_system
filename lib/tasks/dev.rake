namespace :start_project do
  desc "Start Postgres and Rails server"
  task :all do
    puts "Starting Postgres..."
    system("sudo service postgresql start")

    puts "Starting Rails server..."
    system("rails server ")

  end
end