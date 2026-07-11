cask "notegen" do
  arch arm: "aarch64", intel: "x64"

  version "0.31.0"
  sha256 arm:   "5fc1d4cf93b8148a4fed6ac23603af09eeb9617d5d56e4a6e94cda5304ac7438",
         intel: "29be6df484d914648f9d8a6f6884d4ff3393d125b5439e3dfc5d9766b0374541"

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
