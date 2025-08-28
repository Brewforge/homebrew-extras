cask "musicat" do
  arch arm: "aarch64", intel: "x64"

  version "0.13.1"
  sha256 arm:   "3333549def3a701b143e60973a36c1fa9fae7f137a2aea39f14cf5082b078bca",
         intel: "105514825562359e4122bd6c02d890f60defa9f9e3e887fd056a4347f2de047a"

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
