cask "notegen" do
  arch arm: "aarch64", intel: "x64"

  version "0.29.2"
  sha256 arm:   "cc4185894dc606a36addf3403cea37dd7a4572e3d291228f47793491ba1ccdb2",
         intel: "ca4cdbf413d9864797f960afe8d13d9f3c9649fc220792e806a444ccd8f5a3f3"

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
