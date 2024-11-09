cask "adobe-downloader" do
  version "1.0.1"
  sha256 "8bf8da37b2e4be99f2e5bc07ca4b182e1a9cfb324b046dd31d0cc3b0e7c15f79"

  url "https://github.com/X1a0He/Adobe-Downloader/releases/download/#{version}/Adobe.Downloader.dmg"
  name "Adobe Downloader"
  desc "Adobe apps download & installer"
  homepage "https://github.com/X1a0He/Adobe-Downloader/"

  livecheck do
    url :url
    strategy :github_latest
  end

  app "Adobe Downloader.app"

  zap trash: [
    "/var/folders/py/n14256yd5r5ddms88x9bvsv40000gn/C/com.x1a0he.macOS.Adobe-Downloader",
    "~/Library/Caches/com.x1a0he.macOS.Adobe-Downloader",
    "~/Library/HTTPStorages/com.x1a0he.macOS.Adobe-Downloader.binarycookies",
    "~/Library/HTTPStorages/com.x1a0he.macOS.Adobe-Downloader",
    "~/Library/Preferences/com.x1a0he.macOS.Adobe-Downloader.plist",
  ]
end
