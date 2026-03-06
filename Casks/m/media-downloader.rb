cask "media-downloader" do
  arch arm: "arm64", intel: "x86_64"

  version "5.4.8"
  sha256 arm:   "effe03996f28797ffd75a9b4e20be192a4e601fdeebf5f8e0fca3854219fa2bb",
         intel: "86fc124b6f7e75468425bc24f969836ead9e1c6b97ddbac45e09d642e9c377e4"

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
