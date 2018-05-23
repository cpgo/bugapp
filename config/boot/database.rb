module Container
  def self.env
    config = ROM::Configuration.new(:sql, "postgres://localhost/bugapp")
    config.auto_registration("./lib/app")
    ROM.container(config)
  end
end
