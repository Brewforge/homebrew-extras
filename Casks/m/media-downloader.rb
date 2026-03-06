cask "media-downloader" do
  arch arm: "arm64", intel: "x86_64"

  version "5.4.9"
  sha256 arm:   "72ad1fc9f685e0a9f70ef250fd027c6c3bd905f800e1b961805313350db042e9",
         intel: "3401bb284a4d9d248cb9b45c417bb49cbbbddaad6d73e8163683764203445b96"

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
