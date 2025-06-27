cask "escrcpy" do
  arch arm: "arm64", intel: "x64"

  version "1.29.9"
  sha256 arm:   "b0e16479fc0b5ad43321ba4828fbbecec736541b5d018d34fe3ba4c584c361f7",
         intel: "f34eb532785fc390d8eb403f757fe0fdc10f288e6b114c61e0db5df21123c2a9"

  url "https://github.com/viarotel-org/escrcpy/releases/download/v#{version}/Escrcpy-#{version}-mac-#{arch}.dmg"
  name "Escrcpy"
  desc "Graphical Scrcpy to display and control Android, devices powered by Electron"
  homepage "https://github.com/viarotel-org/escrcpy/"

  livecheck do
    url :url
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
