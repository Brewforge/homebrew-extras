cask "linkandroid" do
  arch arm: "arm64", intel: "x64"

  version "0.6.0"
  sha256 arm:   "8aa412f8e9c225ead12638d5e76b11c7578cc49b33ab365f92f79dc0999546e9",
         intel: "abaf6b6e5ba8e0073201d722a4fe63c1001243b9441ff5f8f4b683b23b780142"

  url "https://github.com/modstart-lib/linkandroid/releases/download/v#{version}/LinkAndroid-#{version}-mac-#{arch}.dmg",
      verified: "github.com/modstart-lib/linkandroid/"
  name "LinkAndroid"
  desc "Easily Link Android and PC"
  homepage "https://linkandroid.com/"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true

  app "LinkAndroid.app"

  zap trash: [
    "/var/folders/py/n14256yd5r5ddms88x9bvsv40000gn/C/LinkAndroid",
    "/var/folders/py/n14256yd5r5ddms88x9bvsv40000gn/C/LinkAndroid.helper.GPU",
    "/var/folders/py/n14256yd5r5ddms88x9bvsv40000gn/T/.LinkAndroid.gQuO6t",
    "/var/folders/py/n14256yd5r5ddms88x9bvsv40000gn/T/.LinkAndroid.PxXBHu",
    "~/Library/Application Support/linkandroid",
    "~/Library/Preferences/LinkAndroid.plist",
  ]
end
