cask "escrcpy" do
  arch arm: "arm64", intel: "x64"

  version "1.29.5"
  sha256 arm:   "8c514b0455a4b2c6133487f77073e64ca44ee87228deb752368fd9c267aef5ce",
         intel: "a90c9682ddffbb9e4a7f93d1d8d4f6b91f6e2607c1ddeb2d0232ebad63d87027"

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
