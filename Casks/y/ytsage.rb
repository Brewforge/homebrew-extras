cask "ytsage" do
  version "5.0.3"
  sha256 "5446844b69efc698ce87438c12e977d6f9e25c28eb01b67e59050f427629dbca"

  url "https://github.com/oop7/YTSage/releases/download/v#{version}/YTSage-v#{version}-arm64.dmg"
  name "YTSage"
  desc "Modern YouTube downloader with a clean PySide6 interface"
  homepage "https://github.com/oop7/YTSage/"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on arch: :arm64
  depends_on macos: ">= :big_sur"

  app "YTSage-v#{version}.app"

  zap trash: [
    "~/Library/Application Support/google-heartbeat-storage/heartbeats-1_342559837177_ios_829944bbca5d6cdbeecb28",
    "~/Library/Preferences/YTSage-v#{version}.plist",
  ]
end
