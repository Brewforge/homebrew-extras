cask "notegen" do
  arch arm: "aarch64", intel: "x64"

  version "0.25.2"
  sha256 arm:   "bd7495d9dac5d5a56751f6c2995f6b6fae2a13e792d49ed51ba169bddca27df1",
         intel: "6a3f41ee123d9173d798db3fcec49217e3d6fe31763d267ed78b7324533b603a"

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
