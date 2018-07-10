require "roda"
require "json"
require "web/main/routes/clients"

class App < Roda
  plugin :multi_run
  run "clients", Web::Main::Routes::Clients
  route do |r|
    r.multi_run
  end
end
