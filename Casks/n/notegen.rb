cask "notegen" do
  arch arm: "aarch64", intel: "x64"

  version "0.22.4"
  sha256 arm:   "b15f1e5755b118e58c01714c4b15c9a6ddf22a1e271a8d3357b0744905bc9dd4",
         intel: "c70ff91fd03be859ed7d38965743c3f834cb63557dc0ef447c31adba7a703c4e"

  url "https://github.com/codexu/note-gen/releases/download/note-gen-v#{version}/NoteGen_#{version}_#{arch}.dmg",
      verified: "github.com/codexu/note-gen/"
  name "NoteGen"
  desc "Application Bridging the Gap Between Recording and Writing with LLM"
  homepage "https://notegen.top/en/"

  livecheck do
    url :url
    strategy :github_latest
  end

  app "NoteGen.app"

  zap trash: [
    "/var/folders/py/n14256yd5r5ddms88x9bvsv40000gn/C/com.codexu.NoteGen",
    "/var/folders/py/n14256yd5r5ddms88x9bvsv40000gn/T/com.codexu.NoteGen",
    "~/Library/Application Support/com.codexu.NoteGen",
    "~/Library/Caches/com.codexu.NoteGen",
    "~/Library/WebKit/com.codexu.NoteGen",
  ]
end
