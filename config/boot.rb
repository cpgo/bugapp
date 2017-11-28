require "roda"
require_relative "boot/routes"

class App < Roda
  plugin :multi_run
  run "clients", Clients
  route do |r|
    r.multi_run
  end
end
