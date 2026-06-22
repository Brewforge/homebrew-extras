cask "adobe-downloader" do
  version "3.1.0"
  sha256 "5a402946fc2aee56d9d8dc7eb3d038e8521ee75de8e5af4c8c2edcf02ea79843"

  url "https://github.com/X1a0He/Adobe-Downloader/releases/download/#{version}/Adobe.Downloader.dmg"
  name "Adobe Downloader"
  desc "Adobe apps download & installer"
  homepage "https://github.com/X1a0He/Adobe-Downloader/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: :ventura

  app "Adobe Downloader.app"

  zap trash: [
    "/Library/LaunchDaemons/com.x1a0he.macOS.Adobe-Downloader.helper.plist",
    "/Library/PrivilegedHelperTools/com.x1a0he.macOS.Adobe-Downloader.helper",
    "~/Documents/Adobe Downloader PHSP_26.2-en_US-macuniversal",
    "~/Library/Application Support/Adobe Downloader",
    "~/Library/Caches/com.x1a0he.macOS.Adobe-Downloader",
    "~/Library/HTTPStorages/com.x1a0he.macOS.Adobe-Downloader",
    "~/Library/HTTPStorages/com.x1a0he.macOS.Adobe-Downloader.binarycookies",
    "~/Library/Preferences/com.x1a0he.macOS.Adobe-Downloader.plist",
    "~/Library/Saved Application State/com.x1a0he.macOS.Adobe-Downloader.savedState",
  ]
end
