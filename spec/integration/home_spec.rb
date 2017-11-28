require_relative "../spec_helper"
describe "Home routes" do
  def app
    App
  end
  it "returns ok" do
    get "my_route/bla"
    expect(last_response.status).to be(200)
    expect(last_response.body).to eq("body")
  end
  it "returns json" do
    header "Accept", "application/json"
    get "my_route/bla"
    expect(last_response.status).to be(200)
    expect(last_response.body).to eq("{}")
  end
end
