cask "ytdownloader" do
  arch arm: "arm64", intel: "x64"

  version "4.2.0"
  sha256 arm:   "71b604878e6c4f6973aa0bc3d9017d49a90c0ad1a2a089f3121c501faf4e2bc0",
         intel: "c0f18a836ba70511f14381fe2f8e5c6dcbf93ffe8f39a953793c481fd75e090f"

  url "https://github.com/aandrew-me/ytDownloader/releases/download/v#{version}/YTDownloader_Mac_#{arch}.dmg"
  name "YTDownloader"
  desc "Desktop App for downloading Videos and Audios from hundreds of sites"
  homepage "https://ytdn.netlify.app/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: :ventura

  app "YTDownloader.app"

  zap trash: [
    "~/.ytDownloader",
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/io.github.aandrewme.ytdn.sfl*",
    "~/Library/Application Support/ytdownloader",
    "~/Library/Preferences/io.github.aandrewme.ytdn.plist",
  ]
end
