cask "gopeed" do
  version "1.6.6"
  sha256 "ecce1f23c4b0da7cec754c4797f859c5393d072221a6036e1ae530d94050eb93"

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
  ]
end
