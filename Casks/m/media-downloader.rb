cask "media-downloader" do
  arch arm: "arm64", intel: "x86_64"

  version "5.6.0"
  sha256 arm:   "50bc952f85f52cc842c2b028453959e4d3429442cfbfa769efee29c291f49c35",
         intel: "4ece922904b5746cc42a14fa126069aed3b8ec3ff40ccc724d07045618466cf3"

  url "https://github.com/mhogomchungu/media-downloader/releases/download/#{version}/MediaDownloaderQt6-#{arch}-#{version}.dmg"
  name "Media Downloader"
  desc "Qt-based GUI to CLI-based tools that deal with downloading online media"
  homepage "https://github.com/mhogomchungu/media-downloader"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on macos: ">= :sonoma"

  app "MediaDownloader.app"

  zap trash: [
    "~/Library/Application Support/media-downloader",
    "~/Library/Preferences/org.MediaDownloader.gui.plist",
  ]
end
