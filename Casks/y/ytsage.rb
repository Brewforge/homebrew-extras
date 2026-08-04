cask "ytsage" do
  version "5.4.5"
  sha256 "05ca5f03bff38c5a9bfa89f4070e9b9949c1cf2574ef4fce1bc8099c1ff8ad70"

  url "https://github.com/oop7/YTSage/releases/download/v#{version}/YTSage-v#{version}-arm64.dmg"
  name "YTSage"
  desc "Modern YouTube downloader with a clean PySide6 interface"
  homepage "https://github.com/oop7/YTSage/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on arch: :arm64
  depends_on macos: :big_sur

  app "YTSage-v#{version}.app"

  zap trash: [
    "~/Library/Application Support/google-heartbeat-storage/heartbeats-1_342559837177_ios_829944bbca5d6cdbeecb28",
    "~/Library/Preferences/YTSage-v#{version}.plist",
  ]
end
