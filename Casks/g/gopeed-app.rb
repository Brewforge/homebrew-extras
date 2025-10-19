cask "gopeed-app" do
  version "1.8.2"
  sha256 "6e35f8437f3bddf8b30666318110df7d23c0238a3ec25db7d18e7e035ad9f9da"

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
