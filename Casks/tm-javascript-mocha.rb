cask "tm-javascript-mocha" do
  version "141614f34614162d55bb7eebbe46fca0f894a49f"
  sha256 "0019dfc4b32d63c1392aa264aed2253c1e0c2fb09216f8e2cc269bbfb8bb49b5"

  url "https://github.com/fiveisprime/mocha/archive/#{version}.tar.gz"

  name "Mocha test bundle for TextMate."
  homepage "https://github.com/fiveisprime/mocha.tmbundle"

  tmbundle "mocha-tmbundle-#{version}", target: "JavaScript-Mocha.tmbundle"
end
