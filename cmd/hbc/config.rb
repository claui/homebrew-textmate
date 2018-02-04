require "hbc/locations"

module Hbc
  class Config
    attr_reader :tmbundledir

    def tmbundledir=(path)
      @tmbundledir = Pathname(path).expand_path
    end

    global.tmbundledir =
      "~/Library/Application Support/TextMate/Pristine Copy/Bundles"
  end
end
