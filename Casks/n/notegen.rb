cask "notegen" do
  arch arm: "aarch64", intel: "x64"

  version "0.31.1"
  sha256 arm:   "1240fdb0cff4c2ddac03e6debfc3490bbfa3b348ad402c12537c28c57213ada8",
         intel: "5c9dedc99835c3a6834a6fa1ce63e8c8fd54004a140cb51edc763a7eb078abea"

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
