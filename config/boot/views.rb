module Web
  module Main
    module Views
      Dir["./lib/web/main/views/**/**.rb"].each { |f| require f }
    end
  end
end
