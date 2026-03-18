cask "notegen" do
  arch arm: "aarch64", intel: "x64"

  version "0.27.1"
  sha256 arm:   "04dbf7f50afa030fce5f18eb4bf5240561e0e26bbe2f0f27833649173f645758",
         intel: "c8296e03993c35d309a7e91ed9f6b775cf55ccfe22b4f98b3c0db8b43cf746f4"

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
