cask "escrcpy" do
  arch arm: "arm64", intel: "x64"

  version "2.1.7"
  sha256 arm:   "286d34bfecb7466f73a44061cbbc9065db30b4ac1f57ee585a3802f577fb0705",
         intel: "e47b03ea6e19676bf972b9be0d79096fede05b8fd555c3e355341e4a7f259ced"

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
