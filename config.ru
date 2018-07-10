$LOAD_PATH.unshift('./lib')

require "pry"

require_relative "config/boot"

run App.freeze.app
