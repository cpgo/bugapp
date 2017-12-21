module Web
  module Views
    Dir["./lib/web/views/**/**.rb"].each { |f| require f }
  end
end
