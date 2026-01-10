cask "notegen" do
  arch arm: "aarch64", intel: "x64"

  version "0.24.0"
  sha256 arm:   "119ebe11bead18d4e4690aa075cfb6e248b29385b5caa3ca51c2e3f6920e5f9e",
         intel: "67d8dcfd7bc2e07ac882bac098a5af011bc368ee5114645b10321147ab065c16"

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
