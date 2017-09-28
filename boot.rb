require "roda"
require "./boot/controllers"

class App < Roda
  route do |r|
    r.root do
      MyController.call()
    end
  end
end