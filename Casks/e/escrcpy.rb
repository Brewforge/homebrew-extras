cask "escrcpy" do
  arch arm: "arm64", intel: "x64"

  version "1.27.0"
  sha256 arm:   "c2b9d2f6dd93713cc1b22a04162cde8d768e99f0db484cf0c3e5630c2f4bec7e",
         intel: "7b6c8d92b2c50bb3e9c7d78e1d9f113448bae8860467afc23c61e1cf08b5aee3"

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
