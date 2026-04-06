cask "musicat" do
  arch arm: "aarch64", intel: "x64"

  version "0.17.2"
  sha256 arm:   "dfaea82f34bf6817dc6d7a97cc90bbe07d83d82ceffb7c797c0d8e70ee815a28",
         intel: "f0970ea117715d9b123ee3905f77e88159b58a9250ecc157a0574ca1f40bbeb1"

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
