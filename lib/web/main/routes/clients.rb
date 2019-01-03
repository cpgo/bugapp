require "apps/main/schemas/clients"
require "web/main/serializers/clients_serializer"
require "web/main/views/clients/clients"

module Web
  module Main
    module Routes
      class Clients < Roda
        plugin :empty_root
        route do |r|
          r.root do
            @clients = ::Main::Schemas::Clients.all_clients
            Web::Main::Views::Clients.new(clients: @clients).call :index
          end
        end
      end
    end
  end
end
