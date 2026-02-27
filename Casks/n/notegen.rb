cask "notegen" do
  arch arm: "aarch64", intel: "x64"

  version "0.26.0"
  sha256 arm:   "74f023fbc688fb7d518faa8853da94da3fce4cd62293dd96d87a79a793ab7403",
         intel: "1a6a49878ca0318ed7b3db37d0dd60000c3d2d306699aba92ca324ab750e578c"

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
