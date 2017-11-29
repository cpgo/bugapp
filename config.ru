dev = ENV["RACK_ENV"] == "development"
require "pry" if dev
if dev
  require "logger"
  logger = Logger.new($stdout)
end

require_relative "config/boot"

run App.freeze.app
