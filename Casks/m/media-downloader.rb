cask "media-downloader" do
  arch arm: "arm64", intel: "x86_64"

  version "5.6.6"
  sha256 arm:   "48a6fa051d1f6aa43d194cf88c188d6a8c70c8305341bfa0e4c6279718989633",
         intel: "c05e98485b834a589856e9e2369832e013f8d0b645298cf46b7ffcf3135eef3f"

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
