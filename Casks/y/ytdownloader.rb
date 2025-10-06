cask "ytdownloader" do
  arch arm: "arm64", intel: "x64"

  version "3.19.3"
  sha256 arm:   "4807183f4bcd75826126821e1545fb4c207ee4e0d27d65840a5967971541daf6",
         intel: "9dd5c65f67d6b94cb5f0ee0cd3e04f4cf9bc46aa09c826974bb765d5449f3b82"

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
