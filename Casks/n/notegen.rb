cask "notegen" do
  arch arm: "aarch64", intel: "x64"

  version "0.36.0"
  sha256 arm:   "2c198cd7a5f8316120b36a691e74487105e244b23a497c18a90b103b15a9a07b",
         intel: "e8c89c8f875e34b5abb54138561c669eeee0dce4d1ef43ad13fdee83b7574675"

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
