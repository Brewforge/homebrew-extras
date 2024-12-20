cask "escrcpy" do
  arch arm: "arm64", intel: "x64"

  version "1.28.1"
  sha256 arm:   "ce1c30f1ad05a541ff52bbcad9c4aaadb2a494cb6db63876692929f6360f01bd",
         intel: "8e33f20a69d9163de41ef1c0e94739ba05e30684d039f1f15b0a7bee1feedc7e"

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
