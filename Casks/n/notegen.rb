cask "notegen" do
  arch arm: "aarch64", intel: "x64"

  version "0.23.0"
  sha256 arm:   "a19c0bd81b4dd83d64bac2ce74a9088810071f7d199340b255799b149fe14c31",
         intel: "4890c0c3467028948f1f38cf1d194615c3776b08ac0d7bd2c71e0d9d6ddaa1bd"

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
