cask "gopeed-app" do
  version "1.8.0"
  sha256 "d34773078373e397df55e47e536a9959057fb1ead7f7f4e99e7faeef127735df"

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
