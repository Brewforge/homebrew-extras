cask "escrcpy" do
  arch arm: "arm64", intel: "x64"

  version "1.29.3"
  sha256 arm:   "f54e8410d129fe89abd705c8081d62f9d314a959184e2b18497b6d9409bd3776",
         intel: "fabe5bf4f424d581b4ed406d65a0055ae4a941d6a88a4278d84c1da568593496"

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
