cask "musicat" do
  arch arm: "aarch64", intel: "x64"

  version "0.12.0"
  sha256 arm:   "2c7e0ce9f1b45472b412f39f584423e99bdbe2d1a832495a23468f863306d221",
         intel: "88c4086e5258e02afe13d65b7b98f3674949f8a4619b334d38d680c6a6328c2c"

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
    "/Users/integzz/Library/Application Support/Musicat",
    "/Users/integzz/Library/Caches/Musicat",
    "/Users/integzz/Library/Logs/Musicat",
    "/Users/integzz/Library/Preferences/Musicat.plist",
    "/Users/integzz/Library/WebKit/Musicat",
    "/var/folders/py/n14256yd5r5ddms88x9bvsv40000gn/C/Musicat",
    "/var/folders/py/n14256yd5r5ddms88x9bvsv40000gn/T/Musicat",
  ]
end
