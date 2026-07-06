cask "notegen" do
  arch arm: "aarch64", intel: "x64"

  version "0.30.1"
  sha256 arm:   "6c58d89d4c744f455033bbd45be0fa06e55e6015ff48132fd076fe96f08bc2d5",
         intel: "9c840b4fb542b0ca50af6ce21afb41de75f06875a99114f2df4c8e487d968b39"

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
