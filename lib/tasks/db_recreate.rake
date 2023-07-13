namespace :db do
  desc "This task recreate db"
  task recreate: [:drop, :create, :migrate, :seed] do
    puts "Recreate DB done!"
  end
end
