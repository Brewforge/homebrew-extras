cask "qtscrcpy" do
  arch arm: "x64", intel: "x64"

  version "3.0.0"
  sha256 arm:   "ef0c763865cb7d93960515153eb990b30a05ff94a795b9f6a36163d8bda30d59",
         intel: "ef0c763865cb7d93960515153eb990b30a05ff94a795b9f6a36163d8bda30d59"

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
