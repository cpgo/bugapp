module App
  module Relations
    class Clients < ROM::Relation[:sql]
      schema(:clients, infer: true)
    end
  end
end
