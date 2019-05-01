require "roda"
require "json"
require "routes/clients"
require "pry" if ENV["RACK_ENV"] != "production"

class App < Roda
  plugin :multi_run
  run "clients", Routes::Clients
  route do |r|
    r.multi_run
  end
end
