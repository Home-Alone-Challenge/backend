require 'pry'

desc "This task is called by the Heroku scheduler add-on"
task :update_daily_challenge => :environment do
  puts "Updating feed..."
  Challenge.set_daily
  puts "done."
end

desc "This task is called by the Heroku scheduler add-on"
task :update_daily_tip => :environment do
  puts "Updating feed..."
  Dailytip.set_daily
  puts "done."
end
