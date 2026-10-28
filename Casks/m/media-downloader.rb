cask "media-downloader" do
  arch arm: "arm64", intel: "x86_64"

  version "5.6.7"
  sha256 arm:   "02cc4f21a6f435d03b11397f5e38c2302d8c137178d3e3fde31b90692df5baa6",
         intel: "0ad0befc3224712dbbf85d804c3f6c88a7cebcfb1dc1a909ea8abcbcdae78730"

  url "https://github.com/mhogomchungu/media-downloader/releases/download/#{version}/MediaDownloaderQt6-#{arch}-#{version}.dmg"
  name "Media Downloader"
  desc "Qt-based GUI to CLI-based tools that deal with downloading online media"
  homepage "https://github.com/mhogomchungu/media-downloader"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: :sonoma

  app "MediaDownloader.app"

  zap trash: [
    "~/Library/Application Support/media-downloader",
    "~/Library/Preferences/org.MediaDownloader.gui.plist",
  ]
end
