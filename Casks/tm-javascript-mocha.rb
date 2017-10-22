cask "tm-javascript-mocha" do
  version "141614f34614162d55bb7eebbe46fca0f894a49f"
  sha256 "6b6277aae39bfb78ea22d99d923adda8f5c242b74aca3433278f5a24d4ea2fa3"

  url "https://github.com/fiveisprime/mocha/archive/#{version}.tar.gz"

  name "Mocha test bundle for TextMate."
  homepage "https://github.com/fiveisprime/mocha.tmbundle"

  tmbundle "mocha-tmbundle-#{version}", target: "JavaScript-Mocha.tmbundle"
end
