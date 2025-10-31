cask "notegen" do
  arch arm: "aarch64", intel: "x64"

  version "0.22.3"
  sha256 arm:   "946825cf5b544c2fec4c60022f2b960c78b5f2c0d0e2f5cf317f5c071d92e88c",
         intel: "c1027d6057e4b5d686fe7568a80102a2b2f97b66b1d1cf127838fefada82b4a0"

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
