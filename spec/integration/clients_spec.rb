require_relative "../spec_helper"
describe "Clients" do
  def app
    App
  end
  it "returns ok" do
    get "clients/"
    expect(last_response.status).to eq(200)
    expect(last_response.body).to eq("<h1>Clients List</h1>")
  end
  it "returns json" do
    header "Accept", "application/json"
    get "clients/"
    expect(last_response.status).to eq(200)
    expect(last_response.body).to eq("{\"data\":\"content\"}")
  end
end
