cask "media-downloader" do
  version "5.4.4"
  sha256 "960f63fe91c6e4c586d628740f8c10f4a9b8e5153d03db33c8885caa924621de"

  url "https://github.com/mhogomchungu/media-downloader/releases/download/#{version}/MediaDownloaderQt6-#{version}.dmg"
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
    "/var/folders/py/n14256yd5r5ddms88x9bvsv40000gn/C/org.MediaDownloader.gui",
    "~Library/Application Support/media-downloader",
  ]
end
