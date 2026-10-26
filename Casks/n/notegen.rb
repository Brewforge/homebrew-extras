cask "notegen" do
  arch arm: "aarch64", intel: "x64"

  version "0.39.0"
  sha256 arm:   "65b68bcf952dadbe229a780ccc836d99c11d43526cfe1429e733857514c89c84",
         intel: "dc16f2976eb4c9ead4439999aae505b627bdd697f3eaa808a51df668294720b5"

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
