cask "qtscrcpy" do
  arch arm: "arm64-Qt6.5.3", intel: "x64-Qt5.15.2"

  version "3.3.3"
  sha256 arm:   "f3d69030129277a1b86aab28086442deb4c23c20e6af0ea68313c1b553b2e0e3",
         intel: "2ed9e53285ba5504c55891e4cf0a6d74d6d2240cecfd04b2e53d09088277e252"

  url "https://github.com/barry-ran/QtScrcpy/releases/download/v#{version}/QtScrcpy-mac-#{arch}-v#{version}.dmg"
  name "QtScrcpy"
  desc "Android real-time display control software"
  homepage "https://github.com/barry-ran/QtScrcpy"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true

  app "QtScrcpy.app"

  zap trash: "~/Library/Saved Application State/rankun.QtScrcpy.savedState"
end
