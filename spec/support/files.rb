# frozen_string_literal: true

RSpec.configure do |config|
  config.include(Module.new do
    def fixture_file(path)
      Pathname.new(__FILE__).parent.join("../fixtures", path)
    end

    def fixture_file_content(path)
      fixture_file(path).read
    end
  end)
end
