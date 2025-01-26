cask "adobe-downloader" do
  version "1.4.1"
  sha256 "1db29fcaeab335dc94107185bcd85a19631a4dbe34ebc909e70cfbb9bac5f0d9"

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
    "~/Library/HTTPStorages/com.x1a0he.macOS.Adobe-Downloader",
    "~/Library/HTTPStorages/com.x1a0he.macOS.Adobe-Downloader.binarycookies",
    "~/Library/Preferences/com.x1a0he.macOS.Adobe-Downloader.plist",
  ]
end
