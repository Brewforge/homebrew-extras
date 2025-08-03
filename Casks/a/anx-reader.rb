cask "anx-reader" do
  version "1.6.2"
  sha256 "00378a8046498758cfa3760514531cbc02ed9a027e11e6346e7827578e66012b"

  url "https://github.com/Anxcye/anx-reader/releases/download/v#{version}/Anx-Reader-macos-#{version}.dmg"
  name "AnxReader"
  desc "Thoughtfully crafted e-book reader for book lovers"
  homepage "https://github.com/Anxcye/anx-reader/"

  livecheck do
    url :url
    strategy :github_latest
  end

  app "AnxReader.app"

  zap trash: [
    "/var/folders/py/n14256yd5r5ddms88x9bvsv40000gn/C/com.anxcye.anxReader",
    "~/Library/Application Scripts/com.anxcye.anxReader",
    "~/Library/Containers/com.anxcye.anxReader",
  ]
end
