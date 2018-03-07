require "roda"
require "json"
require "rom"
require "cells"
require "cells-erb"
require "guard"
require_relative "boot/web"
require_relative "boot/models"
require "pry"
require "dry/system/container"

class Application < Dry::System::Container
  configure do |config|
    config.auto_register = "lib"
  end
  load_paths!("lib")
end

Application.finalize!

class App < Roda
  plugin :multi_run
  run "clients", Web::Main::Routes::Clients
  route(&:multi_run)
end
