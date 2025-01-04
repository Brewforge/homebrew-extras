cask "quickrecorder" do
  version "1.6.2"
  sha256 "0b200d36828e7f789ac25ea9d2070548092a5146aa4a379bdfb070d6186672e7"

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
