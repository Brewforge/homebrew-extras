cask "escrcpy" do
  arch arm: "arm64", intel: "x64"

  version "1.25.2"
  sha256 arm:   "d369f23883b581f09180a64e800bf8ef4f05012b34aa9a4fda8067dfa52db616",
         intel: "8b7ae764291d29ba622f37292813fd2f2c2fcae25eb33a5000ec72728932b333"

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
