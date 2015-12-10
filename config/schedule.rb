# Use this file to easily define all of your cron jobs.
#
# It's helpful, but not entirely necessary to understand cron before proceeding.
# http://en.wikipedia.org/wiki/Cron

require File.expand_path(File.dirname(__FILE__) + "/../config/environment")
set :environment, "development"
set :path, Rails.root
set :output, Rails.root.join('log', 'cron.log')
#
every 2.minutes do
  rake "google_books:googlebooks"
end

# Learn more: http://github.com/javan/whenever
