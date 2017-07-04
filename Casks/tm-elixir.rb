cask "tm-elixir" do
  version :latest
  sha256 "0cdf4436ad24420ebfc1c25338d273f3eef32a384c91bd5bcafb47ba72292e2f"

  url "https://github.com/elixir-lang/elixir-tmbundle/archive/master.tar.gz"

  name "A TextMate Bundle for the Elixir programming language."
  homepage "https://github.com/elixir-lang/elixir-tmbundle"

  tmbundle "Elixir.tmbundle"
end
