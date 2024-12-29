cask "escrcpy" do
  arch arm: "arm64", intel: "x64"

  version "1.28.3"
  sha256 arm:   "3a1dfc4a5fed486fc1626483add3fc3005dfce3ef90941db6bd55e8429612092",
         intel: "96e9b12989eb90b09ddceff60f55d10f0e2161bb9cd8862f4c42738f66efe02f"

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
