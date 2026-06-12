cask "ytdownloader" do
  arch arm: "arm64", intel: "x64"

  version "3.20.3"
  sha256 arm:   "6f9641848d355c9da5f91b5c3841caf331ecb440a376b9aa9310701b8b954513",
         intel: "5f3631577d73902b27ac50e47912ac3c2288df8a70d84d3de10dafea8845f6ff"

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
