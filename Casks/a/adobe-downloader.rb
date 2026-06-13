cask "adobe-downloader" do
  version "3.0.0"
  sha256 "0d2c305c8ddc1636715c2db16511cbb1b81a9a50fd85d545ff813edaf89e40b0"

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
