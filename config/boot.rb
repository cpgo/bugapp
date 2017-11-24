require "roda"
require_relative "boot/routes"

class App < Roda
  plugin :multi_run
  run "my_route", MyRoute
  route do |r|
    r.multi_run
  end
end
