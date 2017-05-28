require_relative 'db_helper'

Dir[SPEC_ROOT.join('support/app/*.rb').to_s].each(&method(:require))
Dir[SPEC_ROOT.join('shared/app/*.rb').to_s].each(&method(:require))

require SPEC_ROOT.join('../system/boot').realpath

RSpec.configure do |config|
  config.before :suite do
    TestHelpers.app.freeze
  end
end
