cask "escrcpy" do
  arch arm: "arm64", intel: "x64"

  version "1.30.1"
  sha256 arm:   "e04c89a57913094ba83d829c4932728bfeb583878810b9a663611d4c38ab2f9d",
         intel: "e3a64328d10b5b34f6f5cbe3c3044a41d3de98140408f7ca977ba7df174a0ca7"

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
