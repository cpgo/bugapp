$LOAD_PATH.unshift("./lib")

require_relative "config/boot"

run App.freeze.app
