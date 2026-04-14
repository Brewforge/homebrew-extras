cask "media-downloader" do
  arch arm: "arm64", intel: "x86_64"

  version "5.5.1"
  sha256 arm:   "ab5517b253b455a95859bec4658c14d61b367fb75783806909fedfeb41743629",
         intel: "f92e0526dc4001505707fedcede79a3cf9a479df3bee1a01bacd1575df4cf656"

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
