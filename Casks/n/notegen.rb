cask "notegen" do
  arch arm: "aarch64", intel: "x64"

  version "0.28.0"
  sha256 arm:   "7e11c2279785881fc83ec03de175abd819e3645a4fa58474ae09123478c20ff0",
         intel: "35d8ccd1b3da9baa33bd02655e466bfcae8061addeda82b86c65cbf6c24dde0f"

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
  depends_on :macos

  app "NoteGen.app"

  zap trash: [
    "~/Library/Application Support/com.codexu.NoteGen",
    "~/Library/Caches/com.codexu.NoteGen",
    "~/Library/WebKit/com.codexu.NoteGen",
  ]
end
