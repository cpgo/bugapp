require_relative "../spec_helper"

describe "Clients" do
  it "list all clients" do
    expect(Schemas::Clients.all_clients).to eq(
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
    )
  end
end
