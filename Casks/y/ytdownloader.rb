cask "ytdownloader" do
  arch arm: "arm64", intel: "x64"

  version "3.20.2"
  sha256 arm:   "d1af37ce469d97748ed1916ff635ba033ce3e81dd97d55ef60530d4d9e594367",
         intel: "1065d78df3fead00014f8308008579dada28054d29fe70ea520285abe1a92fb0"

  url "https://github.com/aandrew-me/ytDownloader/releases/download/v#{version}/YTDownloader_Mac_#{arch}.dmg",
      verified: "github.com/aandrew-me/ytDownloader/"
  name "YTDownloader"
  desc "Desktop App for downloading Videos and Audios from hundreds of sites"
  homepage "https://ytdn.netlify.app/"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true

  app "YTDownloader.app"

  zap trash: [
    "/var/folders/py/n14256yd5r5ddms88x9bvsv40000gn/C/io.github.aandrewme.ytdn",
    "/var/folders/py/n14256yd5r5ddms88x9bvsv40000gn/C/io.github.aandrewme.ytdn.helper.GPU",
    "~/.ytDownloader",
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/io.github.aandrewme.ytdn.sfl*",
    "~/Library/Application Support/ytdownloader",
    "~/Library/Preferences/io.github.aandrewme.ytdn.plist",
  ]
end
