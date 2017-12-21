class Web::Main::Routes::Clients < Roda
  plugin :type_routing
  plugin :empty_root
  route do |r|
    r.root do
      @clients = Schemas::Main::Clients.all_clients
      r.html do
        Web::Main::Views::Clients.new(clients: @clients).call :index
      end
      r.json do
        Web::Main::Serializers::Clients.new(@clients).index
      end
    end
  end
end
