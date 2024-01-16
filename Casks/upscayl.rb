cask "upscayl" do
  version "2.9.7"
  sha256 "c63ee6bdfebff2fc78a847338d695df29516e17fe85395da4f23714fb9761bcc"

  url "https://github.com/upscayl/upscayl/releases/download/v#{version}/upscayl-#{version}-mac.dmg",
      verified: "github.com/upscayl/upscayl/"
  name "Upscayl"
  desc "Linux-first FOSS AI image upscaler"
  homepage "https://www.upscayl.org/"

  livecheck do
    url :url
    strategy :github_latest
  end

  app "Upscayl.app"

  zap trash: [
    "~/Library/Application Support/Upscayl",
    "~/Library/Caches/upscayl-updater",
    "~/Library/Logs/Upscayl",
    "~/Library/Preferences/org.upscayl.app.plist",
    "~/Library/Saved Application State/org.upscayl.app.savedState",
  ]
end
