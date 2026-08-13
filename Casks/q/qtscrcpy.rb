cask "qtscrcpy" do
  arch arm: "arm64-Qt6.5.3", intel: "x64-Qt5.15.2"

  version "4.1.1"
  sha256 arm:   "3557b302ce527f726b8fa5a9c7f270c3b2043cc6d86c5eaab79f4dd8863f551e",
         intel: "3b872d35e26a6131f7db56bcf93ebfb47cc44c0da72c2665ef5887f3baa21aee"

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
