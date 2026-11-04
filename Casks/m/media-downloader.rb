cask "media-downloader" do
  arch arm: "arm64", intel: "x86_64"

  version "5.6.8"
  sha256 arm:   "ec69ace0baa6c6282db18231aa1d311f4785564b104f7b5377c7010999f32ee0",
         intel: "f534f98b6a93f3a99748eb9534fd93fbacfb7fcda3cb501b4195f2906c176314"

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
