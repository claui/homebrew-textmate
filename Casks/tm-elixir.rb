cask "tm-elixir" do
  version :latest
  sha256 :no_check

  url "https://github.com/elixir-lang/elixir-tmbundle/archive/master.tar.gz"

  name "A TextMate Bundle for the Elixir programming language."
  homepage "https://github.com/elixir-lang/elixir-tmbundle"

  tmbundle "elixir-tmbundle-master", target: "Elixir.tmbundle"
end
