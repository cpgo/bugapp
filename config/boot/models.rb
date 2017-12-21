module Schemas
  Dir["./lib/main/schemas/**/**.rb"].each { |f| require f }
end
