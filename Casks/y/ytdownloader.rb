cask "ytdownloader" do
  arch arm: "arm64", intel: "x64"

  version "4.0.0"
  sha256 arm:   "7e62acdb4a559028e8df41e07bf810e4899757662e1d1473beb0f9ff8d1faee6",
         intel: "5ebcef0449c86c480267ed7caa1c750e78c11fa3950e18b5baa8e0e68e5d411a"

  url "https://github.com/aandrew-me/ytDownloader/releases/download/v#{version}/YTDownloader_Mac_#{arch}.dmg",
      verified: "github.com/aandrew-me/ytDownloader/"
  name "YTDownloader"
  desc "Desktop App for downloading Videos and Audios from hundreds of sites"
  homepage "https://ytdn.netlify.app/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on :macos

  app "YTDownloader.app"

  zap trash: [
    "~/.ytDownloader",
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/io.github.aandrewme.ytdn.sfl*",
    "~/Library/Application Support/ytdownloader",
    "~/Library/Preferences/io.github.aandrewme.ytdn.plist",
  ]
end
