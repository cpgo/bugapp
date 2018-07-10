require "apps/main/schemas/clients"
require "web/main/serializers/clients_serializer"
require "web/main/views/clients/clients"

module Web
  module Main
    module Routes
      class Clients < Roda
        plugin :type_routing
        plugin :empty_root
        route do |r|
          r.root do
            @clients = ::Main::Schemas::Clients.all_clients
            r.html do
              Web::Main::Views::Clients.new(clients: @clients).call :index
            end
            r.json do
              Web::Main::Serializers::Clients.new(@clients).index
            end
          end
        end
      end
    end
  end
end
