class Web::Routes::Clients < Roda
  plugin :type_routing
  plugin :empty_root
  route do |r|
    r.root do
      @clients = Schemas::Clients.all_clients
      r.html do
        Web::Views::Clients.new(clients: @clients).call :index
      end
      r.json do
        Web::Serializers::Clients.new(@clients).index
      end
    end
  end
end
