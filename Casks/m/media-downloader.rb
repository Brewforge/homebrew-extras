cask "media-downloader" do
  arch arm: "arm64", intel: "x86_64"

  version "5.6.1"
  sha256 arm:   "a1cde5d382ff56c598ca31b5e297e14869c02db382ce950597acb3304eac29b6",
         intel: "8db9b1d7afc914302b6a14de7af8ce686ae98d63eddcbd4da99105de731f5fa8"

  url "https://github.com/mhogomchungu/media-downloader/releases/download/#{version}/MediaDownloaderQt6-#{arch}-#{version}.dmg"
  name "Media Downloader"
  desc "Qt-based GUI to CLI-based tools that deal with downloading online media"
  homepage "https://github.com/mhogomchungu/media-downloader"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on macos: :sonoma

  app "MediaDownloader.app"

  zap trash: [
    "~/Library/Application Support/media-downloader",
    "~/Library/Preferences/org.MediaDownloader.gui.plist",
  ]
end
