cask "media-downloader" do
  arch arm: "arm64", intel: "x86_64"

  version "5.6.5"
  sha256 arm:   "a5e4ba4be7024b236eebece79c9d19352cd393f2ad366b40130c83e9e43b6a3b",
         intel: "2abe3704d602236c08b0be115e013cfe27d259649c5b8bce6fb8cf0f80faa9e4"

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
