module Schemas
  Dir["./src/app/schemas/**/**.rb"].each { |f| require f }
end
