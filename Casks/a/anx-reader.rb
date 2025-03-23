cask "anx-reader" do
  version "1.4.1"
  sha256 "d6da3d32135ad9262128485fe9eb214b03ec163e14072c2fbe94000405e834a9"

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
