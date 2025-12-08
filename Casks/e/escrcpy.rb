cask "escrcpy" do
  arch arm: "arm64", intel: "x64"

  version "1.34.1"
  sha256 arm:   "7dbda9af8866e256688240801c24e1b799664ed95f657f4b20a7d3d10a4ebc12",
         intel: "d2bc85e5064001df169171f8fd2cb92605003d5c8543bcb36a3809b53421900e"

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
