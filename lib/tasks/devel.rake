namespace :devel do

  desc 'Reinstall database and load samples'
  task :reinstall => [:"db:purge", :"db:migrate", :"db:seed"]

end
