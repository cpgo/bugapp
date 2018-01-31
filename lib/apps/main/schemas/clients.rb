module Main
  module Schemas
    class Clients
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
