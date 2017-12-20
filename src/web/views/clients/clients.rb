class Web::Views::Clients < Cell::ViewModel
  include ::Cell::Erb
  self.view_paths = ["src"]

  def index
    render
  end
end
