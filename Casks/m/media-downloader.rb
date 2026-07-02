cask "media-downloader" do
  arch arm: "arm64", intel: "x86_64"

  version "5.6.2"
  sha256 arm:   "ee6b05f360614879340697635f55a3000ae211dccc13042d65d06c1a07a96aad",
         intel: "732bd03510611021f5e2b267ed3659a83a1b18335c160d15831ac2c0323e6bcb"

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
