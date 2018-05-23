module App
  module Relations
    Dir["./lib/app/relations/**.rb"].each { |f| require f }
  end
end
