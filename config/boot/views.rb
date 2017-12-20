module Web
  module Views
    Dir["./src/web/views/**/**.rb"].each { |f| require f }
  end
end
