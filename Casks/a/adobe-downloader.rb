cask "adobe-downloader" do
  version "1.5.0"
  sha256 "c5af78842bf52a1355b47d271e101b4140db986c2c6b60bacc15f3f4de35599f"

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
    "/Library/LaunchDaemons/com.x1a0he.macOS.Adobe-Downloader.helper.plist",
    "/Library/PrivilegedHelperTools/com.x1a0he.macOS.Adobe-Downloader.helper",
    "/tmp/com.x1a0he.macOS.Adobe-Downloader.helper.err",
    "/tmp/com.x1a0he.macOS.Adobe-Downloader.helper.out",
    "/var/folders/py/n14256yd5r5ddms88x9bvsv40000gn/C/com.x1a0he.macOS.Adobe-Downloader",
    "~/Documents/Adobe Downloader PHSP_26.2-en_US-macuniversal",
    "~/Library/Application Support/Adobe Downloader",
    "~/Library/Caches/com.x1a0he.macOS.Adobe-Downloader",
    "~/Library/HTTPStorages/com.x1a0he.macOS.Adobe-Downloader",
    "~/Library/HTTPStorages/com.x1a0he.macOS.Adobe-Downloader.binarycookies",
    "~/Library/Preferences/com.x1a0he.macOS.Adobe-Downloader.plist",
    "~/Library/Saved Application State/com.x1a0he.macOS.Adobe-Downloader.savedState",
  ]
end
