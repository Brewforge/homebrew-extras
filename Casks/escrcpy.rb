cask "escrcpy" do
  arch arm: "arm64", intel: "x64"

  version "1.22.2"
  sha256 arm:   "0ebed7c6f5e0fd9abefe48b14a7bae98d8df51ef0085f9ec9489ee707c5dafd1",
         intel: "35c3f0c236938e34d09c178727d1e2e62d63f04cb26aec79d353ca5b5eb599ba"

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
