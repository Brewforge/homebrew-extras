cask "notegen" do
  arch arm: "aarch64", intel: "x64"

  version "0.27.6"
  sha256 arm:   "59dcf1f332005b69cb957d537f6626c36121283717d81e99fb19748257f363ac",
         intel: "07b01f309fe459e6695e08e8e3639bf7d93ebe7053022f03530d4f35d95e5499"

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
