cask "escrcpy" do
  arch arm: "arm64", intel: "x64"

  version "2.11.1"
  sha256 arm:   "69d3c6a50e2625da3cf17733f1feba2196361a6ca529bfc5825b60d28593bf68",
         intel: "d573be307a2f844f75f013a58f6a6e9b2d6eb96c58c87879ff60dc4d1f4f4f78"

  url "https://github.com/viarotel-org/escrcpy/releases/download/v#{version}/Escrcpy-#{version}-mac-#{arch}.dmg"
  name "Escrcpy"
  desc "Graphical Scrcpy to display and control Android, devices powered by Electron"
  homepage "https://github.com/viarotel-org/escrcpy/"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on macos: :big_sur

  app "Escrcpy.app"

  zap trash: [
    "~/Library/Application Support/escrcpy",
    "~/Library/logs/escrcpy",
    "~/Library/Preferences/org.viarotel.escrcpy.plist",
  ]
end
