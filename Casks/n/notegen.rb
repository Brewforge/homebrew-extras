cask "notegen" do
  arch arm: "aarch64", intel: "x64"

  version "0.27.5"
  sha256 arm:   "fb81053ce2e55216fea0274f26d9a6c55509facdee543e6c66f737a8d70f7994",
         intel: "7ed7c7d8d9c895569d97ec6659388e9c395000d1d30e9de85f5ba7e956ece926"

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
