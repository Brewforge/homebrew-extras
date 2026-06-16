cask "notegen" do
  arch arm: "aarch64", intel: "x64"

  version "0.29.1"
  sha256 arm:   "01db1f613d1f294c51583cc2a020fb6d9b2509230683b9cc5847e4e9386bf0b2",
         intel: "87d63de71df1eb887bd031abe118f99dfb2ada122e513ccd70894f6f6e8ee12d"

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
