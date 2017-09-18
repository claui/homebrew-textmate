cask "tm-linter" do
  version "r6.10939dc"
  sha256 "b6f54e3d93227ca4b041e8ec33e9a14c08f4fd31e35b0f4c623ffaa8e46abf19"

  @commit_sha = "d1c558a967589ce433f7e2118dea583cf0c83b40"

  url "https://github.com/MikeMcQuaid/Linter.tmbundle/archive/#{@commit_sha}.tar.gz"

  name "Linting functionality for TextMate"
  homepage "https://github.com/MikeMcQuaid/Linter.tmbundle"

  tmbundle "Linter.tmbundle-#{@commit_sha}",
    target: "Linter.tmbundle"
end
