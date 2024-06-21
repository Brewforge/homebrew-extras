cask "quickrecorder" do
  version "1.3.9"
  sha256 "d7723d3d55d20a2d34e4279c70f3d080093f29204a955deaa332293a1df744c3"

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
    "~/Library/Saved Application State/com.lihaoyun6.QuickRecorder.savedState",
  ]
end
