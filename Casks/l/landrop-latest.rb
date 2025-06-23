cask "landrop-latest" do
  arch arm: "arm64", intel: ""

  version "2.7.2"
  sha256 "bb9343d50b6606fa4531591eda657bfea3af7ec542fdf7f0fa6ba69ffded261f"

  url "https://releases.landrop.app/landrop-v2-electron/LANDrop-#{version}-macos-universal.dmg"
  name "LANDrop"
  desc "Drop any files to any devices on your LAN"
  homepage "https://landrop.app/"

  depends_on macos: ">= :high_sierra"

  app "LANDrop.app"

  uninstall quit: "app.landrop.landrop"

  zap trash: [
    "/var/folders/py/n14256yd5r5ddms88x9bvsv40000gn/C/app.landrop.landrop-v2-electron",
    "/var/folders/py/n14256yd5r5ddms88x9bvsv40000gn/C/app.landrop.landrop-v2-electron.helper.GPU",
    "~/Library/Preferences/app.landrop.landrop-v2-electron.plist",
  ]
end
