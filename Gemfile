source "https://rubygems.org"
git_source(:github) { |repo_name| "https://github.com/#{repo_name}" }

gem "cells", "~> 4.1"
gem "cells-erb", "~> 0.1.0"
gem "roda"

group :development do
  gem "pry"
  gem "rubocop", "~> 0.51.0"
  gem "guard-rspec", require: false
end

group :test do
  gem "rack-test"
  gem "rspec"
  gem "rspec_junit_formatter"
end
