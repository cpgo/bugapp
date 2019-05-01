require "schemas/clients"
require "views/clients/clients"

module Routes
  class Clients < Roda
    route do |r|
      r.root do
        @clients = ::Schemas::Clients.all_clients
        Views::Clients.new(clients: @clients).call :index
      end
    end
  end
end
