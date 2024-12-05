cask "escrcpy" do
  arch arm: "arm64", intel: "x64"

  version "1.27.6"
  sha256 arm:   "1d79159446443881288d99a82b4c673cf9a9964fd7a45d85daf3f197b0d8effe",
         intel: "c291f94e46dc431ae5607f9999916d17edd6fb65bc3ccf71096b73bafaa4faf9"

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
