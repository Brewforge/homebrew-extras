cask "musicat" do
  arch arm: "aarch64", intel: "x64"

  version "0.15.0"
  sha256 arm:   "13cdf3ff9b21155b844a8f1272ec7660b2620e87c45ae0fee6ccbf1cf26b60ca",
         intel: "d52819ee00375bd4b6b7f0c28ff793006e0b6ad780fa924dc6863b0937511b92"

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
