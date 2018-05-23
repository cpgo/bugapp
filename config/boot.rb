require "roda"
require "json"
require "rom"
require "cells"
require "cells-erb"
require "guard"
require "rom"
require "rom-sql"
require_relative "boot/routes"
require_relative "boot/views"
require_relative "boot/apps"
require_relative "boot/serializers"
require_relative "boot/database"

require "pry"

class MainApp < Roda
  plugin :multi_run
  run "clients", Web::Main::Routes::Clients
  route do |r|
    r.multi_run
  end
end
