require "hbc/artifact"
require_relative "artifact/tmbundle"

module Hbc
  module Artifact
    original_for_cask_method = method(:for_cask)

    define_singleton_method(:for_cask) do |cask, options = {}|
      original_for_cask_method.(cask, options).tap do |types|        
        types << Tmbundle.new(cask, options) if Tmbundle.me?(cask)
      end
    end
  end
end
