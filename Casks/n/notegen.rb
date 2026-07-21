cask "notegen" do
  arch arm: "aarch64", intel: "x64"

  version "0.32.0"
  sha256 arm:   "b5837ac6908928feb22f4ba09fa6756035ab503eb46184d8f85da6c90f905f79",
         intel: "14f80cde7c33c450d91692399a2cbb2fd2cc0ee1f1a4068cb046800b7bc7c5ee"

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
