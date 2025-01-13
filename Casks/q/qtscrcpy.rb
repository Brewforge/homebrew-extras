cask "qtscrcpy" do
  arch arm: "x64", intel: "x64"

  version "3.1.0"
  sha256 arm:   "a3c13d013da406c8c17c27bad694a9f455564f59b4239460cc2a6c3c9154856e",
         intel: "a3c13d013da406c8c17c27bad694a9f455564f59b4239460cc2a6c3c9154856e"

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

  caveats do
    requires_rosetta
  end
end
