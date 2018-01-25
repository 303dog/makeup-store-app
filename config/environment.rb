require 'bundler/setup'
Bundler.require
require_all './app'
require_all './public/css'

ActiveRecord::Base.establish_connection(
  :adapter => "sqlite3",
  :database => "db/development.sqlite"
)

require_relative "../app/controllers/application_controller.rb"
