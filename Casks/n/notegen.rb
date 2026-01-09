cask "notegen" do
  arch arm: "aarch64", intel: "x64"

  version "0.23.7"
  sha256 arm:   "51c493550b6b2a1e359f72358f61c8bd7ea56322efaacb629258b2c717b4e2f6",
         intel: "d74c2d3ac07ee89288cd4bb88201b6ca3ebcc8c849c454e452eb5e0f30244ce5"

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
