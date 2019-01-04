guard :rspec, cmd: "bundle exec rspec" do
  require "guard/rspec/dsl"
  dsl = Guard::RSpec::Dsl.new(self)

  # Feel free to open issues for suggestions and improvements

  # RSpec files
  rspec = dsl.rspec
  watch(rspec.spec_helper) { rspec.spec_dir }
  watch(rspec.spec_support) { rspec.spec_dir }
  watch(rspec.spec_files)

  watch(%r{^lib\/schemas\/(.*).rb$}) { |m|
    "spec/schemas/#{m[1]}_spec.rb"
  }

  # watch(%r{^lib\/app\/(.*).rb$}) { rspec.spec_dir }
  watch(%r{^lib\/web\/(.*).rb$}) { "spec/integration" }
  # watch(%r{^spec/.+_spec\.rb$})
  # watch(%r{^src/(.+)\.rb$})     { |m| "spec/integration/#{m[1]}_spec.rb" }
  # watch("spec/spec_helper.rb")  { "spec" }
end
