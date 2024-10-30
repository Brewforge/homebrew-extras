cask "escrcpy" do
  arch arm: "arm64", intel: "x64"

  version "1.25.3"
  sha256 arm:   "d4863929739408c0bfed026a8e13299f46e2e484e10c5062aafe75f24a8ab312",
         intel: "f4e4a2cee5387e8d457e0a32cc524fb4c6ae346306cb349e6f7b45a2a0bb5826"

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
