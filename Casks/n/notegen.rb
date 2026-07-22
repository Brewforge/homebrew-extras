cask "notegen" do
  arch arm: "aarch64", intel: "x64"

  version "0.32.1"
  sha256 arm:   "b44bc4acdf98c98564f65438c9c1c9706225901d5cb0588ed9d51ebf46553e80",
         intel: "fdbe04bbd3085bf2b98fa45f688cb8c9bfab1f8dd3b186081885283858d84bb9"

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
