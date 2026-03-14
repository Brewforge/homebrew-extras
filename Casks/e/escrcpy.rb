cask "escrcpy" do
  arch arm: "arm64", intel: "x64"

  version "2.6.2"
  sha256 arm:   "13af643138162e861a06cd13cf32bfa6f51b4e448468903bfbebee0b6a801ef8",
         intel: "5e04ec934657d81099e92515b7a96a144209be6c5f97ed37b89bd8427ece44a2"

  url "https://github.com/viarotel-org/escrcpy/releases/download/v#{version}/Escrcpy-#{version}-mac-#{arch}.dmg"
  name "Escrcpy"
  desc "Graphical Scrcpy to display and control Android, devices powered by Electron"
  homepage "https://github.com/viarotel-org/escrcpy/"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on macos: ">=:big_sur"

  app "Escrcpy.app"

  zap trash: [
    "~/Library/Application Support/escrcpy",
    "~/Library/logs/escrcpy",
    "~/Library/Preferences/org.viarotel.escrcpy.plist",
  ]
end
