module App
  module Relations
    class Clients < ROM::Relation[:sql]
      schema(:clients, infer: true)
      def self.all_clients
        [
          {
            id: 1,
            name: "Client 1"
          },
          {
            id: 2,
            name: "Client 2"
          }
        ]
      end
    end
  end
end
