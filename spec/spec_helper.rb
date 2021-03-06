$LOAD_PATH.unshift File.expand_path("../../lib", __FILE__)
require "bundler/setup"
require "rspec/its"
require "delorean"

require "coveralls"
Coveralls.wear!

require "nagoriyuki"

RSpec.configure do |config|
  include Delorean
  config.filter_run focus: true
  config.run_all_when_everything_filtered = true
end
