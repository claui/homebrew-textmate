cask "tm-ca65-assembler" do
  version "r20060616"
  sha256 "a9446d37dfd1351b03ca3fe50b6ad8fccf7df73434302eb851d259339a83abbc"

  url "http://codebase64.org/lib/exe/fetch.php?media=base:6502_assembler.tmbundle.zip"

  name "ca65, 6502 bundle for TextMate"
  homepage "http://codebase64.org/doku.php?id=base:crossdev"

  tmbundle "6502 Assembler.tmbundle"
end
