cask "notegen" do
  arch arm: "aarch64", intel: "x64"

  version "0.30.0"
  sha256 arm:   "f16650d63e6a3dca9e317b5737377710929c5df1c2bb2d552af493c2059582b2",
         intel: "b9822a684b28d5cc58c2b4dc25e7cf3cf981866a7dfc5b515d423833fd8e9985"

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
