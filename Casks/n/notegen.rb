cask "notegen" do
  arch arm: "aarch64", intel: "x64"

  version "0.29.0"
  sha256 arm:   "5f226ab66cc9961ce7df7eb87fb49b6368dbfef06d9e1cce6cf8f30aa29014b1",
         intel: "f65bb5682f5e5c5865f4ed26430e05e338503a24292ad2892c0d7ae99b32febc"

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
