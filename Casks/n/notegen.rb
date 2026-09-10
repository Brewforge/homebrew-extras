cask "notegen" do
  arch arm: "aarch64", intel: "x64"

  version "0.37.0"
  sha256 arm:   "88fe049d295e5732cbec4fd2b1eaf4085f2946ed54251e4eb54ae1716812f85f",
         intel: "dd3c6acdcfba82bd757713cf0f22476c2c1a4a133362d10f960e11bbd73c75f5"

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
