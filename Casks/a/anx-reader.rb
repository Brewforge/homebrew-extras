cask "anx-reader" do
  version "1.14.0"
  sha256 "3fc92956b2a51cb1b12c677abb01e0464a8599b76f50aa2ca850e49116fa888a"

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
