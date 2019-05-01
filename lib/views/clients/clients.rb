require "cells"
require "cells-erb"

module Views
  class Clients < Cell::ViewModel
    include ::Cell::Erb
    self.view_paths = ["lib"]

    def index
      render
    end
  end
end
