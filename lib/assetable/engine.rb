module Assetable
  class Engine < ::Rails::Engine
    isolate_namespace Assetable

    config.generators.integration_tool :rspec
    config.generators.test_framework :rspec
  end
end
