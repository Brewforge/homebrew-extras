cask "qtscrcpy" do
  arch arm: "x64", intel: "x64"

  version "3.0.1"
  sha256 arm:   "01362953ec86a0129a5c5b014c9d26d173cb015fc003eb3fc1f16717cb72f621",
         intel: "01362953ec86a0129a5c5b014c9d26d173cb015fc003eb3fc1f16717cb72f621"

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
