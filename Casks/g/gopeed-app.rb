cask "gopeed-app" do
  version "1.9.2"
  sha256 "48a30b418391c46650eff7faf47b6782b7dbc660438e20b8083b15a0db9e8413"

  url "https://github.com/GopeedLab/gopeed/releases/download/v#{version}/Gopeed-v#{version}-macos.dmg",
      verified: "github.com/GopeedLab/gopeed/"
  name "Gopeed"
  desc "High speed downloader that supports all platforms"
  homepage "https://gopeed.com/"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true

  app "Gopeed.app"

  zap trash: [
    "~/Library/Application Scripts/com.gopeed",
    "~/Library/Containers/com.gopeed",
    "~/Library/Preferences/com.gopeed.gopeed.plist",
  ]
end
