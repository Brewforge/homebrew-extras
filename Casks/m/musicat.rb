cask "musicat" do
  arch arm: "aarch64", intel: "x64"

  version "0.14.1"
  sha256 arm:   "84fa076150b71bd3d56d483d8da40cfcfbaf7613862c4d4f36d577d2b623f672",
         intel: "aae399d56b91fce62608a604f7fce952039d6c22498a8729c6e4669ab41e9eee"

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
