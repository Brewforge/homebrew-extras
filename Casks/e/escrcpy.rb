cask "escrcpy" do
  arch arm: "arm64", intel: "x64"

  version "1.31.1"
  sha256 arm:   "265ecce55d875803e431ee6b7ab64ed71242dc38f3ccbd34f898929c14bb5315",
         intel: "be36e1d8e261c6203b468825dc71285a9ff9232f0a807653d3c87fadab9b34e8"

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
