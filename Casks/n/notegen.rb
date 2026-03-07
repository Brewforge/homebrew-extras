cask "notegen" do
  arch arm: "aarch64", intel: "x64"

  version "0.26.3"
  sha256 arm:   "b96fa1556b2b9351088705981fdcd20204593d5e84b0c2e10ba33c9040de3d12",
         intel: "63b04425c322c6ad36f0b9538cf877ac54bed13f056ffe23c02ffa702e6270a0"

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
    "~/Library/Application Support/com.codexu.NoteGen",
    "~/Library/Caches/com.codexu.NoteGen",
    "~/Library/WebKit/com.codexu.NoteGen",
  ]
end
