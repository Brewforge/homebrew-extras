cask "notegen" do
  arch arm: "aarch64", intel: "x64"

  version "0.26.2"
  sha256 arm:   "a7556098646b074761214394981da5c18668f81ac2cbd4d36678475f797c8133",
         intel: "63db7d2f1aaa8016559fc65aa18ba92621232c9e97b3e8ef0f1478048d924e8f"

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
