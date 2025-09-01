cask "escrcpy" do
  arch arm: "arm64", intel: "x64"

  version "1.31.2"
  sha256 arm:   "a85dcb6e99fc443572be3eb2ee272d6c77351fa15f025f9248fc9509edadedda",
         intel: "a0fe8acea3ccc0006198b49f7e24e5c0e9f74873abc561460960ef8be2775941"

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
