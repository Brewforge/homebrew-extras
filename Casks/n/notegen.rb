cask "notegen" do
  arch arm: "aarch64", intel: "x64"

  version "0.26.4"
  sha256 arm:   "0ad623103cb52bcf69c5501dd0ecff94d443587dc09532e23275bee3252a2d77",
         intel: "64af7517c9401b6f56a42aba14cf06716bdd128b3d3f37600070a9f373fd281d"

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
