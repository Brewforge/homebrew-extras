cask "media-downloader" do
  arch arm: "arm64", intel: "x86_64"

  version "5.5.2"
  sha256 arm:   "70ad4fd1eeb780d2541a9bde88030dd13293d068c493973b8b5d9517c659128b",
         intel: "c9f4f30e39f9cde60b9d50a02941648c39849561baadb9d85acf6af77ed25fc0"

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
