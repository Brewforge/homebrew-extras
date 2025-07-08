cask "gopeed-app" do
  version "1.7.1"
  sha256 "5678680624f34a44e8d8397bc9c8c86f53f80edb9b7ff7bfdc379e5a3e974996"

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
