module Web
  module Serializers
    Dir["./lib/web/serializers/**/**.rb"].each { |f| require f }
  end
end
