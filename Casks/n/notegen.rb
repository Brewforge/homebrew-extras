cask "notegen" do
  arch arm: "aarch64", intel: "x64"

  version "0.35.1"
  sha256 arm:   "2dfefe7f3d4d3705e93e172e055d0a0e0e54315758edb39361b6ce8b9aed5472",
         intel: "57b55c6ebe59330564d14b4b58a42f062c435a5f54ee7731aca65e2d226798a0"

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
