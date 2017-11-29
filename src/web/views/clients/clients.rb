module Web
  module Views
    class Clients < Cell::ViewModel
      include ::Cell::Erb
      self.view_paths = ["src"]

      def index
        render
      end
    end
  end
end
