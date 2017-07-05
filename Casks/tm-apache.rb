cask "tm-apache" do
  version "r20160103"
  sha256 "e197794eec2e454fdbf0ff045d8183125ad258a8eb5eb326de0031174ff80523"

  @commit_sha = "a12e895533700b0200cca20f169be63727efff8c"

  url "https://github.com/textmate/apache.tmbundle/archive/#{@commit_sha}.tar.gz"

  name "TextMate support for Apache"
  homepage "https://github.com/textmate/apache.tmbundle"

  tmbundle "apache.tmbundle-#{@commit_sha}",
    target: "Apache.tmbundle"
end
