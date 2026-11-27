cask "notegen" do
  arch arm: "aarch64", intel: "x64"

  version "0.40.0"
  sha256 arm:   "a69cac2551e2cb4b08e8fd71e8b99b83feccf43b134bfa9f5fcf8a3bd234145d",
         intel: "8b92d15ee566dd81769579e873aca5f216a557cc1b83968374eba30e4466d095"

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
