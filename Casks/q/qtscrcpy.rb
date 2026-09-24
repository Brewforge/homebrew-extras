cask "qtscrcpy" do
  arch arm: "arm64-Qt6.5.3", intel: "x64-Qt5.15.2"

  version "4.2.1"
  sha256 arm:   "5652db2f0d8ddc30b0933d07446c7ace50821f479b372c8c003e3f595163effe",
         intel: "e95f23e11bcf225b28c85493936f2c6fb45c961f11f81d130ecec124e22f55fd"

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
