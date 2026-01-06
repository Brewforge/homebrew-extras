cask "escrcpy" do
  arch arm: "arm64", intel: "x64"

  version "2.0.1"
  sha256 arm:   "853f043473d616b9fcdb49958bb05a7cbc49904fb7faa9422765744ba39a91be",
         intel: "40e0c701581587d3fe548d311a56f2bd6b95d906276254b49845d3a4d69a9dd8"

  url "https://github.com/viarotel-org/escrcpy/releases/download/workspace-v#{version}/Escrcpy-#{version}-mac-#{arch}.dmg"
  name "Escrcpy"
  desc "Graphical Scrcpy to display and control Android, devices powered by Electron"
  homepage "https://github.com/viarotel-org/escrcpy/"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on macos: ">=:big_sur"

  app "Escrcpy.app"

  zap trash: [
    "~/Library/Application Support/escrcpy",
    "~/Library/logs/escrcpy",
    "~/Library/Preferences/org.viarotel.escrcpy.plist",
  ]
end
