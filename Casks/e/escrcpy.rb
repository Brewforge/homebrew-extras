cask "escrcpy" do
  arch arm: "arm64", intel: "x64"

  version "3.0.8"
  sha256 arm:   "186b38e81f575bdd27ad57e1a9d40293be41e1a93402148b04ce187e7a4827e8",
         intel: "176609ac007143d5105d11cd1bfface92590d898e90b6644aec9ae9f739d8f21"

  url "https://github.com/viarotel-org/escrcpy/releases/download/v#{version}/Escrcpy-#{version}-mac-#{arch}.dmg"
  name "Escrcpy"
  desc "Graphical Scrcpy to display and control Android, devices powered by Electron"
  homepage "https://github.com/viarotel-org/escrcpy/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: :monterey

  app "Escrcpy.app"

  zap trash: [
    "~/Library/Application Support/escrcpy",
    "~/Library/logs/escrcpy",
    "~/Library/Preferences/org.viarotel.escrcpy.plist",
  ]
end
