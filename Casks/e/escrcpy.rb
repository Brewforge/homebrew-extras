cask "escrcpy" do
  arch arm: "arm64", intel: "x64"

  version "1.24.2"
  sha256 arm:   "67e395f33557dafd1e6dd4a134c008c7848c843ba4c52451d04d1371cc3bce48",
         intel: "bfb69a76e9b2379bc1590424fde41d1f4d0bcc75fe82a507f9f4d2bcdb2f1fba"

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
