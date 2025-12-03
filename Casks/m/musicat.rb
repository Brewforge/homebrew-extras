cask "musicat" do
  arch arm: "aarch64", intel: "x64"

  version "0.15.2"
  sha256 arm:   "a5b5d8b3bb23254dacf6f92861630ba5dad8be3247a6d83d0a7702d5433b1b1b",
         intel: "d8040d9b5db529897270f7af5b1d56ca6491c51dd332ef461c5a655b9251bb4d"

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
    "/var/folders/py/n14256yd5r5ddms88x9bvsv40000gn/C/Musicat",
    "/var/folders/py/n14256yd5r5ddms88x9bvsv40000gn/T/Musicat",
    "~/Library/Application Support/Musicat",
    "~/Library/Caches/Musicat",
    "~/Library/Logs/Musicat",
    "~/Library/Preferences/Musicat.plist",
    "~/Library/WebKit/Musicat",
  ]
end
