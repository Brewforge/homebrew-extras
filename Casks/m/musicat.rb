cask "musicat" do
  arch arm: "aarch64", intel: "x64"

  version "0.16.0"
  sha256 arm:   "effe03996f28797ffd75a9b4e20be192a4e601fdeebf5f8e0fca3854219fa2bb",
         intel: "86fc124b6f7e75468425bc24f969836ead9e1c6b97ddbac45e09d642e9c377e4"

  url "https://github.com/basharovV/musicat/releases/download/v#{version}/Musicat_#{version}_#{arch}.dmg"
  name "Musicat"
  desc "Sleek desktop music player and tagger for offline music"
  homepage "https://github.com/basharovV/musicat"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true

  app "Musicat.app"

  zap trash: [
    "~/Library/Application Support/Musicat",
    "~/Library/Caches/Musicat",
    "~/Library/Logs/Musicat",
    "~/Library/Preferences/Musicat.plist",
    "~/Library/WebKit/Musicat",
  ]
end
