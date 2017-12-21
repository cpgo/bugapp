module Schemas
  module Main
    Dir["./lib/main/schemas/**/**.rb"].each { |f| require f }
  end
end
