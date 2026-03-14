cask "notegen" do
  arch arm: "aarch64", intel: "x64"

  version "0.27.0"
  sha256 arm:   "44e7142bd0b5f4d3a1b4c78b2603d99972cec440dc588614bf0fedf167615d97",
         intel: "33c6265150f7755e6e4cfb16a418f5f5ddf470302e99805fe9b3a9860907bdf6"

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
