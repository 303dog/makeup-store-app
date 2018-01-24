require 'bundler/setup'
Bundler.require
require_all './lib/makeup-store/app'

ActiveRecord::Base.establish_connection(
  :adapter => "sqlite3",
  :database => "db/development.sqlite"
)

require_relative "../lib/makeup-store/app/controllers/application_controller.rb"
