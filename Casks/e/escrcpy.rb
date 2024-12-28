cask "escrcpy" do
  arch arm: "arm64", intel: "x64"

  version "1.28.2"
  sha256 arm:   "0b26db4714acef8593cb0014212654b1ca4b8c006b047f78ebe4381d2ed39943",
         intel: "cbc55e145c3cb5bf72910299abee66cf43938aca93c02ae44272225a812fd0ae"

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
