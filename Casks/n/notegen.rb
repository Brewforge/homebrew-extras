cask "notegen" do
  arch arm: "aarch64", intel: "x64"

  version "0.33.0"
  sha256 arm:   "fb61ea8c877d67fde4fc119786c010c36fb35dc582b0e3a9d3d6807ef4b95d58",
         intel: "de2f698b6df33fa85f7dbb310c0fcfe5ff418af9b244dbd1c6895e7a57304286"

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
