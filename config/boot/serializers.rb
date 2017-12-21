module Web
  module Main
    module Serializers
      Dir["./lib/web/main/serializers/**/**.rb"].each { |f| require f }
    end
  end
end
