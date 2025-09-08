cask "escrcpy" do
  arch arm: "arm64", intel: "x64"

  version "1.32.0"
  sha256 arm:   "2249450d947f8d7991c64db33bd256ca1290efea3d3f1beb63159d9a2dbeb298",
         intel: "355787646b83e610adb679389457f4d69b6c647041a5383e99c19250babba787"

  url "https://github.com/viarotel-org/escrcpy/releases/download/v#{version}/Escrcpy-#{version}-mac-#{arch}.dmg"
  name "Escrcpy"
  desc "Graphical Scrcpy to display and control Android, devices powered by Electron"
  homepage "https://github.com/viarotel-org/escrcpy/"

  livecheck do
    url :url
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
