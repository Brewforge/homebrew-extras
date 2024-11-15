cask "escrcpy" do
  arch arm: "arm64", intel: "x64"

  version "1.26.4"
  sha256 arm:   "b6f1714c2db78700f0faea04fbc71c5cf0a91d90c79ef56095f0ff6474e46ebe",
         intel: "99c0e7eb0ab5a57d21c0d69111148029bc9b808283ea70b96617557f870f5318"

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
