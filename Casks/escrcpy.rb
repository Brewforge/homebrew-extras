cask "escrcpy" do
  arch arm: "arm64", intel: "x64"

  version "1.20.1"
  sha256 arm:   "694b1d1b2893ee6bcda65c6584cc2bda5b8a1b7f357cd86774ea540779c8df95",
         intel: "36d23f750d608b9ac8942da6550695c81b13b041faf2ed4af9d236205f295c02"

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
