cask "quickrecorder" do
  version "1.6.9"
  sha256 "5a5901ff071a8a081c13224ffa8fa749c73e107b05b856b37e4368ac03d70ed0"

  url "https://github.com/lihaoyun6/QuickRecorder/releases/download/#{version}/QuickRecorder_v#{version}.dmg"
  name "QuickRecorder"
  desc "Lightweight and high-performance screen recorder"
  homepage "https://github.com/lihaoyun6/QuickRecorder"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true

  app "QuickRecorder.app"

  zap trash: [
    "~/Library/Preferences/com.lihaoyun6.QuickRecorder",
    "~/Library/Preferences/com.lihaoyun6.QuickRecorder.plist",
    "~/Library/Saved Application State/com.lihaoyun6.QuickRecorder.savedState",
  ]
end
