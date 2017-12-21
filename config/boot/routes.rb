module Web
  module Routes
    Dir["./lib/web/routes/**/**.rb"].each { |f| require f }
  end
end
