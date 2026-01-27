cask "notegen" do
  arch arm: "aarch64", intel: "x64"

  version "0.25.1"
  sha256 arm:   "43316577695c95ad6959cc3cf8b9180d69d629cb892d34762496063583264a05",
         intel: "894c13b840223bf216d0cfbcc176d9614a41b9cfeb475e702f5840fa14e97cd7"

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
