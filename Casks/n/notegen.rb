cask "notegen" do
  arch arm: "aarch64", intel: "x64"

  version "0.38.1"
  sha256 arm:   "f39d7d77ac2f8ae867c320cced8d41aa48eff5fffdd28f7d517151a0fac310f6",
         intel: "d15d5279387d14d980c7843fa31bd9c810eea2a1e32ec2569c8afbbd1a0cd3a3"

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
