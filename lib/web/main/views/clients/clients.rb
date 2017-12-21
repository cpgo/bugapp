class Web::Main::Views::Clients < Cell::ViewModel
  include ::Cell::Erb
  self.view_paths = ["lib"]

  def index
    render
  end
end
