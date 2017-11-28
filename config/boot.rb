require "roda"
require "json"
require "rom"
require_relative "boot/routes"

class App < Roda
  plugin :multi_run
  run "clients", Web::Clients
  route do |r|
    r.multi_run
  end
end
