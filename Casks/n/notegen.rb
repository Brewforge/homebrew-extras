cask "notegen" do
  arch arm: "aarch64", intel: "x64"

  version "0.25.4"
  sha256 arm:   "8b81f817ac0716f1d46ef7c7095aafd49961b4b7b6483c706d222cbc36f979f4",
         intel: "66a631645a33584556e04b156dd9db8761a02c0fe88c204cfd644095b0192f3b"

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
