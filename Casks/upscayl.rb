cask "upscayl" do
  version "2.9.5"
  sha256 "e2b0c811bdefcf40966bd66fbc0aa97d04d9abfe6a1d899909b05d1c932ee836"

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
