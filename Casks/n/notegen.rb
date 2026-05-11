cask "notegen" do
  arch arm: "aarch64", intel: "x64"

  version "0.27.8"
  sha256 arm:   "6f11f050c2667e544828c68154bf1c57eebcc86c2722a122aea89c72481996d2",
         intel: "cb74d38d17446bd136cee2d6217f52c2a705a2ce9b4ecfae4b1a755d876aa97d"

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

  app "NoteGen.app"

  zap trash: [
    "~/Library/Application Support/com.codexu.NoteGen",
    "~/Library/Caches/com.codexu.NoteGen",
    "~/Library/WebKit/com.codexu.NoteGen",
  ]
end
