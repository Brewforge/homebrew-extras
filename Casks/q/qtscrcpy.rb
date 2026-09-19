cask "qtscrcpy" do
  arch arm: "arm64-Qt6.5.3", intel: "x64-Qt5.15.2"

  version "4.2.0"
  sha256 arm:   "0454f870bd640b1343fdbfc6df036335d52cf841b689b48940fea340308f1fb1",
         intel: "1df68bbe9b413bcdbfd5351360a0720e761e898131362edc3d3f6a99252e97b1"

  url "https://github.com/barry-ran/QtScrcpy/releases/download/v#{version}/QtScrcpy-mac-#{arch}-v#{version}.dmg"
  name "QtScrcpy"
  desc "Android real-time display control software"
  homepage "https://github.com/barry-ran/QtScrcpy"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on :macos

  app "QtScrcpy.app"

  zap trash: "~/Library/Saved Application State/rankun.QtScrcpy.savedState"
end
