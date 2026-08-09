cask "qtscrcpy" do
  arch arm: "arm64-Qt6.5.3", intel: "x64-Qt5.15.2"

  version "4.1.0"
  sha256 arm:   "4e426d9cda4b79cccf60cdd88d0100b97a652b822dd09b1683978ac0e6ee48b6",
         intel: "d3a186c70f01750227095b11fcb528104912631e67e1d130d990d3a8e1008c0d"

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
