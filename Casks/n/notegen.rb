cask "notegen" do
  arch arm: "aarch64", intel: "x64"

  version "0.39.2"
  sha256 arm:   "a00a992dcb8c8dc570eebf28dfe5a966ce8a732305b569ca9c2da14fd27d3bc9",
         intel: "81ef66e48e46bbb5f01318a2793d932539285e2644e550af9d7c01451f747d6d"

  url "https://github.com/codexu/note-gen/releases/download/note-gen-v#{version}/NoteGen_#{version}_#{arch}.dmg"
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
