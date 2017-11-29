require "roda"
require "json"
require "rom"
require "cells"
require "cells-erb"
require_relative "boot/routes"
require_relative "boot/views"
require_relative "boot/models"
require_relative "boot/serializers"

class App < Roda
  plugin :multi_run
  run "clients", Web::Routes::Clients
  route do |r|
    r.multi_run
  end
end
