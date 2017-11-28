require "json"

class MyRoute < Roda
  plugin :type_routing
  route do |r|
    r.get "bla" do
      r.html do
        "body"
      end
      r.json do
        {}.to_json
      end
    end
  end
end
