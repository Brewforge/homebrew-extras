cask "notegen" do
  arch arm: "aarch64", intel: "x64"

  version "0.27.9"
  sha256 arm:   "27c88dbab7248dd1712fe8e50255b1b99dc5c9feab1e893080463335952f5186",
         intel: "29d8eb4c073f5ed04782f1c57fc5db77d72305270649f114231e28bff9b00a62"

  url "https://github.com/codexu/note-gen/releases/download/note-gen-v#{version}/NoteGen_#{version}_#{arch}.dmg",
      verified: "github.com/codexu/note-gen/"
  name "NoteGen"
  desc "Application Bridging the Gap Between Recording and Writing with LLM"
  homepage "https://notegen.top/en/"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on :macos

  app "NoteGen.app"

  zap trash: [
    "~/Library/Application Support/com.codexu.NoteGen",
    "~/Library/Caches/com.codexu.NoteGen",
    "~/Library/WebKit/com.codexu.NoteGen",
  ]
end
