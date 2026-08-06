cask "notegen" do
  arch arm: "aarch64", intel: "x64"

  version "0.34.1"
  sha256 arm:   "66298509e00ccce681977ceaca4b7ff3521507694bd42630f97e2a6d0f9b2768",
         intel: "227975cf5cb584f76020bac756213a9aee39e56320f044a6e8c236b904cb4c3c"

  url "https://github.com/codexu/note-gen/releases/download/note-gen-v#{version}/NoteGen_#{version}_#{arch}.dmg",
      verified: "github.com/codexu/note-gen/"
  name "NoteGen"
  desc "Application Bridging the Gap Between Recording and Writing with LLM"
  homepage "https://notegen.top/en/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on :macos

  app "NoteGen.app"

  zap trash: [
    "~/Library/Application Support/com.codexu.NoteGen",
    "~/Library/Caches/com.codexu.NoteGen",
    "~/Library/WebKit/com.codexu.NoteGen",
  ]
end
