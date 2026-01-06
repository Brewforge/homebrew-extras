cask "noi" do
  version "0.4.0"
  sha256 "8cfac99a877a4f9641b53afaf0dc1bc02f3eb9fb2994721ac396c84988cf0aa8"

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
