module Web
  class Clients < Roda
    plugin :type_routing
    plugin :empty_root
    route do |r|
      r.root do
        r.html do
          "<h1>Clients List</h1>"
        end
        r.json do
          { data: "content" }.to_json
        end
      end
    end
  end
end
