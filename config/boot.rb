require "roda"
require "json"
require "rom"
require "cells"
require "cells-erb"
require "guard"
require_relative "boot/routes"
require_relative "boot/views"
require_relative "boot/apps"
require_relative "boot/serializers"
require_relative "boot/database"

class App < Roda
  plugin :multi_run
  run "clients", Web::Main::Routes::Clients
  route do |r|
    r.multi_run
  end
end
