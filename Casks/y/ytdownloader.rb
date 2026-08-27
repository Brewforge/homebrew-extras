cask "ytdownloader" do
  arch arm: "arm64", intel: "x64"

  version "4.0.1"
  sha256 arm:   "c43eb0cb39e9b21d4c9830df1635f75d8654b4942670f2e0081cf128b0b116ce",
         intel: "a49a6f307b6a9d0a10115ede1b090755e2d74510f9ac615ad6d51269fdf0a2cf"

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
