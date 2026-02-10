cask "anx-reader" do
  version "1.12.0"
  sha256 "50f98a8e9c72fa284ffe58d8b4c60fc3685c8ec1c1da264db6a59ba2044803ef"

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
    "~/Library/Application Scripts/com.anxcye.anxReader",
    "~/Library/Containers/com.anxcye.anxReader",
  ]
end
