require "hbc/artifact"
require_relative "artifact/tmbundle"

module Hbc
  module Artifact
    original_for_cask_method = method(:for_cask)

    define_singleton_method(:for_cask) do |cask|
      original_for_cask_method.(cask).tap do |classes|
        classes << Tmbundle.new(cask)
      end
    end
  end
end
