cask "notegen" do
  arch arm: "aarch64", intel: "x64"

  version "0.27.3"
  sha256 arm:   "fe73187afe7d89d567c4891ecee1f961536a6e0125d4da7679025fc6df367734",
         intel: "0b8f7411e640bb44b168dfb4b33dc78b5ca7296fc0b3ddf83f08436b4fd535d7"

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
