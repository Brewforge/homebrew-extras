cask "escrcpy" do
  arch arm: "arm64", intel: "x64"

  version "2.5.1"
  sha256 arm:   "59f1c827eb208b0d0b991b62c5a4336c12ef18bb898da59e76cc17f9e5e8d1b0",
         intel: "94972656868f277afa61683d23976a0460fc4c545541d9204dfed95f7290ebbe"

  url "https://github.com/viarotel-org/escrcpy/releases/download/v#{version}/Escrcpy-#{version}-mac-#{arch}.dmg"
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
