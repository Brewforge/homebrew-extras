cask "escrcpy" do
  arch arm: "arm64", intel: "x64"

  version "1.19.3"
  sha256 arm:   "0a2952bad9df81166185d09046002d05067547fa8436c6364312e0f9b540967c",
         intel: "a0699470f9a796a2a7e2619585b9c58ccd4527b1f7b9483d67b30abedd81cb66"

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
