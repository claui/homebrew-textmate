cask "tm-asciidoc" do
  version "0.2"
  sha256 "d099f2a92667cb8de9233e951181199ec40e542608d33ecd552ea790bda1a8ac"

  url "https://github.com/mattneub/AsciiDoc-TextMate-2.tmbundle/archive/v#{version}.tar.gz"

  name "AsciiDoc bundle for TextMate 2"
  homepage "https://github.com/mattneub/AsciiDoc-TextMate-2.tmbundle"

  tmbundle "AsciiDoc-TextMate-2.tmbundle-#{version}",
    target: "AsciiDoc-TextMate-2.tmbundle"
end
