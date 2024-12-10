cask "escrcpy" do
  arch arm: "arm64", intel: "x64"

  version "1.27.7"
  sha256 arm:   "4a98e40f7811cfbb5558526f211b8603739963641990944538064e14d6ee26d9",
         intel: "5b2d7aca1c163ef07571a5763ece8ec5ca8704d9ab9f633d8396ecb0e5d22ebf"

  mirror = "https://mirror.ghproxy.com/"
  origin = "https://github.com/viarotel-org/escrcpy/releases/download/v#{version}/Escrcpy-#{version}-mac-#{arch}.dmg"

  url "#{mirror}#{origin}",
      verified: "mirror.ghproxy.com/"
  name "Escrcpy"
  desc "Graphical Scrcpy to display and control Android, devices powered by Electron"
  homepage "https://github.com/viarotel-org/escrcpy/"

  livecheck do
    url origin.to_s
    strategy :github_latest
  end

  auto_updates true

  app "Escrcpy.app"

  zap trash: [
    "~/Library/Application Support/escrcpy",
    "~/Library/logs/escrcpy",
    "~/Library/Preferences/org.viarotel.escrcpy.plist",
  ]
end
