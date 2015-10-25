require "groupify"

module SampleRailsEngine
  class Engine < ::Rails::Engine
    isolate_namespace SampleRailsEngine
  end
end
