cask "notegen" do
  arch arm: "aarch64", intel: "x64"

  version "0.31.2"
  sha256 arm:   "776efb31543e137d712bab608881d780dee81dc9c7a3b2f4530a19569782423a",
         intel: "bf640250cb3b2ef2460ae7bfd35278afdb1d5611399cab90154425ea3f5f030a"

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
