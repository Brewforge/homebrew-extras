cask "ytsage" do
  version "5.5.6"
  sha256 "ad9aeb92192d0b105a91bbdcc24bcec0b79427b438eeeb7d4d0e66a2f609bb54"

  url "https://github.com/oop7/YTSage/releases/download/v#{version}/YTSage-v#{version}-arm64.dmg"
  name "YTSage"
  desc "Modern YouTube downloader with a clean PySide6 interface"
  homepage "https://github.com/oop7/YTSage/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on arch: :arm64
  depends_on :macos

  app "YTSage-v#{version}.app"

  zap trash: [
    "~/Library/Application Support/google-heartbeat-storage/heartbeats-1_342559837177_ios_829944bbca5d6cdbeecb28",
    "~/Library/Preferences/YTSage-v#{version}.plist",
  ]
end
