cask "notegen" do
  arch arm: "aarch64", intel: "x64"

  version "0.27.2"
  sha256 arm:   "6285758e1af73091f6f1bc410afd5ccb5ca8f894501409696ff01be3c943d95b",
         intel: "e927df823669ac48aac92e109c04f218977660d5c0d18d1e17c815e301e3cb58"

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

  app "NoteGen.app"

  zap trash: [
    "~/Library/Application Support/com.codexu.NoteGen",
    "~/Library/Caches/com.codexu.NoteGen",
    "~/Library/WebKit/com.codexu.NoteGen",
  ]
end
