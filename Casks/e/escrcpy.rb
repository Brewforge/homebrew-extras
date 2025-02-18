cask "escrcpy" do
  arch arm: "arm64", intel: "x64"

  version "1.28.7"
  sha256 arm:   "8fb2a5e48f423345919d872dae880634120a4e36ba826a68d375199f3351b397",
         intel: "c1854c92f27a9dcbbe9507e122b9d6737f1f3f19def6ee91b7d41f65cda7239d"

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
