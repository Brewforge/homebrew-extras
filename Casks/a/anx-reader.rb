cask "anx-reader" do
  version "1.10.0"
  sha256 "cec1393961d0e224bbe10e6a630aa285e1d7fb31f3fa1a27703e8ddd8811ed2d"

  url "https://github.com/Anxcye/anx-reader/releases/download/v#{version}/Anx-Reader-macos-#{version}.dmg"
  name "AnxReader"
  desc "Thoughtfully crafted e-book reader for book lovers"
  homepage "https://github.com/Anxcye/anx-reader/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: ">=:monterey"

  app "AnxReader.app"

  zap trash: [
    "/var/folders/py/n14256yd5r5ddms88x9bvsv40000gn/C/com.anxcye.anxReader",
    "~/Library/Application Scripts/com.anxcye.anxReader",
    "~/Library/Containers/com.anxcye.anxReader",
  ]
end
