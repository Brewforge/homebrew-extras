cask "notegen" do
  arch arm: "aarch64", intel: "x64"

  version "0.38.2"
  sha256 arm:   "449fa0924b7fbe242f0e4205e6d4820fd3b0f4fcdae8f9529d9fe15a8c070543",
         intel: "93b5f9a466c1218a421cfd21573fa26f1027c584e45f552cb9bcdeb2c6e299c9"

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
