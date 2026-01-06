cask "noi" do
  version "1.0.0"
  sha256 "baf42d8349b1f8481b13b6b2b79e51abbb5eb63d8e96580df7f4d2a87b5c82e7"

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
