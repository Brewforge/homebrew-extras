cask "notegen" do
  arch arm: "aarch64", intel: "x64"

  version "0.37.1"
  sha256 arm:   "e4ec6c6228cad1dac33e87589973552590a77d6f93960985db8b8de4457931f5",
         intel: "7089f346a951831d53896e1bf343fa5e33041fdc3f8a7a649e06880113280a3d"

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
