cask "escrcpy" do
  arch arm: "arm64", intel: "x64"

  version "1.22.4"
  sha256 arm:   "bf33d49252ca06e534eb9b34d52a720f1874b5e0c9b2518253c2b50fff97ce7a",
         intel: "3cee5d5d11a97e395de6a59a8e63c278ac0600939764f49b2bcb3ac265666420"

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
