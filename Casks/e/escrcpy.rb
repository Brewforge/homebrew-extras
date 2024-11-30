cask "escrcpy" do
  arch arm: "arm64", intel: "x64"

  version "1.27.5"
  sha256 arm:   "f6df28f6946da3f38a23ab92261ba667b5219296172918f9bd206975ab3eec3b",
         intel: "8d99fbef8a9e99d69302983fbed4c8cd6e6d98ec6c5682ece0130b04bebe5758"

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
