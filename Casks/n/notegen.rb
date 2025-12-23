cask "notegen" do
  arch arm: "aarch64", intel: "x64"

  version "0.23.1"
  sha256 arm:   "f97648e7a2da3bec2c19bc360b673e35189ecee414b88a337582494c00133dd9",
         intel: "94a0e54d05ea8c55b76690f9df16eed484bc6afdfce84a0dfb5e1ac67af19e90"

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
    "/var/folders/py/n14256yd5r5ddms88x9bvsv40000gn/C/com.codexu.NoteGen",
    "/var/folders/py/n14256yd5r5ddms88x9bvsv40000gn/T/com.codexu.NoteGen",
    "~/Library/Application Support/com.codexu.NoteGen",
    "~/Library/Caches/com.codexu.NoteGen",
    "~/Library/WebKit/com.codexu.NoteGen",
  ]
end
