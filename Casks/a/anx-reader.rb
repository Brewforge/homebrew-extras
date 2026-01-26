cask "anx-reader" do
  version "1.11.0"
  sha256 "77582febcd33a8f4bca57974527046409c3bbd669144e46d4afe86997fdfea34"

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
