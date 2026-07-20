cask "media-downloader" do
  arch arm: "arm64", intel: "x86_64"

  version "5.6.3"
  sha256 arm:   "5f79845863c1f02d055d7e3bbc09e4f9b6d7835db98c4d0a793e3a9a94070626",
         intel: "3dbecbb602cf8ad6b820902301f8592f5b6b7b9bb3b5739ad3e737075ede1b6c"

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
