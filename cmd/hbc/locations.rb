require "hbc/locations"

module Hbc
  module Locations
    module ClassMethods
      attr_writer :tmbundledir

      def tmbundledir
        @tmbundledir ||= Pathname.new(
          "~/Library/Application Support/TextMate/Pristine Copy/Bundles"
        ).expand_path
      end
    end
  end

  include Locations
end
