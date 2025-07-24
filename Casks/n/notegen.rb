cask "notegen" do
  arch arm: "aarch64", intel: "x64"

  version "0.19.9"
  sha256 arm:   "50811b100d908f52f5559f22dacc1bfd60df971d8c71a06f7e0d2d0baf1dbafe",
         intel: "76ba2ef9e31376c131149eb926895ed294451a4dd7de7c04d6e32f93c8f2e994"

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
    "/var/folders/py/n14256yd5r5ddms88x9bvsv40000gn/C/com.codexu.NoteGen",
    "/var/folders/py/n14256yd5r5ddms88x9bvsv40000gn/T/com.codexu.NoteGen",
    "~/Library/Application Support/com.codexu.NoteGen",
    "~/Library/Caches/com.codexu.NoteGen",
    "~/Library/WebKit/com.codexu.NoteGen",
  ]
end
