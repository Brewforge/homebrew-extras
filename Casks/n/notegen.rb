cask "notegen" do
  arch arm: "aarch64", intel: "x64"

  version "0.27.7"
  sha256 arm:   "ebcfacdb1acf16e21f467a96d046c0166358039aa3ebc33834d794cfe5531328",
         intel: "8e709b30c1992409610b936c973f6b40d71bcaae00cb4c083d3dc8e388dbd177"

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
