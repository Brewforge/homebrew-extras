cask "ytdownloader" do
  arch arm: "arm64", intel: "x64"

  version "3.22.0"
  sha256 arm:   "00847f946fc822603729bb93270a326adf36373f0888acec3417b479572a1614",
         intel: "1bd5fd6a2be1abb1ab81627ef00bd04233499f8b73d6627a5d9debefdaceed7f"

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
