module Web
  module Serializers
    Dir["./src/web/serializers/**/**.rb"].each { |f| require f }
  end
end
