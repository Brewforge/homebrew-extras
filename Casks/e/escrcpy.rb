cask "escrcpy" do
  arch arm: "arm64", intel: "x64"

  version "1.28.6"
  sha256 arm:   "6d72f333c5b7959ee54ce7ad4256a83da9e4781a29c9e61ed5d34d1fd9c41a70",
         intel: "078ea23c69e8835313342b15270bb40bacc52c3354c3d8dbbff4e471f59d2023"

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
