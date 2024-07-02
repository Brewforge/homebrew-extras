cask "quickrecorder" do
  version "1.4.1"
  sha256 "93ddcf4466e1d917d9abca6ab3cbc6495af949c0c28db31d50c192477e800f35"

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
