cask "ytdownloader" do
  arch arm: "arm64", intel: "x64"

  version "3.20.1"
  sha256 arm:   "5c71334bf204892006ab0088b8095c5abf171d36d42a8c925f09596bdcbae29c",
         intel: "db69bf7a55639280a44e2c8d6cd52d59113476b2fea78ff221fe78d42c153dd8"

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
