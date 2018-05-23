require_relative "../spec_helper"
describe "Clients" do
  def app
    MainApp
  end
  it "returns ok" do
    get "clients/"
    expect(last_response.status).to eq(200)
    expect(last_response.body).to eq("<h1>Clients List</h1>\n<ul>\n      <li> id: 1 - name: Client 1 </li>\n      <li> id: 2 - name: Client 2 </li>\n    \n</ul>")
  end
  it "returns json" do
    header "Accept", "application/json"
    get "clients/"
    expect(last_response.status).to eq(200)
    expect(last_response.body).to eq("[{\"id\":1,\"name\":\"Client 1\"},{\"id\":2,\"name\":\"Client 2\"}]")
  end
end
