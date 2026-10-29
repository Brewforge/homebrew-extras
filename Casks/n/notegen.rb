cask "notegen" do
  arch arm: "aarch64", intel: "x64"

  version "0.39.1"
  sha256 arm:   "7b764a5455cda9b935bf5cfdd82100240b05f74d1ca4f3eb1dc8fa3f10d2d9d5",
         intel: "dfec3ce7e3fc5f21aecbd09cbaaf23cf38bd8c7b2434783bf86ef8754bb258e1"

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
