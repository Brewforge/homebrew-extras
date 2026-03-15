cask "media-downloader" do
  arch arm: "arm64", intel: "x86_64"

  version "5.5.0"
  sha256 arm:   "6694c9107610ad453d18d2b069b2747bb81268aa6d251e8d4c52d15896039e41",
         intel: "688f7496d655b1449818f17fa93641b91e44c4da608c6c761b3c4f8318a975c6"

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
