cask "noi" do
  version "1.1.0"
  sha256 "08583cba4bdc3308b49f393ef272f844690262ad3eb7ab6c9399a859ccbddfd2"

  url "https://github.com/lencx/Noi/releases/download/v#{version}/Noi-#{version}-arm64.dmg"
  name "Noi"
  desc "Power Your World with AI - Explore, Extend, Empower"
  homepage "https://github.com/lencx/Noi"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: ">= :monterey"

  app "Noi.app"

  uninstall quit: "com.lencx.noi"

  zap trash: [
    "~/Library/Application Support/Noi",
    "~/Library/Logs/Noi",
    "~/Library/Preferences/com.electron.noi.plist",
    "~/Library/Preferences/com.lencx.noi.plist",
    "~/Library/Saved Application State/com.electron.noi.savedState",
  ]
end
