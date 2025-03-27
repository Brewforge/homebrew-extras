cask "escrcpy" do
  arch arm: "arm64", intel: "x64"

  version "1.29.0"
  sha256 arm:   "69fd920a652a8d2a9a7b10090cd0a7476df9a792d84fe6cf934bdad76dc5da83",
         intel: "d088b6f4ae646fb318e60c3dbb4e5724bbc8a06b738e56dbaa53ba5954a0946c"

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
