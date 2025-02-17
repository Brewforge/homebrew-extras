cask "airy-ai" do
  arch arm: "arm64", intel: "64"

  version "1.1.1"
  sha256 :no_check

  url "https://electron-release-cdn.codefuture.top/download/flavor/Airy/latest/osx_#{arch}",
      verified: "electron-release-cdn.codefuture.top/"
  name "Airy"
  desc "Search Launcher Powered by AI"
  homepage "https://colink.in/"

  livecheck do
    url :url
    regex(/Airy-v([^-]+)-mac/i)
    strategy :header_match
  end

  app "Airy.app"

  zap trash: [
    "~/Library/Application Support/airy",
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.aloha.airy.sfl*",
    "~/Library/Logs/airy",
    "~/Library/Preferences/com.aloha.airy.plist",
    "~/Library/Saved Application State/com.aloha.airy.savedState",
  ]
end
