cask "tm-6502-assembler" do
  version "r20120906"
  sha256 "0d029aafa863f6b9d7449720f184a0e3bcbaa701af4572fa3d05a93d5e608951"

  @commit_sha = "7ca73008dadb5edcd3941b3f8fddb728f876484e"

  url "https://github.com/fastjack/6502-Assembler.tmbundle/archive/#{@commit_sha}.tar.gz"

  name "A TextMate bundle with syntax support for the ACME cross assembler"
  homepage "https://github.com/fastjack/6502-Assembler.tmbundle"

  tmbundle "6502-Assembler.tmbundle-#{@commit_sha}",
    target: "6502-Assembler.tmbundle"
end
