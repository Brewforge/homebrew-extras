cask "ytsage" do
  version "5.2.0"
  sha256 "69e8ee41dc18e64b6cf402182f32619f643614253584ceae801a36b785933cc9"

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
