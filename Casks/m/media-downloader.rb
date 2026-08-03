cask "media-downloader" do
  arch arm: "arm64", intel: "x86_64"

  version "5.6.4"
  sha256 arm:   "dd1517fd44367cec3a6e981a412f70831c1444f3abc102419543846395fd3fc2",
         intel: "bb8c1a83de2ddc3fa6536fcc0d91a1d40a2dd2142347ef7fdbb34e2325aa99eb"

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
