cask "ecopaste" do
  arch arm: "aarch64", intel: "x64"

  version "1.0.0"
  sha256 arm:   "fba154453f8b2b12ae387538779345c4d872295f5d06fbb3beda2fb6e0bec35a",
         intel: "e1930a8e2bede52ddbe67166b934359cfebfa352b363718433add9b9df9f8660"

  url "https://github.com/EcoPasteHub/EcoPaste/releases/download/v#{version}/EcoPaste_#{version}_#{arch}.dmg"
  name "EcoPaste"
  desc "Open source clipboard management tools"
  homepage "https://github.com/EcoPasteHub/EcoPaste"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on :macos

  app "EcoPaste.app"

  zap trash: [
    "~/Library/Application Support/com.ayangweb.EcoPaste",
    "~/Library/Caches/com.ayangweb.EcoPaste",
    "~/Library/Logs/com.ayangweb.EcoPaste",
    "~/Library/Preferences/com.ayangweb.EcoPaste.plist",
    "~/Library/WebKit/com.ayangweb.EcoPaste",
  ]
end
