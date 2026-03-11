cask "notegen" do
  arch arm: "aarch64", intel: "x64"

  version "0.26.5"
  sha256 arm:   "22a4f151fbe5225d14a0cf1c5e84ab45a65f259a3f3fe787414dd933f134cb41",
         intel: "7f1bed399f57fb339cb07a04bc7649ef2acb616dbbbf520c6a58a253d027ae6c"

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
