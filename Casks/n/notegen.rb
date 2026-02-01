cask "notegen" do
  arch arm: "aarch64", intel: "x64"

  version "0.25.3"
  sha256 arm:   "395b68f64c8c0983ca9c80da463e4f206a88e272e50627032709c411135d73fb",
         intel: "14c84213c629d1524798d4e3459bedb12acfc2515feb1ee7a32a76b15f31be10"

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
