cask "notegen" do
  arch arm: "aarch64", intel: "x64"

  version "0.38.0"
  sha256 arm:   "28cf52607f931d6ff7ce841efbaa744699403c16b147a814629914f7bd960357",
         intel: "ab2ebe0e91a53bf02412647e67478238f2dda907cb437a46487cd13b9365c219"

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
