cask "escrcpy" do
  arch arm: "arm64", intel: "x64"

  version "1.29.7"
  sha256 arm:   "1e6e5e2b722b85c2b97cec35356e3cab4db2d302be1ff37ad733b6982560d65d",
         intel: "95204cec2856896ffce03a95e064a02311e7615d4252fde9561e71ec2fcba713"

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
