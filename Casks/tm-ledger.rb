cask "tm-ledger" do
  version "r20141019"
  sha256 "22d093a4334d00ebc14b14b812b38bbc3469c37be12eb09c0272877e8db3557d"

  @commit_sha = "9fc27f5cf3c49451a5417c2e879783075a3bf9af"

  url "https://github.com/lifepillar/Ledger.tmbundle/archive/#{@commit_sha}.tar.gz"

  name "TextMate support for Ledger 3 (http://www.ledger-cli.org)"
  homepage "https://github.com/lifepillar/Ledger.tmbundle"

  tmbundle "Ledger.tmbundle-#{@commit_sha}",
    target: "Ledger.tmbundle"
end
