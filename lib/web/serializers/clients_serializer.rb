class Web::Serializers::Clients
  attr_accessor :models
  def initialize(models)
    @models = models
  end

  def index
    models.to_json
  end
end
