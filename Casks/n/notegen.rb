cask "notegen" do
  arch arm: "aarch64", intel: "x64"

  version "0.27.4"
  sha256 arm:   "e29366a58d5d889c45e47dfae01d062e36207195d75914f582e90e9717f4bea0",
         intel: "7dd17d4561d0fe645f49c423193e3a26790f9cdf510db3cbca1c8387564823cd"

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
