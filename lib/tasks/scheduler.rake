desc "This task is called by the Heroku scheduler add-on"
task :update_daily_challenge => :environment do
  puts "Updating feed..."
  Challenge.daily_challenge
  puts "done."
end
