cask "tm-elixir" do
  version "1b4315ffd8e01769c254f5f5dbccc23cc469a6b8"
  sha256 "6b6277aae39bfb78ea22d99d923adda8f5c242b74aca3433278f5a24d4ea2fa3"

  url "https://github.com/elixir-lang/elixir-tmbundle/archive/#{version}.tar.gz"

  name "A TextMate Bundle for the Elixir programming language."
  homepage "https://github.com/elixir-lang/elixir-tmbundle"

  tmbundle "elixir-tmbundle-#{version}", target: "Elixir.tmbundle"
end
