cask "notegen" do
  arch arm: "aarch64", intel: "x64"

  version "0.23.6"
  sha256 arm:   "3b73a802271def11275d1b90da803b1a158339ccf9190636444f780ffc9be30b",
         intel: "42d46f6c01535e7e0327df152f43a7758e9f3cec7cbf31818c6e4d5e64ac0ca7"

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
