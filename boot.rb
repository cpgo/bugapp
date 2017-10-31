require "roda"
require_relative "boot/controllers"

class App < Roda
  route do |r|
    r.root do
      MyController.call
    end
  end
end
