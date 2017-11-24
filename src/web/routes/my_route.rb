class MyRoute < Roda
  route do |r|
    r.get "bla" do
      puts "yay"
      "body"
    end
  end
end
