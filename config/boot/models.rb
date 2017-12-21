module Schemas
  Dir["./lib/app/schemas/**/**.rb"].each { |f| require f }
end
