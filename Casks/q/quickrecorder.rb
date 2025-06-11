cask "quickrecorder" do
  version "1.6.8"
  sha256 "4afd3740c78bdddc0a6f9452c28d4ea7fb4b84a3c230c0fa0dd0cb731997ebcf"

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
