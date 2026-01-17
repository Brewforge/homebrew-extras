cask "notegen" do
  arch arm: "aarch64", intel: "x64"

  version "0.24.1"
  sha256 arm:   "6483f5928a542264528bcb0dd77276dfcf4b093aabd3645a7f93943b0176a7ee",
         intel: "5f25989f147e1ea426e5f10ff1163cc97448a264bb65bcee10506be7121cb8df"

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
