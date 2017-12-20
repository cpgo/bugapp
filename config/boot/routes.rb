module Web
  module Routes
    Dir["./src/web/routes/**/**.rb"].each { |f| require f }
  end
end
