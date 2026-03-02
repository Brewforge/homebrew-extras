cask "notegen" do
  arch arm: "aarch64", intel: "x64"

  version "0.26.1"
  sha256 arm:   "949efe468a9cea16ca483ba5a744321171920eec4fcedbf149e720acd3ff18ec",
         intel: "7a13382a4c7c7d9e0b10671fdb41ab1eb42b0ad7ded163f4dcf0e0d1f17f58a3"

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
