cask "notegen" do
  arch arm: "aarch64", intel: "x64"

  version "0.25.0"
  sha256 arm:   "607c3fdc0956ec246fbab1c5a2c7e8bcc1e74ff6eb27176f887035c19f9cf980",
         intel: "6f6a9486024afad2a4da8217cf98c6abd92c682b9647b2cb84f4e003673191ae"

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
