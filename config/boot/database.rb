require "rom"
require "rom-sql"

ROM.container(:sql, "postgres://localhost/bugapp") do |config|
  # define relations and commands here...
  config.auto_registration("lib/app")
end
